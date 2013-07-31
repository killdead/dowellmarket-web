<?php

	/**
	 * Elgg dwm_topbar plugin
	 *
	 * @author Michal Zacher [michal.zacher@gmail.com]
	 * @website www.elggdev.com
	 */
    require_once(dirname(__FILE__)."/models/model.php");

    function dwm_topbar_init() {
    	global $CONFIG;
    	$viewer = elgg_get_logged_in_user_entity();
		elgg_extend_view('css','dwm_topbar/css');
		elgg_extend_view('vanillaforum/topbar_css','dwm_topbar/css');
		
		elgg_extend_view("dwm_topbar/edit",false,$CONFIG->pluginspath . "dwm_topbar/actions/edit.php");
		elgg_extend_view("dwm_topbar/userlinks",false,$CONFIG->pluginspath . "dwm_topbar/actions/userlinks.php");		
		
		elgg_register_menu_item('topbar', array(
					'name' => 'usericonsettings',
					'href' => "settings/user/{$viewer->username}",
					'text' => elgg_view_icon('settings'),
					'priority' => 650
		));
		
		if (elgg_is_admin_logged_in()) {
			elgg_register_menu_item('topbar', array(
					'name' => 'administration',
					'href' => 'admin',
					'text' => elgg_echo('admin'),
					'priority' => 100,
					'section' => 'alt',
			));
		}
		
		
		
		// Initialize a pagesetup for menus
		elgg_register_event_handler('pagesetup','system','dwm_topbar_pagesetup');
					
    }
    
   
	function logoutbar_enabled()
    {
    	
		$enabled = elgg_get_plugin_setting('loginbar', 'dwm_topbar');
		//make sure there's at least one way to log in
		if (!loginbox_enabled())
			$enabled = "yes";
		return ($enabled == "no") ? false : true;
    }
    function loginbox_enabled()
    {
		$enabled = elgg_get_plugin_setting('loginbox','dwm_topbar');
		return ($enabled == "no") ? false : true;
    }
    
    function dwm_topbar_pagesetup() {
    	
    	$joinicontools = elgg_get_plugin_setting('joinicontools','dwm_topbar');
    	$joinsettings = elgg_get_plugin_setting('joinsettings','dwm_topbar');
    	$elgglogo = elgg_get_plugin_setting('elgglogo','dwm_topbar');
    	$homebutton = elgg_get_plugin_setting('homebutton','dwm_topbar');
    	 
    	elgg_log("OPTIONS ".$homebutton." ".$joinicontools." ".$joinsettings." ".$elgglogo, "DEBUG");
    	 
    	elgg_unregister_menu_item('topbar', 'usersettings');
    	
    	if($elgglogo == 'no')
    	elgg_unregister_menu_item('topbar', 'elgg_logo');
    	
    }
		
     // Make sure the status initialisation function is called on initialisation
	elgg_register_event_handler('init','system','dwm_topbar_init');

	
?>
