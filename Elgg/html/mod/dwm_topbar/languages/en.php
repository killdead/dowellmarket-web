<?php

	$english = array(
		
		'dwm_topbar:settings:linklist' => '<b>Define the links for the topbar</b><br/>
		<br/>
		<b>To add a new tool box, use format:</b><br/>
		|| Tool box name | Link address | type<br/>
		Types are:<br/>
		0 - visible for everyone<br/>
		1 - visible for logged in users<br/>
		2 - visible for admins only<br/>
		Types are not required, default type is 0
		<b>To add elements to the toolbox, use format:</b><br/>
		Link name | Link address | type<br/><br/>
		Placing addresses on boxes is not required:<br/>
		|| Tool box name<br/>
		You have to place address (even empty) if you want to set box type though:<br/>
		|| Tool box name | | 1<br/>',
		'dwm_topbar:title' =>	'User links',
	
		'dwm_topbar:settings:loginbar' => "Show Toolbar with login form for not logged users",
		'dwm_topbar:settings:loginbox' => "Show login box on main page",
		'login:short' => 'Login',
		'dwm_topbar:settings:loginremark' => '[ You can\'t turn off login box and toolbar at once. There will be always at least one active login option. ]',
	
		/*Plugin settings*/
		'dwm_topbar:settings:joinicontools' => 'Join user\'s profile icon and tools',
		'dwm_topbar:settings:joinsettings' => 'Move account settings to "my profile" dropdown',
		'dwm_topbar:settings:elgglogo' => 'Show Elgg logo in the topbar',
		'dwm_topbar:settings:topbar' => 'Show/hide topbar elements',
		'dwm_topbar:preview' => 'Preview the main page',
		'dwm_topbar:preview:description' => '(save your plugin changes before previewing)',
		'dwm_topbar:settings:homebutton' => 'Show home button',
		'dwm_topbar:settings:userlinks' => 'Allow users to define their own links',
	
		/*Topbar texts*/
		'dwm_topbar:profile:icon' => 'My profile',
		'dwm_topbar:editprofile' => 'Edit profile',
		'dwm_topbar:userslinks' => 'User links',
		'dwm_topbar:home' => 'Home',
		'dwm_topbar:welcomemessage' => 'Welcome,',
		'dwm_topbar:profile:editprofile' => 'Edit profile',
		'dwm_topbar:profile:editicon' => 'Edit icon',
		'dwm_topbar:profile:settings' => 'Settings',
	
		/*Administration*/
		'dwm_mainpage:menu:short' => 'Mainpage widgets',
		'defaultwidgets:menu:dashboard:short' => 'Pulpit widgets',
		'defaultwidgets:menu:profile:short' => 'Profile widgets',
		'defaultwidgets:menu:user:short' => 'Users',
		'defaultwidgets:menu:forms:short' => 'Forms',
		'dwm_avatar:menu:short' => 'User avatars',
		'dwm_ads:menu:short' => 'Advertisements',
		'dwm_spotlight:menu:short' => 'Spotlight',
		'dwm_gifts:menu:short' => 'Gift list',
		'dwm_topbar:tidypics:short' => 'Tidypics',
		'dwm_topbar:menu:short' => 'Topbar',
		
	    'admin:settings:topbar' => 'Topbar',
		'dwm_moderation:menu:short' => 'Moderation',
		'dwm_pages:menu:short' => 'Pages',

		'dwm_topbar:title:administration' =>	'Topbar links',
	
		/*User links texts*/
		'dwm_topbar:link:desc' => 'Set link\'s target parameter to:',
		'dwm_topbar:link:self' => 'Self',
		'dwm_topbar:link:blank' => 'Blank',
		'dwm_topbar:link:nofollow' => 'Give link a nofollow attribute',
		'dwm_topbar:boxname' => 'Box name: ',
		'dwm_topbar:boxaddress' => 'URL:',
		'dwm_topbar:boxtype' => 'Visible for:',
		'dwm_topbar:linkname' => 'Name:',
		'dwm_topbar:linkaddress' => 'URL:',
		'dwm_topbar:linktype'	=> 'Visible for:',
		'dwm_topbar:type:0' => 'everyone',
		'dwm_topbar:type:1' => 'logged in',
		'dwm_topbar:type:2' => 'admin',
		'dwm_topbar:showlinks' => 'show links',
		'dwm_topbar:hidelinks' => 'hide links',
		
		/*Template*/
		'dwm_topbar:settings:template' => 'Choose topbar\'s template:',
		'dwm_topbar:template:blue' => 'Blue',
		'dwm_topbar:template:violet' => 'Violet',
		'dwm_topbar:template:red' => 'Red',
		'dwm_topbar:template:ocean' => 'Ocean',
		'dwm_topbar:template:green' => 'Green',
		'dwm_topbar:settings:template:notactive' => '[ You can get templates for your topbar <a href="http://www.elggdev.com/dwm_topbar_template">here</a> ]',
		'dwm_topbar:messages' => 'Messages: %s',
		'dwm_topbar:nomessages' => 'My mail',
	);
					
	add_translation("en",$english);
?>
