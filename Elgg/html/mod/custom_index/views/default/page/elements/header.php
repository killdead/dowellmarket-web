<?php
/**
 * Elgg page header
 * In the default theme, the header lives between the topbar and main content area.
 */
?>

<div style="float: left">
<?php 
// link back to main site.
echo elgg_view('page/elements/header_logo', $vars);
?>
</div>
<?php if(!elgg_is_logged_in()) {?>
<div style="float:left;padding-top:30px;" class="top_resume">
Le réseau professionnel accélérateur de business sur le marché de Gestion de Patrimoine Indépendant <br>
Un contact, une photo, un prix, un click !</div>
<?php }?>
<div style="float: left;">
<?php 
// drop-down login
//echo elgg_view('core/account/login_dropdown');

// insert site-wide navigation
echo elgg_view_menu('site');?>

</div>
