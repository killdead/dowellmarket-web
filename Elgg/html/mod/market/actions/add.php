<?php
/**
 * Elgg Market Plugin
 * @package market
 * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU Public License version 2
 * @author slyhne
 * @copyright slyhne 2010-2011
 * @link www.zurf.dk/elgg
 * @version 1.8
 */

// Make sure we're logged in
gatekeeper();
		
// Get input data
$title = get_input('markettitle');
$body = get_input('marketbody');
$price = get_input('marketprice');
$custom = get_input('marketcustom');
$category = get_input('marketcategory');
$tags = get_input('markettags');
$access = get_input('access_id');
$nbpiece = get_input('marketnbpiece');
$etage = get_input('marketetage');
$superficie = get_input('marketland');
$city = get_input('marketcity');
$zip = get_input('marketzip');
$year = get_input('marketyear');

		
// Cache to the session
$_SESSION['markettitle'] = $title;
$_SESSION['marketbody'] = $body;
$_SESSION['marketprice'] = $price;
$_SESSION['marketcustom'] = $custom;
$_SESSION['marketcategory'] = $category;

$_SESSION['markettags'] = $tags;
$_SESSION['marketnbpiece'] = $nbpiece;
$_SESSION['marketetage'] =$etage;
$_SESSION['marketland']=$superficie;
$_SESSION['marketcity']=$city ;
$_SESSION['marketzip']=$zip;
$_SESSION['marketyear']=$year;


		
// Convert string of tags into a preformatted array
$tagarray = string_to_tag_array($tags);
	
// Make sure the title / description aren't blank
if (empty($title) || empty($body)) {

	register_error(elgg_echo("market:blank"));
	forward(REFERER);

} else {
		
	// Initialise a new ElggObject
	$market = new ElggObject();
			
	// Tell the system it's an market post
	$market->subtype = "market";
			
	// Set its owner to the current user
	$market->owner_guid = elgg_get_logged_in_user_guid();
			
	// Set its access_id
	$market->access_id = $access;
			
	// Set its title and description appropriately
	$market->title = $title;
	$market->description = $body;
	$market->price = $price;
	$market->custom = $custom;
	$market->marketcategory = $category;
	$market->marketnbpiece = $nbpiece;
	$market->marketetage =$etage;
	$market->marketland=$superficie;
	$market->marketcity=$city ;
	$market->marketzip=$zip;
	$market->marketyear=$year;
	
	// Before we can set metadata, we need to save the market post
	if (!$market->save()) {
		register_error(elgg_echo("market:error"));
		forward("mod/market/add.php");
	}
	
	$user = elgg_get_logged_in_user_entity();
	
	// add market to group
	add_entity_relationship($market->getGUID(), 'member_of_group',  $user->groupguid);
	
	
	// Now let's add tags
	if (is_array($tagarray)) {
		$market->tags = $tagarray;
	}
			
	// Now see if we have a file icon
	if (isset($_FILES['upload']) && (substr_count($_FILES['upload']['type'],'image/'))) {
		$prefix = "market/".$market->guid;
		
		$filehandler = new ElggFile();
		$filehandler->owner_guid = $market->owner_guid;
		$filehandler->setFilename($prefix . ".jpg");
		$filehandler->open("write");
		$filehandler->write(get_uploaded_file('upload'));
		$filehandler->close();
		
		$thumbtiny = get_resized_image_from_existing_file($filehandler->getFilenameOnFilestore(),25,25, true);
		$thumbsmall = get_resized_image_from_existing_file($filehandler->getFilenameOnFilestore(),40,40, true);
		$thumbmedium = get_resized_image_from_existing_file($filehandler->getFilenameOnFilestore(),153,153, true);
		$thumblarge = get_resized_image_from_existing_file($filehandler->getFilenameOnFilestore(),200,200, false);
		if ($thumbtiny) {
			
			$thumb = new ElggFile();
			$thumb->owner_guid = $market->owner_guid;
			$thumb->setMimeType('image/jpeg');
			
			$thumb->setFilename($prefix."tiny.jpg");
			$thumb->open("write");
			$thumb->write($thumbtiny);
			$thumb->close();
			
			$thumb->setFilename($prefix."small.jpg");
			$thumb->open("write");
			$thumb->write($thumbsmall);
			$thumb->close();
			
			$thumb->setFilename($prefix."medium.jpg");
			$thumb->open("write");
			$thumb->write($thumbmedium);
			$thumb->close();
			
			$thumb->setFilename($prefix."large.jpg");
			$thumb->open("write");
			$thumb->write($thumblarge);
			$thumb->close();
				
		}
	}

	// Success message
	system_message(elgg_echo("market:posted"));
			
	// Add to river
        add_to_river('river/object/market/create','create',elgg_get_logged_in_user_guid(),$market->guid);
			
	// Remove the market post cache
	remove_metadata($_SESSION['user']->guid,'markettitle');
	remove_metadata($_SESSION['user']->guid,'marketbody');
	remove_metadata($_SESSION['user']->guid,'markettags');
	remove_metadata($_SESSION['user']->guid,'marketprice');
	remove_metadata($_SESSION['user']->guid,'markettype');
	
	remove_metadata($_SESSION['user']->guid,'marketcategory');
		remove_metadata($_SESSION['user']->guid,'marketnbpiece');
		remove_metadata($_SESSION['user']->guid,'marketetage');
		remove_metadata($_SESSION['user']->guid,'marketland');
	remove_metadata($_SESSION['user']->guid,'marketcity=$city');
	remove_metadata($_SESSION['user']->guid,'marketzip');
		remove_metadata($_SESSION['user']->guid,'marketyear');

	// Forward to the main market page
	forward(elgg_get_site_url() . "market");

}

