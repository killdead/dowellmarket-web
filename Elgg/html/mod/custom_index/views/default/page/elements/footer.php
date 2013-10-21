<?php
/**
 * Elgg footer
 * The standard HTML footer that displays across the site
 *
 * @package Elgg
 * @subpackage Core
 *
 */

echo elgg_view_menu('footer', array('sort_by' => 'priority', 'class' => 'elgg-menu-hz'));

$powered_url = elgg_get_site_url() . "_graphics/powered_by_elgg_badge_drk_bckgnd.gif";


?>


<div class="footer">
  <ul class="col-1" style="padding-left: 20px; width: 140px;">
    <h2>Dowellmarket</h2>
    <li><span><a href="#">Qui sommes-nous ?</a></span></li>
    <li><span><a href="#">Contactez-nous</a></span></li>
    <li><span><a href="#">Partager ce site</a></span></li>
  </ul>
  <ul class="col-2">
    <h2>Informations légales</h2>
    <li><span><a href="#">Conditions générales d'utilisation</a></span></li>
    <li><span><a href="#"> Mentions légales</a></span></li>
  </ul>
   <ul class="col-3">
    <h2>Services</h2>
    <li><span><a href="#">Déposer une annonce</a></span></li>
    <li><span><a href="#">Rechercher une annonce</a></span></li>
    <li><span><a href="#">Partenaires</a></span></li>
  </ul>
    <br class="clearfloat">
</div>