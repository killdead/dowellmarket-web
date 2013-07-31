<?php

	/**
	 * Elgg dwm_topbar plugin
	 *
	 * @author DoWell Market
	 */
	$linklist = elgg_get_plugin_setting('linklist','dwm_topbar');
    $settings = elgg_get_plugin_from_id('dwm_topbar');
	if (!$settings->loginbar || $settings->loginbox == "no") {
	    $settings->loginbar = "yes";
    }
    if (!$settings->loginbox) {
	    $settings->loginbox = "yes";
    }
    
    if (!$settings->joinicontools) {
	    $settings->joinicontools = "yes";
    }
    if (!$settings->elgglogo) {
	    $settings->elgglogo = "yes";
    }
    
    if (!$settings->joinsettings) {
	    $settings->joinsettings = "yes";
    }
    

?>
<div class="contentWrapper">
<!-- //<form action="<?php echo $vars['url']; ?>action/dwm_topbar/edit" method="post"> -->
<?php echo elgg_view('input/securitytoken');?>
<p>
    <?php echo elgg_echo('dwm_topbar:settings:homebutton'); ?>
    <select name="params[homebutton]">
        <option value="yes" <?php if ($settings->homebutton != 'no') echo " selected=\"yes\" "; ?>><?php echo elgg_echo('option:yes'); ?></option>
        <option value="no" <?php if ($settings->homebutton == 'no') echo " selected=\"yes\" "; ?>><?php echo elgg_echo('option:no'); ?></option>
    </select>
</p>
<p>
    <?php echo elgg_echo('dwm_topbar:settings:joinicontools'); ?>
    <select name="params[joinicontools]">
        <option value="yes" <?php if ($settings->joinicontools != 'no') echo " selected=\"yes\" "; ?>><?php echo elgg_echo('option:yes'); ?></option>
        <option value="no" <?php if ($settings->joinicontools == 'no') echo " selected=\"yes\" "; ?>><?php echo elgg_echo('option:no'); ?></option>
    </select>
</p>

<p>
    <?php echo elgg_echo('dwm_topbar:settings:joinsettings'); ?>
    <select name="params[joinsettings]">
        <option value="yes" <?php if ($settings->joinsettings != 'no') echo " selected=\"yes\" "; ?>><?php echo elgg_echo('option:yes'); ?></option>
        <option value="no" <?php if ($settings->joinsettings == 'no') echo " selected=\"yes\" "; ?>><?php echo elgg_echo('option:no'); ?></option>
    </select>
</p>
<p>
    <?php echo elgg_echo('dwm_topbar:settings:elgglogo'); ?>
    <select name="params[elgglogo]">
        <option value="yes" <?php if ($settings->elgglogo != 'no') echo " selected=\"yes\" "; ?>><?php echo elgg_echo('option:yes'); ?></option>
        <option value="no" <?php if ($settings->elgglogo == 'no') echo " selected=\"yes\" "; ?>><?php echo elgg_echo('option:no'); ?></option>
    </select>
</p>
<p>
    <?php echo elgg_echo('dwm_topbar:settings:loginbar'); ?>
    <select name="params[loginbar]">
        <option value="yes" <?php if ($settings->loginbar != 'no') echo " selected=\"yes\" "; ?>><?php echo elgg_echo('option:yes'); ?></option>
        <option value="no" <?php if ($settings->loginbar == 'no') echo " selected=\"yes\" "; ?>><?php echo elgg_echo('option:no'); ?></option>
    </select>
</p>

<!--   <input type="submit" class="submit_button" value="<?php echo elgg_echo("save"); ?>" />
</form>-->

</div>