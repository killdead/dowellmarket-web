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

$object = $vars['entity'];
// Get plugin settings
$allowhtml = elgg_get_plugin_setting('market_allowhtml', 'market');
$currency = elgg_get_plugin_setting('market_currency', 'market');
$numchars = elgg_get_plugin_setting('market_numchars', 'market');
if($numchars == ''){
	$numchars = '250';
}

// Set title, form destination
if (isset($vars['entity'])) {
	$title = sprintf(elgg_echo("market:editpost"),$object->title);
	$action = "market/edit";
	$tu = $marketpost->time_updated;
	$title = $vars['entity']->title;
	if ($allowhtml != 'yes') {
		$body = strip_tags($vars['entity']->description);
	} else {
		$body = $vars['entity']->description;
	}
	$price = $vars['entity']->price;
	$custom = $vars['entity']->custom;
	$tags = $vars['entity']->tags;
	$access_id = $vars['entity']->access_id;
	$nbpiece = $vars['entity']->marketnbpiece;
}

// Just in case we have some cached details
if (isset($vars['markettitle'])) {
	$title = $vars['markettitle'];
	$body = $vars['marketbody'];
	$price = $vars['marketprice'];
	$custom = $vars['marketcustom'];
	$tags = $vars['markettags'];
}


?>
<script type="text/javascript">
function textCounter(field,cntfield,maxlimit) {
	// if too long...trim it!
	if (field.value.length > maxlimit) {
		field.value = field.value.substring(0, maxlimit);
	} else {
		// otherwise, update 'characters left' counter
		cntfield.value = maxlimit - field.value.length;
	}
}
function acceptTerms() {
	error = 0;
	if(!(document.marketForm.accept_terms.checked) && (error==0)) {		
		alert('<?php echo elgg_echo('market:accept:terms:error'); ?>');
		document.marketForm.accept_terms.focus();
		error = 1;		
	}
	if(error == 0) {
		document.marketForm.submit();	
	}
}
</script>

<?php
echo "<dl><dt>";
echo "<label>" . elgg_echo("title") . " <small><small>" . elgg_echo("market:title:help") . "</small></small><br />";
echo "</label></dt><dd>";
echo elgg_view("input/text", array(
				"name" => "markettitle",
				"value" => $title,
				));
echo "</dd></dl>";


$marketcategories = elgg_view('market/marketcategories',$vars);
if (!empty($marketcategories)) {
	echo "<dl>";
	echo "<p>{$marketcategories}</p>";
	echo "</dl>";
}
echo "<br><br>";

/**
 *
 * Nombre de pièces
 */
echo "<dl><dt>";
echo "<label>" . elgg_echo("market:nbpiece") . "&nbsp;<small><small></small></small>";
echo "</label></dt><dd>";
echo elgg_view("input/text", array(
		"name" => "marketnbpiece",
		"value" => $nbpiece,
));
echo "</dd></dl>";






/**
 *
 * Superficie
 */

echo "<dl><dt>";
echo "<label>" . elgg_echo("market:land") . "&nbsp;<small><small></small></small>";
echo "</label></dt><dd>";
echo elgg_view("input/text", array(
		"name" => "marketland",
		"value" => $superficie,
));

echo "</dd></dl>";


/**
 *
 * Ville
 */
echo "<dl><dt>";
echo "<label>" . elgg_echo("market:city") . "&nbsp;<small><small></small></small>";
echo "</label></dt><dd>";
echo elgg_view("input/text", array(
		"name" => "marketcity",
		"value" => $city,
));

echo "</dd></dl>";



/**
 *
 * CP
 */

echo "<dl><dt>";
echo "<label>" . elgg_echo("market:zip") . "&nbsp;<small><small></small></small>";
echo "</label></dt><dd>";
echo elgg_view("input/text", array(
		"name" => "marketzip",
		"value" => $city,
));

echo "</dd></dl>";


/**
 *
 * Annee de construction
 */
echo "<dl><dt>";
echo "<label>" . elgg_echo("market:year") . "&nbsp;<small><small></small></small>";
echo "</label></dt><dd>";
echo elgg_view("input/text", array(
		"name" => "marketyear",
		"value" => $city,
));
echo "</dd></dl>";
















