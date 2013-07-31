<?php
/**
 * Elgg register form
 *
 * @package Elgg
 * @subpackage Core
 */

$password = $password2 = '';
$username = get_input('u');
$email = get_input('e');
$name = get_input('n');

$groups = elgg_get_entities(array('types' => 'group', 'limit' => 0));
$allgroups_options = array();
foreach ($groups as $group) {	
	$allgroups_options[$group->guid] = $group->name;
}



if (elgg_is_sticky_form('register')) {
	extract(elgg_get_sticky_values('register'));
	elgg_clear_sticky_form('register');
}

?>
<div width="100%" class="mtm dwm-inputregister">
<div class='dwm-inputregister' style="float:left;position:relative;">
<h3>Informations personnelles</h3>
<dl>
	<dt><label for="civilite"><?php echo elgg_echo('civilite'); ?> * :</label></dt>
	<dd>
	<?php
	echo elgg_view('input/dropdown', array(
		'name' => 'civilite',
		'value' => $civilite,
		'options_values' => array('1' => 'Mr', '2' => 'Mme'),
));
	?>
	</dd>
</dl>
<dl >
	<dt><label for="name"><?php echo elgg_echo('name'); ?> * :</label></dt>
	<dd><?php
	echo elgg_view('input/text', array(
		'name' => 'name',
		'value' => $name,
		'class' => 'elgg-autofocus',
	));
	?></dd>
</dl>
<dl>
	<dt><label for="custom_profile_fields_lastname"><?php echo elgg_echo('lastname'); ?> * :</label></dt>
	<dd><?php
	echo elgg_view('input/text', array(
		'name' => 'custom_profile_fields_lastname',
		'value' => $custom_profile_fields_lastname,
	));
	?></dd>
</dl>
<dl>
	<dt><label for="email"><?php echo elgg_echo('email'); ?> * :</label></dt><dd>
	<?php
	echo elgg_view('input/text', array(
		'name' => 'email',
		'value' => $email,
	));
	?></dd>
</dl>


<dl>
	<dt><label for="custom_profile_fields_phone"><?php echo elgg_echo('phone'); ?> * :</label></dt>
	<dd><?php
	echo elgg_view('input/text', array(
		'name' => 'custom_profile_fields_phone',
		'value' => $custom_profile_fields_phone,
	));
	?></dd>
</dl>
<dl>
	<dt><label for="custom_profile_fields_mobile"><?php echo elgg_echo('mobile'); ?> * :</label></dt><dd>
	<?php
	echo elgg_view('input/text', array(
		'name' => 'custom_profile_fields_mobile',
		'value' => $custom_profile_fields_mobile,
	));
	?></dd>
</dl>
<dl>
	<dt><label for="custom_profile_fields_location"><?php echo elgg_echo('location'); ?> * :</label></dt><dd>
	<?php
	echo elgg_view('input/plaintext', array(
		'name' => 'custom_profile_fields_location',
		'value' => $custom_profile_fields_location,
'rows' => '1',
'cols' => '30',
'class' => 'adresse'
	));
	?></dd>
</dl>
<dl>
	<dt><label for="city"><?php echo elgg_echo('city'); ?> * :</label></dt><dd>
	<?php
	echo elgg_view('input/text', array(
		'name' => 'custom_profile_fields_city',
		'value' => $custom_profile_fields_city,
	));
	?></dd>
</dl>
<dl>
	<dt><label for="custom_profile_fields_zipcode"><?php echo elgg_echo('zipcode'); ?> * :</label></dt><dd>
	<?php
	echo elgg_view('input/text', array(
		'name' => 'custom_profile_fields_zipcode',
		'value' => $custom_profile_fields_zipcode,
	));
	?></dd>
</dl>
<dl>
	<dt><label for="custom_profile_fields_groupguid"><?php echo elgg_echo('groupguid'); ?> * :</label></dt>
	<dd><?php
	echo elgg_view('input/dropdown', array(
		'name' => 'custom_profile_fields_groupguid',
		'value' => '',
		'options_values' => $allgroups_options,
        'blank' => true,
));
	?></dd>
</dl>
</div>
<div class='dwm-inputregister' style="width:40%;float:left;margin-left:10px;position:relative">
<h3>Informations de connexion</h3>
<dl>
	<dt><label for="username"><?php echo elgg_echo('username'); ?> * :</label></dt>
	<dd><?php
	echo elgg_view('input/text', array(
		'name' => 'username',
		'value' => $username,
	));
	?></dd>
</dl>

<dl>
	<dt><label for="password"><?php echo elgg_echo('password'); ?> * :</label></dt>
	<dd><?php
	echo elgg_view('input/password', array(
		'name' => 'password',
		'value' => $password,
	));
	?></dd>
</dl>
<dl>
	<dt><label for="password2"><?php echo elgg_echo('passwordagain'); ?> * :</label></dt>
	<dd><?php
	echo elgg_view('input/password', array(
		'name' => 'password2',
		'value' => $password2,
	));
	?></dd>
</dl>
</div>

<?php
// view to extend to add more fields to the registration form
echo elgg_view('register/extend', $vars);

// Add captcha hook
echo elgg_view('input/captcha', $vars);?>

<div style="width:100%;float:left;position:relative; text-align:left;">
            <i>* Champs obligatoires</i>
        </div>
<div style="width:100%;float:left;margin-left:10px;position:relative; text-align:center;">
<?php 
echo elgg_view('input/submit', array('name' => 'submit', 'value' => elgg_echo('register'), 'class' => 'elgg-button-submit dwm-button-register'));
?>
</div>
<?php 
echo '</div>';
echo '<div class="elgg-foot">';
echo elgg_view('input/hidden', array('name' => 'friend_guid', 'value' => $vars['friend_guid']));
echo elgg_view('input/hidden', array('name' => 'invitecode', 'value' => $vars['invitecode']));

echo '</div>';