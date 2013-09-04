<?php

function market_get_markets($context){
	
$markets = null;
	
	$options = array(
			'types' => 'object',
			'subtypes' => 'market',
			'limit' => 5,
			'full_view' => false,
	);
	
	if(!isset($context) && $context != "all") {
	$options['metadata_name'] = "marketcategory";
	$options['metadata_value'] = $context;
	$markets = elgg_get_entities_from_metadata($options);
	}
	else
	{
	$markets = elgg_get_entities($options);
	}
	
	
	if($markets){
		foreach($markets as $single){
			$market['guid'] = $single->guid;
			$market['name'] = $single->title;			
			$return[] = $market;
		}
	}
	else {
		$msg = elgg_echo('markets:none');
		throw new InvalidParameterException($msg);
	}
	
	return $return;
}

expose_function('market.get_markets',
"market_get_markets",
array(	'context' => array ('type' => 'string', 'required' => false, 'default' => 'all')
),
"Get market's post",
'GET',
false,
false);