echo "<dl><dt>";
echo "<label>". elgg_echo("market:text") . "<br>";

//if ($allowhtml != 'yes') {
//	echo "<small><small>" . sprintf(elgg_echo("market:text:help"), $numchars) . "</small></small><br />";
echo "</label></dt><dd>";
echo "<textarea name='marketbody' style='width:450px;' class='mceNoEditor' rows='8' cols='80' onKeyDown='textCounter(document.marketForm.marketbody,document.marketForm.remLen1,{$numchars}' onKeyUp='textCounter(document.marketForm.marketbody,document.marketForm.remLen1,{$numchars})'>{$body}</textarea><br />";
//	echo "<div class='market_characters_remaining'><input readonly type='text' name='remLen1' size='3' maxlength='3' value='{$numchars}' class='market_charleft'>" . elgg_echo("market:charleft") . "</div>";
//} else {
//	echo elgg_view("input/longtext", array("name" => "marketbody", "value" => $body, "col" => 80));
//}
echo "</dd></dl>";

echo "<dl><dt>";
echo "<label>" . elgg_echo("market:price") . "&nbsp;<small><small></small></small><br />";
echo "</label></dt><dd>";
echo elgg_view("input/text", array(
		"name" => "marketprice",
		"value" => $price,
));
	
echo "</dd></dl>";




echo "<table border='0' cellpadding='40' width='100%'><tr>";

echo "<td width='220px'>";
echo "<p><label>" . elgg_echo("market:image") . "<br /><center>";
echo elgg_view('market/thumbnail', array('marketguid' => $object->guid, 'size' => 'large', 'tu' => $tu));
echo "</center><br /></label></p>";
echo "</td><tr></table>";

/*echo "<p><label>" . elgg_echo("market:tags") . " <small><small>" . elgg_echo("market:tags:help") . "</small></small><br />";
echo elgg_view("input/tags", array(
				"name" => "markettags",
				"value" => $tags,
				));
echo "</label></p>";*/

echo "<dl><dt>";
echo "<label>" . elgg_echo("market:uploadimages") . "<br /><small><small>" . elgg_echo("market:imagelimitation") . "</small></small><br />";
echo "</label></dt><dd>";
echo elgg_view("input/file",array('name' => 'upload01'));echo "<br />";
echo elgg_view("input/file",array('name' => 'upload02'));echo "<br />";
echo elgg_view("input/file",array('name' => 'upload03'));echo "<br />";
echo elgg_view("input/file",array('name' => 'upload04'));echo "<br />";
echo elgg_view("input/file",array('name' => 'upload05'));echo "<br />";
echo elgg_view("input/file",array('name' => 'upload06'));echo "<br />";
echo elgg_view("input/file",array('name' => 'upload07'));echo "<br />";
echo elgg_view("input/file",array('name' => 'upload08'));echo "<br />";
echo elgg_view("input/file",array('name' => 'upload09'));echo "<br />";
echo elgg_view("input/file",array('name' => 'upload10'));echo "<br />";

echo "<div style='display:none'>";
echo "<p><label>" . elgg_echo('access') . "&nbsp;<small><small>" . elgg_echo("market:access:help") . "</small></small><br />";
echo elgg_view('input/access', array('name' => 'access_id','value' => $access_id, 'disabled' => true));
echo "</label></p>";
echo "</div>";
echo "</dd></dl>";
echo "<dl><dt></dt><dd>";
if (isset($vars['entity'])) {
	echo "<input type=\"hidden\" name=\"marketpost\" value=\"".$object->guid."\" />";
}

// Terms checkbox and link
$termslink = elgg_view('output/url', array(
			'href' => "mod/market/terms.php",
			'text' => elgg_echo('market:terms:title'),
			'class' => "elgg-lightbox",
			));

$termsaccept = sprintf(elgg_echo("market:accept:terms"),$termslink);
echo "<input type='checkbox' name='accept_terms'><label>{$termsaccept}</label></dt></dl>";

echo "<dl><dt></dt><dd>";
echo elgg_view('input/submit', array('name' => 'submit', 'text' => elgg_echo('save')));
echo "</p>";


echo "</dd></dl>";