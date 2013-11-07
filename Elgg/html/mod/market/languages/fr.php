<?php
/**
 * Elgg Market Plugin
 * @package market
 * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU Public License version 2
 * @author slyhne
 * @copyright slyhne 2010-2011
 * @link www.zurf.dk/elgg
 * @version 1.8
 */

$french = array(
	
	// Menu items and titles	
	'market' => "Voir les annonces",
	'market:owner' => "Voir ses annonces",
	'market:posts' => "Toutes les annonces du site",
	'market:title' => "Le marché",
	'market:user:title' => "Les annonces de %s sur le marché",
	'market:user' => "Les annonces de %s",
	'market:user:friends' => "Les annonces des amis de %s",
	'market:user:friends:title' => "%s's friends posts on The Market",
	'market:mine' => "Voir mes annonces",
	'market:mine:title' => "Mes annonces",
	'market:posttitle' => "%s's Market item: %s",
	'market:friends' => "Les annonces de mes amis",
	'market:group' => "Le marché de mon CGP",
		'market:group:mine' => "Le marché de mon CGP",
	'market:friends:title' => "Les annonces des amis",
	'market:everyone:title' => "Tout le contenu du marché",
	'market:everyone' => "Tout le contenu du marché",
	'market:group:everyone' => "Tout le contenu de son marché",
	'market:read' => "voir le détail",
	'market:add' => "Créer une nouvelle annonce",
	'market:add:title' => "Ajouter une nouvelle annonce",
	'market:edit' => "Modifier l'annonce",
	'market:imagelimitation' => "Le format de l'image doit être JPG, GIF ou PNG.",
	'market:text' => "Description",
	'market:uploadimages' => "Photo(s)",
	'market:image' => "Photo(s) de l'annonce",
	'market:imagelater' => "",
	'market:strapline' => "Ajouté",
	'item:object:market' => 'Annonces du marché',
	'market:none:found' => 'Aucune annonce trouvée',
	'market:pmbuttontext' => "Envoyer un message privé",
	'market:price' => "Valeur financière  (en €)",
	'market:price:help' => " %s ",
	'market:text:help' => "Pas d'HTML et  max. 250 caractères)",
	'market:title:help' => "",
	'market:tags' => "Tags",
	'market:tags:help' => "(Séparer par des virgules)",
	'market:access:help' => "(Qui peut voir mon annonce)",
	'market:replies' => "Réponses",
	'market:created:gallery' => "Ajoutée par %s <br> à %s",
	'market:created:listing' => "Ajoutée par %s à %s",
	'market:showbig' => "Agrandir l'image",
	'market:type' => "Type",
	'market:charleft' => "characters left",
	'market:accept:terms' => "J'ai lu et j'accepte les %s.",
	'market:terms' => "conditions",
	'market:terms:title' => "Conditions générales d'utilisation",
	'market:terms' => "<li class='elgg-divide-bottom'>The Market is for buying or selling used itemts among members.</li>
			<li class='elgg-divide-bottom'>No more than %s Market posts are allowed pr. user at the same time.</li>
			<li class='elgg-divide-bottom'>Only one Market post is allowed pr. item.</li>

			<li class='elgg-divide-bottom'>A Market post may only contain one item, unless it's part of a matching set.</li>
			<li class='elgg-divide-bottom'>The Market is for used/home made items only.</li>
			<li class='elgg-divide-bottom'>The Market post must be deleted when it's no longer relevant.</li>
			<li class='elgg-divide-bottom'>Commercial advertising is limited to those who have signed a promotional agreement with us.</li>
			<li class='elgg-divide-bottom'>We reserve the right to delete any Market posts violating our terms of use.</li>
			<li class='elgg-divide-bottom'>Terms are subject to change over time.</li>
			",

	// market widget
	'market:widget' => "Mes annonces",
	'market:widget:description' => "Showcase your posts on The Market",
	'market:widget:viewall' => "Voir toutes mes annonces",
	'market:num_display' => "Nombre d'annonces à afficher",
	'market:icon_size' => "Taille de l'icône",
	'market:small' => "small",
	'market:tiny' => "tiny",
		
	// market river
	'river:create:object:market' => '%s posted a new ad in the Market %s',
	'river:update:object:market' => '%s updated the ad %s in the Market',
	'river:comment:object:market' => '%s commented on the Market ad %s',

	// Status messages
	'market:posted' => "Votre annonce a bien été créée.",
	'market:deleted' => "Votre annonce a bien été supprimée.",
	'market:uploaded' => "Votre image a bien été ajoutée.",

	// Error messages	
	'market:save:failure' => "Your Market post could not be saved. Please try again.",
	'market:blank' => "Sorry; you need to fill in both the title and body before you can make a post.",
	'market:tobig' => "Sorry; your file is bigger then 1MB, please upload a smaller file.",
	'market:notjpg' => "Please make sure the picture inculed is a .jpg, .png or .gif file.",
	'market:notuploaded' => "Sorry; your file doesn't apear to be uploaded.",
	'market:notfound' => "Sorry; we could not find the specified Market post.",
	'market:notdeleted' => "Sorry; we could not delete this Market post.",
	'market:tomany' => "Error: Too many Market posts",
	'market:tomany:text' => "You have reached the maximum number of Market posts pr. user. Please delete some first!",
	'market:accept:terms:error' => "You must accept the terms of use!",

	// Settings
	'market:settings:status' => "Etat",
	'market:settings:desc' => "Description",
	'market:max:posts' => "Max annonces par utilisateur",
	'market:unlimited' => "Illimité",
	'market:currency' => "Device ($, €, DKK or autres)",
	'market:allowhtml' => "Allow HTML in market posts",
	'market:numchars' => "Max. number of characters in market post (only valid without HTML)",
	'market:pmbutton' => "Enable private message button",
	'market:adminonly' => "Only admin can create market posts",
	'market:comments' => "Allow comments",
	'market:custom' => "Custom field",

	// market categories
	'market:categories' => 'Market categories',
	'market:categories:choose' => 'Type de bien',
	'market:categories:settings' => 'Market Categories:',	
	'market:categories:explanation' => 'Set some predefined categories for posting to the market.<br>Categories could be "clothes, footwear or buy,sell etc...", seperate each category with commas - remember not to use special characters in categories and put them in your language files as market:<i>categoryname</i>',	
	'market:categories:save:success' => 'Site market categories were successfully saved.',
	'market:categories:settings:categories' => 'Market Categories',
	'market:all' => "Toutes les annonces de DoWellMarket",
	'market:category' => "Category",
	'market:category:title' => "Toutes les annonces de DoWellMarket",

	// Categories
	'market:buy' => "Buying",
	'market:sell' => "Selling",
	'market:swap' => "Swap",
	'market:free' => "Free",

	// Custom select
	'market:custom:select' => "Item condition",
	'market:custom:text' => "Condition",
	'market:custom:activate' => "Enable Custom Select:",
	'market:custom:settings' => "Custom Select Choices",
	'market:custom:choices' => "Set some predefined choices for the custom select dropdown box.<br>Choices could be \"market:new,market:used...etc\", seperate each choice with commas - remember to put them in your language files",

	// Custom choises
	 'market:na' => "No information",
	 'market:new' => "New",
	 'market:unused' => "Unused",
	 'market:used' => "Used",
	 'market:good' => "Good",
	 'market:fair' => "Fair",
	 'market:poor' => "Poor",
	 // Dowellmarket
	 'market:type:title' => "Type de bien",
	'market:type:Appartement' => "Appartement",
    'market:type:Maison' => "Maison",
    'market:type:Portefeuille' => "Porte-feuille",
    'market:type:Autres' => "Autres",
    
    'market:type:title' => "Type de bien",
    'market:appartement' => "Appartement",
    'market:maison' => "Maison",
    'market:portefeuille' => "Porte-feuille",
    'market:terrain' => "Terrain",
    'market:autres' => "Autres",
    
    
    
    
    'market:nbpiece' => "Nombre de pièce(s)",
    'market:land' => "Superficie",
    
    'market:etage' => "Etage",
    'market:city' => "Ville",
    'market:zip' => "CP",
    'market:year' => "Année de construction",
    
    
);
					
add_translation("fr",$french);

?>
