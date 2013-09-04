<?php
/**
 * Elgg demo custom index page plugin
 * 
 */

require_once(dirname(__FILE__) . "/lib/events.php");
require_once(dirname(__FILE__) . "/lib/webservices/core.php");
//require_once(dirname(__FILE__) . "/lib/webservices/user.php");
//require_once(dirname(__FILE__) . "/lib/webservices/group.php");
require_once(dirname(__FILE__) . "/lib/webservices/market.php");


function custom_index_init() {
	
	//lib
	elgg_register_library('elgg:custom_index', elgg_get_plugins_path() . 'custom_index/lib/custom_index.php');
	
//	elgg_register_js('niceforms', 'mod/custom_index/vendors/niceform/niceforms.js', 'head');
//	elgg_load_js('niceforms');
	
//	elgg_register_css('niceforms', 'mod/custom_index/vendors/niceform/niceforms-default.css');
//	elgg_load_css("niceforms");
	
	// Extend system CSS with our own styles
	elgg_extend_view('css/elgg', 'custom_index/css');
	elgg_extend_view('css/elgg', 'custom_index/style7');
	elgg_extend_view('page/elements/header', 'custom_index/page/elements/header');
	elgg_extend_view('page/elements/header_logo', 'custom_index/page/elements/header_logo');
	elgg_extend_view('page/elements/footer', 'custom_index/page/elements/footer');
	
	elgg_extend_view('page/elements/footer', 'custom_index/page/elements/footer');
	

	// Replace the default index page
	elgg_register_plugin_hook_handler('index', 'system', 'custom_index');
	
	// Ajouter le user au group de l'association
	elgg_register_event_handler("create", "member_of_site", "custom_index_handle_join_site");

    //Ajouter le menu qui permet d'accéder aux annonces du groupe de l'utilisateur
	elgg_register_plugin_hook_handler('register', 'menu:owner_block', 'custom_index_owner_block_menu');

}

function custom_index($hook, $type, $return, $params) {
	if ($return == true) {
		// another hook has already replaced the front page
		return $return;
	}

	if (!include_once(dirname(__FILE__) . "/index.php")) {
		return false;
	}

	// return true to signify that we have handled the front page
	return true;
}


function custom_index_owner_block_menu($hook, $type, $return, $params) {

	if (elgg_instanceof($params['entity'], 'user')) {

		if(elgg_is_admin_logged_in()) {
		//Toutes les annonces du site
		$return[] = new ElggMenuItem('1all', elgg_echo('market:everyone'), 'market');
		}
		
		
		$owner = elgg_get_page_owner_entity();
		
		if($owner->getGUID() != elgg_get_logged_in_user_guid()) {
		
		$url = "market/owned/{$params['entity']->username}";
		$item = new ElggMenuItem('1market', elgg_echo('market:owner'), $url);
		$return[] = $item;


		// Annonces de mon CGP
		$url = "market/group/{$params['entity']->groupguid}";
		$item = new ElggMenuItem('2marketgroup', elgg_echo('market:group:everyone'), $url);
		$return[] = $item;
		}
		else
		{
			$url = "market/owned/{$params['entity']->username}";
			$item = new ElggMenuItem('1market', elgg_echo('market:mine'), $url);
			$return[] = $item;
			
			
			// Annonces de mon CGP
			$url = "market/group/{$params['entity']->groupguid}";
			$item = new ElggMenuItem('2marketgroup', elgg_echo('market:group:mine'), $url);
			$return[] = $item;
		}


	}





	return $return;

}
elgg_register_event_handler('init', 'system', 'custom_index_init');





