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
  <ul class="col-1" style="padding-left: 20px; width: 160px;">
    <h2>Dowellmarket</h2>
    <li><span><a href="/qui-sommes-nous">Qui sommes-nous ?</a></span></li>
    <li><span><a href="/contactus">Contactez-nous</a></span></li>
    <li><span><a href="#">Partager ce site</a></span></li>
  </ul>
  <ul class="col-2">
    <h2>Informations légales</h2>
    <li><span><a href="/conditions-generales">Conditions générales d'utilisation</a></span></li>
    <li><span><a href="/mentions-legales"> Mentions légales</a></span></li>
  </ul>
   <ul class="col-3">
    <h2>Services</h2>
    <li><span><a href="/deposer-une-annonce">Déposer une annonce</a></span></li>
    <li><span><a href="/rechercher-un-produit">Rechercher un produit</a></span></li>
    <li><span><a href="/systeme-de-credit">Le système de crédit</a></span></li>
  </ul>
    <br class="clearfloat">
</div>