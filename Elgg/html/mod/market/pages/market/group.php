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

// Get input
//$selected_category = get_input('cat');
$groupguid = (int) get_input('groupguid');
elgg_log('PAGE MARKET GROUP '.$groupguid,'WARNING');
/*if ($selected_category == 'all') {
	$category = '';
} elseif ($selected_category == '') {
	$category = '';
	$selected_category = 'all';
} else {
	$category = $selected_category;
}*/
elgg_set_context('market');
elgg_pop_breadcrumb();
elgg_register_title_button();

//$tabs = elgg_view('market/menu', array('category' => $selected_category));

//set market title
$title = sprintf(elgg_echo('market:category:title'), elgg_echo("market:{$selected_category}"));


$title = elgg_echo('market:group');

$options = array(
		'relationship' => 'member_of_group',
		'relationship_guid' => $groupguid,
		'inverse_relationship' => true,
	    'type' => 'object',
		'subtype' => 'market',
		'limit' => 20,
			'view_type_toggle' => FALSE,
	);

// Get a list of market posts in a specific group
	elgg_push_breadcrumb(elgg_echo('market:title'));
	$content = elgg_list_entities_from_relationship($options);
	
	
if (!$content) {
	$content = elgg_echo('market:none:found');
}

// Show market sidebar
$sidebar = elgg_view("market/sidebar");

$params = array(
		'filter' => false,
		'content' => $content,
		'title' => $title,
		'sidebar' => $sidebar,
		);

$body = elgg_view_layout('content', $params);

echo elgg_view_page($title, $body);

