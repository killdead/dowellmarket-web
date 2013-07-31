<?php
	require_once(dirname(dirname(dirname(__FILE__))) . "/engine/start.php");
	elgg_set_context('admin');
 	admin_gatekeeper();
	$title = elgg_echo('vazco_topbar:title:administration');
	$body = elgg_view('vazco_topbar/edit');
	page_draw($title,elgg_view_layout("two_column_left_sidebar", '', elgg_view_title($title) . $body));
?>