<?php
/**
 * Add new ad to group of user's memberof
 */
function groups_handle_market_page() {

	$page_owner = elgg_get_page_owner_entity();

	if ($page_owner->guid == elgg_get_logged_in_user_guid()) {
		$title = elgg_echo('groups:yours');
	} else {
		$title = elgg_echo('groups:user', array($page_owner->name));
	}
	elgg_push_breadcrumb($title);

	elgg_register_title_button();

	$content = elgg_list_entities_from_relationship(array(
			'type' => 'group',
			'relationship' => 'member',
			'relationship_guid' => elgg_get_page_owner_guid(),
			'inverse_relationship' => false,
			'full_view' => false,
	));
	if (!$content) {
		$content = elgg_echo('groups:none');
	}

	$params = array(
			'content' => $content,
			'title' => $title,
			'filter' => '',
	);
	$body = elgg_view_layout('content', $params);

	echo elgg_view_page($title, $body);
}

/****
 * 
 * Add user to his group by default
 */

function custom_index_handle_join_site($event, $type, $relationship){

	if(!empty($relationship) && ($relationship instanceof ElggRelationship)){
		$user_guid = $relationship->guid_one;
		$site_guid = $relationship->guid_two;
			
		if($user = get_user($user_guid)){
			// ignore access
			$ia = elgg_set_ignore_access(true);

			$group = get_entity($user->groupguid);

			$group->join($user);
						// restore access settings
			elgg_set_ignore_access($ia);
		}
	}
}

function custom_index_market_add_group_relationship($event, $object_type, $object) {
	elgg_log('group relationship',WARNING);
	$page_owner = elgg_get_page_owner_entity();
	elgg_log('group relationship  : '.print_r($page_owner),WARNING);
	//add_entity_relationship($object->getGUID(), 'member_of_group',  elgg_get_logged_in_user_guid());
}
