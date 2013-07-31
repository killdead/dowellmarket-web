<?php
/**
 * Elgg custom index layout
 * 
 * You can edit the layout of this page with your own layout and style. 
 * Whatever you put in this view will appear on the front page of your site.
 * 
 */

$mod_params = array('class' => 'elgg-module-highlight');

?>

<div class="custom-index elgg-main elgg-grid clearfix">
	<div class="elgg-col elgg-col-1of2">
		<div class="elgg-inner pvm prl">
<?php
// left column


$top_box = "<h2>" . elgg_echo("DoWellMarket.com Le sens du partage ...") . " ";

// Top box for login or welcome message
if (elgg_is_logged_in()) {
///	$top_box = "<h2>" . elgg_echo("welcome") . " ";
	$top_box .= elgg_get_logged_in_user_entity()->name;
}

$top_box .= "</h2>";
//echo elgg_view_module('featured',  '', $top_box, $mod_params);

?>



<div>
<div class="title"
style="border: 0px none; margin: 0px 0px 15px; padding: 0px; background-color: transparent; font-family: verdana,Tahoma; color: #432279; font-size: 18px; font-weight: bold;">Le
r&eacute;seau</div>
<div class="accroche"
style="border: 0px none ; margin: 0px; padding: 0px; background-color: transparent; font-family: verdana,Arial,'Trebuchet MS',Tahoma; color: rgb(102, 102, 102); font-size: 13px; font-weight: normal; line-height: 18px;">Retrouvez
les membres de votre association<br>
Enrichissez votre carnet d'adresses<br>
Echangez, Annoncez, Communiquez</div>
</div>
<br><br>
<div>
<div class="title"
style="border: 0px none; margin: 0px 0px 15px; padding: 0px; background-color: transparent; font-family: verdana,Tahoma; color: #432279; font-size: 18px; font-weight: bold;">Vos&nbsp;
affaires</div>
<div class="accroche"
style="border: 0px none ; margin: 0px; padding: 0px; background-color: transparent; font-family: verdana,Arial,'Trebuchet MS',Tahoma; color: rgb(102, 102, 102); font-size: 13px; font-weight: normal; line-height: 18px;">Rendez
visible vos produits immobiliers<br>
Trouvez rapidement un produit immobilier<br>
</div>
</div>
<?php if(!elgg_is_logged_in()) {?>
<br><br><div class="joinus box-shadow5 box-corner" >REJOINGNEZ-NOUS</div>
<?php }?>

<?php



// a view for plugins to extend
//echo elgg_view("index/lefthandside");

// files
//if (elgg_is_active_plugin('file')) {
//	echo elgg_view_module('featured',  elgg_echo("custom:files"), $vars['files'], $mod_params);
//}

// groups
//if (elgg_is_active_plugin('groups')) {
//	echo elgg_view_module('featured',  elgg_echo("custom:groups"), $vars['groups'], $mod_params);
//}
?>
		</div>
	</div>
	
	<?php 
	if (!elgg_is_logged_in()) {
	?>
	
	<div class="elgg-col elgg-col-1of2">
		<div class="elgg-inner pvm">
<?php
// right column

// a view for plugins to extend
echo elgg_view("index/righthandside");

echo elgg_view_module('featured',  '', $vars['login'], $mod_params);
?>
		</div>
	</div>
	<?php } ?>
</div>
