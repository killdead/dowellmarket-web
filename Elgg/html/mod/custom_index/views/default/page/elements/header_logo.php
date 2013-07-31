<?php
/**
 * Elgg header logo
 */

$site = elgg_get_site_entity();
$site_name = $site->name;
$site_url = elgg_get_site_url();
$powered_url = $site_url. "_graphics/dwm_logo.png";
?>
	<a class="elgg-heading-site" href="<?php echo $site_url; ?>">
<?php 		echo elgg_view('output/img', array(
	'src' => $powered_url ,
));
?>
	</a>

