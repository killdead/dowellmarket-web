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

// Get plugin settings
$allowhtml = elgg_get_plugin_setting('market_allowhtml', 'market');
$currency = elgg_get_plugin_setting('market_currency', 'market');
$numchars = elgg_get_plugin_setting('market_numchars', 'market');
if($numchars == ''){
	$numchars = '250';
}

// Set title, form destination
$title = elgg_echo("market:addpost");
$tags = "";
$title = "";
$price = "";
$custom = "";
$description = "";
if (defined('ACCESS_DEFAULT')) {
	$access_id = ACCESS_DEFAULT;
} else {
	$access_id = 0;
}

// Just in case we have some cached details
if (isset($vars['markettitle'])) {
	$title = $vars['markettitle'];
	$body = $vars['marketbody'];
	$price = $vars['marketprice'];
	$custom = $vars['marketcustom'];
	$tags = $vars['markettags'];
	$nbpiece=0;
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

$(document).ready(function() {



	$("#marketcategory").change(function() {
    var valeur = $(this).val();
    
    switch(valeur) {
    case "appartement":$("dl.portefeuille").hide();
    $("dl.maison").hide();$("dl.terrain").hide();$("dl.appartement").show(); 
    break;
    case "portefeuille": $("dl.appartement").hide();
    $("dl.maison").hide();$("dl.terrain").hide(); $("dl.portefeuille").show(); 
    break;
    case "maison": $("dl.appartement").hide();
    $("dl.portefeuille").hide(); $("dl.terrain").hide();$("dl.maison").show();
    break;
    case "terrain": $("dl.appartement").hide();
    $("dl.portefeuille").hide(); $("dl.maison").hide(); $("dl.terrain").show();
    break;
    case "autres": $("dl.appartement").hide();
    $("dl.portefeuille").hide(); $("dl.maison").hide(); $("dl.terrain").hide();
    break;
    }
				}
		);
});



</script>
<br>
<?php


/*
 * 
 * Type de bien
 */

$marketcategories = elgg_view('market/marketcategories',$vars);
if (!empty($marketcategories)) {
	echo "<dl>";
	echo "<p>{$marketcategories}</p>";
	echo "</dl>";
}
echo "<br><br>";



/*
 * Title
 * 
 */

echo "<dl><dt>";
echo "<label>" . elgg_echo("title") . " <small><small>" . elgg_echo("market:title:help") . "</small></small><br />";
echo "</label></dt><dd>";
echo elgg_view("input/text", array(
				"name" => "markettitle",
				"value" => $title,
				));
echo "</dd></dl>";


/**
 * 
 * Nombre de pièces
 */
echo "<dl class='appartement maison'><dt>";
echo "<label>" . elgg_echo("market:nbpiece") . "&nbsp;<small><small></small></small>";
echo "</label></dt><dd>";
echo elgg_view("input/text", array(
		"name" => "marketnbpiece",
		"value" => $nbpiece,
));
echo "</dd></dl>";


/**
 *
 * Etage
 */
echo "<dl class='appartement'><dt>";
echo "<label>" . elgg_echo("market:etage") . "&nbsp;<small><small></small></small>";
echo "</label></dt><dd>";
echo elgg_view("input/text", array(
		"name" => "marketetage",
		"value" => $etage,
));
echo "</dd></dl>";



/**
 *
 * Superficie
 */

echo "<dl class='appartement maison terrain'><dt>";
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
		"value" => $zip,
));

echo "</dd></dl>";


/**
 *
 * Annee de construction
 */
echo "<dl class='appartement maison'><dt>";
echo "<label>" . elgg_echo("market:year") . "&nbsp;<small><small></small></small>";
echo "</label></dt><dd>";
echo elgg_view("input/text", array(
		"name" => "marketyear",
		"value" => $year,
));
echo "</dd></dl>";

/**
 * 
 * 
 
echo "<p><label>";
echo elgg_echo("title");
echo "&nbsp;<small><small>" . elgg_echo("market:title:help") . "</small></small><br />";
echo elgg_view("input/text", array(
				"name" => "markettitle",
				"value" => $title,
				));
echo "</label></p>";



if(elgg_get_plugin_setting('market_custom', 'market') == 'yes'){
	$marketcustom = elgg_view('market/custom',$vars);
	if (!empty($marketcustom)) {
		echo "<p>{$marketcustom}</p>";
	}
}*/

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
/*
echo "<p><label>" . elgg_echo("market:tags") . "&nbsp;<small><small>" . elgg_echo("market:tags:help") . "</small></small><br />";
echo elgg_view("input/tags", array(
				"name" => "markettags",
				"value" => $tags,
				));
echo "</label></p>";
*/

echo "<dl><dt>";
echo "<label>" . elgg_echo("market:uploadimages") . "<br /><small><small>" . elgg_echo("market:imagelimitation") . "</small></small><br />";
echo "</label></dt><dd>";
echo elgg_view("input/file",array('name' => 'upload'));echo "<br />";
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
// Terms checkbox and link
$termslink = elgg_view('output/url', array(
			'href' => "mod/market/terms.php",
			'text' => elgg_echo('market:terms:title'),
			'class' => "elgg-lightbox",
			));
$termsaccept = sprintf(elgg_echo("market:accept:terms"),$termslink);
echo "</p>";

echo "<input type='checkbox' name='accept_terms'><label>{$termsaccept}</label></p>";
echo "</dd></dl><br>";

echo "<dl><dt></dt><dd>";
echo elgg_view('input/submit', array('name' => 'submit', 'text' => elgg_echo('save')));


echo "</dd></dl>";