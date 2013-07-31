<?php
/**
 * Elgg add user form.
 *
 * @package Elgg
 * @subpackage Core
 * 
 */

$name = $username = $email = $password = $password2 = $admin = '';

if (elgg_is_sticky_form('useradd')) {
	extract(elgg_get_sticky_values('useradd'));
	elgg_clear_sticky_form('useradd');
	if (is_array($admin)) {
		$admin = $admin[0];
	}
}

?>
<div width="100%" class="mtm dwm-inputregister">
<div class='dwm-inputregister' style="width:50%;float:left;position:relative;">
<dl>
	<dt><?php echo elgg_echo('civilite'); ?></dt>
	<dd>
	<?php
	echo elgg_view('input/dropdown', array(
		'name' => 'civilite',
		'value' => $civilite,
		'options_values' => array('1' => 'Mr', '2' => 'Mme'),
));
	?></dd>
</dl>
<div >
	<label><?php echo elgg_echo('name'); ?></label><br />
	<?php
	echo elgg_view('input/text', array(
		'name' => 'name',
		'value' => $name,
		'class' => 'elgg-autofocus',
	));
	?>
</div>
<div>
	<label><?php echo elgg_echo('lastname'); ?></label><br />
	<?php
	echo elgg_view('input/text', array(
		'name' => 'lastname',
		'value' => $lastname,
	));
	?>
</div>
<div>
	<label><?php echo elgg_echo('email'); ?></label><br />
	<?php
	echo elgg_view('input/text', array(
		'name' => 'email',
		'value' => $email,
	));
	?>
</div>


<div>
	<label><?php echo elgg_echo('phone'); ?></label><br />
	<?php
	echo elgg_view('input/text', array(
		'name' => 'phone',
		'value' => $phone,
	));
	?>
</div>
<div>
	<label><?php echo elgg_echo('adresse'); ?></label><br />
	<?php
	echo elgg_view('input/text', array(
		'name' => 'adresse',
		'value' => $adresse,
	));
	?>
</div>
<div>
	<label><?php echo elgg_echo('ville'); ?></label><br />
	<?php
	echo elgg_view('input/text', array(
		'name' => 'ville',
		'value' => $ville,
	));
	?>
</div>
<div>
	<label><?php echo elgg_echo('codepostal'); ?></label><br />
	<?php
	echo elgg_view('input/text', array(
		'name' => 'codepostal',
		'value' => $codepostal,
	));
	?>
</div>
</div>
<div class='dwm-inputregister' style="width:40%;float:left;margin-left:10px;">
<div>
	<label><?php echo elgg_echo('username'); ?></label><br />
	<?php
	echo elgg_view('input/text', array(
		'name' => 'username',
		'value' => $username,
	));
	?>
</div>
<div>
	<label><?php echo elgg_echo('mygroup'); ?></label><br />
	<?php
	echo elgg_view('input/dropdown', array(
		'name' => 'mygroup_guid',
		'value' => $mygroup_guid,
		'options_values' => $allgroups_options,
));
	?>
</div>
<div>
	<label><?php echo elgg_echo('password'); ?></label><br />
	<?php
	echo elgg_view('input/password', array(
		'name' => 'password',
		'value' => $password,
	));
	?>
</div>
<div>
	<label><?php echo elgg_echo('passwordagain'); ?></label><br />
	<?php
	echo elgg_view('input/password', array(
		'name' => 'password2',
		'value' => $password2,
	));
	?>
</div>
<br><br>
<div class="elgg-foot">
	<?php echo elgg_view('input/submit', array('value' => elgg_echo('register'))); ?>
</div>
</div>