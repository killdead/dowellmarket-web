-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Ven 26 Avril 2013 à 16:21
-- Version du serveur: 5.5.20
-- Version de PHP: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `elgg`
--

-- --------------------------------------------------------

--
-- Structure de la table `elgg_access_collections`
--

CREATE TABLE IF NOT EXISTS `elgg_access_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Structure de la table `elgg_access_collection_membership`
--

CREATE TABLE IF NOT EXISTS `elgg_access_collection_membership` (
  `user_guid` int(11) NOT NULL,
  `access_collection_id` int(11) NOT NULL,
  PRIMARY KEY (`user_guid`,`access_collection_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `elgg_annotations`
--

CREATE TABLE IF NOT EXISTS `elgg_annotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `elgg_api_users`
--

CREATE TABLE IF NOT EXISTS `elgg_api_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_guid` bigint(20) unsigned DEFAULT NULL,
  `api_key` varchar(40) DEFAULT NULL,
  `secret` varchar(40) NOT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_key` (`api_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `elgg_config`
--

CREATE TABLE IF NOT EXISTS `elgg_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `site_guid` int(11) NOT NULL,
  PRIMARY KEY (`name`,`site_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `elgg_config`
--

INSERT INTO `elgg_config` (`name`, `value`, `site_guid`) VALUES
('view', 's:7:"default";', 1),
('language', 's:2:"en";', 1),
('default_access', 's:1:"1";', 1),
('allow_registration', 'b:1;', 1),
('walled_garden', 'b:1;', 1),
('allow_user_default_access', 'i:0;', 1),
('site_featured_menu_names', 'a:2:{i:0;s:8:"activity";i:1;s:7:"members";}', 1),
('site_custom_menu_items', 'a:0:{}', 1),
('disable_api', 's:8:"disabled";', 1);

-- --------------------------------------------------------

--
-- Structure de la table `elgg_datalists`
--

CREATE TABLE IF NOT EXISTS `elgg_datalists` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `elgg_datalists`
--

INSERT INTO `elgg_datalists` (`name`, `value`) VALUES
('filestore_run_once', '1366721855'),
('plugin_run_once', '1366721856'),
('elgg_widget_run_once', '1366721856'),
('installed', '1366721890'),
('path', 'C:/Users/cirenege/workspace/Elgg/html/'),
('dataroot', 'C:/Users/cirenege/workspace/Elgg/data/'),
('default_site', '1'),
('version', '2013030600'),
('simplecache_enabled', '0'),
('system_cache_enabled', '0'),
('processed_upgrades', 'a:41:{i:0;s:14:"2008100701.php";i:1;s:14:"2008101303.php";i:2;s:14:"2009022701.php";i:3;s:14:"2009041701.php";i:4;s:14:"2009070101.php";i:5;s:14:"2009102801.php";i:6;s:14:"2010010501.php";i:7;s:14:"2010033101.php";i:8;s:14:"2010040201.php";i:9;s:14:"2010052601.php";i:10;s:14:"2010060101.php";i:11;s:14:"2010060401.php";i:12;s:14:"2010061501.php";i:13;s:14:"2010062301.php";i:14;s:14:"2010062302.php";i:15;s:14:"2010070301.php";i:16;s:14:"2010071001.php";i:17;s:14:"2010071002.php";i:18;s:14:"2010111501.php";i:19;s:14:"2010121601.php";i:20;s:14:"2010121602.php";i:21;s:14:"2010121701.php";i:22;s:14:"2010123101.php";i:23;s:14:"2011010101.php";i:24;s:61:"2011021800-1.8_svn-goodbye_walled_garden-083121a656d06894.php";i:25;s:61:"2011022000-1.8_svn-custom_profile_fields-390ac967b0bb5665.php";i:26;s:60:"2011030700-1.8_svn-blog_status_metadata-4645225d7b440876.php";i:27;s:51:"2011031300-1.8_svn-twitter_api-12b832a5a7a3e1bd.php";i:28;s:57:"2011031600-1.8_svn-datalist_grows_up-0b8aec5a55cc1e1c.php";i:29;s:61:"2011032000-1.8_svn-widgets_arent_plugins-61836261fa280a5c.php";i:30;s:59:"2011032200-1.8_svn-admins_like_widgets-7f19d2783c1680d3.php";i:31;s:14:"2011052801.php";i:32;s:60:"2011061200-1.8b1-sites_need_a_site_guid-6d9dcbf46c0826cc.php";i:33;s:62:"2011092500-1.8.0.1-forum_reply_river_view-5758ce8d86ac56ce.php";i:34;s:54:"2011123100-1.8.2-fix_friend_river-b17e7ff8345c2269.php";i:35;s:53:"2011123101-1.8.2-fix_blog_status-b14c2a0e7b9e7d55.php";i:36;s:50:"2012012000-1.8.3-ip_in_syslog-87fe0f068cf62428.php";i:37;s:50:"2012012100-1.8.3-system_cache-93100e7d55a24a11.php";i:38;s:59:"2012041800-1.8.3-dont_filter_passwords-c0ca4a18b38ae2bc.php";i:39;s:58:"2012041801-1.8.3-multiple_user_tokens-852225f7fd89f6c5.php";i:40;s:59:"2013030600-1.8.13-update_user_location-8999eb8bf1bdd9a3.php";}'),
('admin_registered', '1'),
('simplecache_lastupdate_default', '1366989474'),
('simplecache_lastcached_default', '1366989474'),
('__site_secret__', '58768dc800c8ae62286dfa4e904a2f22'),
('simplecache_lastupdate_failsafe', '0'),
('simplecache_lastcached_failsafe', '0'),
('simplecache_lastupdate_foaf', '0'),
('simplecache_lastcached_foaf', '0'),
('simplecache_lastupdate_ical', '0'),
('simplecache_lastcached_ical', '0'),
('simplecache_lastupdate_installation', '0'),
('simplecache_lastcached_installation', '0'),
('simplecache_lastupdate_json', '0'),
('simplecache_lastcached_json', '0'),
('simplecache_lastupdate_opendd', '0'),
('simplecache_lastcached_opendd', '0'),
('simplecache_lastupdate_php', '0'),
('simplecache_lastcached_php', '0'),
('simplecache_lastupdate_rss', '0'),
('simplecache_lastcached_rss', '0'),
('simplecache_lastupdate_xml', '0'),
('simplecache_lastcached_xml', '0'),
('profile_manager_run_once', '1366722134'),
('pm_fix_access_default', '1366722134');

-- --------------------------------------------------------

--
-- Structure de la table `elgg_entities`
--

CREATE TABLE IF NOT EXISTS `elgg_entities` (
  `guid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` int(11) DEFAULT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `container_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `time_updated` int(11) NOT NULL,
  `last_action` int(11) NOT NULL DEFAULT '0',
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`guid`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`),
  KEY `container_guid` (`container_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `time_updated` (`time_updated`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- Contenu de la table `elgg_entities`
--

INSERT INTO `elgg_entities` (`guid`, `type`, `subtype`, `owner_guid`, `site_guid`, `container_guid`, `access_id`, `time_created`, `time_updated`, `last_action`, `enabled`) VALUES
(1, 'site', 0, 0, 1, 0, 2, 1366721890, 1366725697, 1366723376, 'yes'),
(2, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(3, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(4, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(5, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(6, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(7, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(8, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(9, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(10, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(11, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(12, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(13, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(14, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(15, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(16, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(17, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(18, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(19, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(20, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(21, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(22, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(23, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(24, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(25, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(26, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(27, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(28, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(29, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(30, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(31, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(32, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(33, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(34, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(35, 'object', 2, 1, 1, 1, 2, 1366721890, 1366721890, 1366721890, 'yes'),
(36, 'object', 2, 1, 1, 1, 2, 1366721891, 1366721891, 1366721891, 'yes'),
(37, 'object', 2, 1, 1, 1, 2, 1366721891, 1366721891, 1366721891, 'yes'),
(38, 'user', 0, 0, 1, 0, 2, 1366721921, 1366989457, 1366721921, 'yes'),
(39, 'object', 3, 38, 1, 38, 0, 1366721921, 1366721921, 1366721921, 'yes'),
(40, 'object', 3, 38, 1, 38, 0, 1366721921, 1366721921, 1366721921, 'yes'),
(41, 'object', 3, 38, 1, 38, 0, 1366721921, 1366721921, 1366721921, 'yes'),
(42, 'object', 3, 38, 1, 38, 0, 1366721921, 1366721921, 1366721921, 'yes'),
(43, 'object', 3, 38, 1, 38, 0, 1366721921, 1366721921, 1366721921, 'yes'),
(49, 'user', 0, 0, 1, 0, 2, 1366723376, 1366725578, 1366723376, 'yes'),
(47, 'object', 6, 1, 1, 1, 2, 1366722930, 1366723265, 1366722930, 'yes'),
(50, 'object', 10, 38, 1, 38, 2, 1366724302, 1366724302, 1366724302, 'yes'),
(51, 'object', 2, 1, 1, 1, 2, 1366724782, 1366724782, 1366724782, 'yes'),
(52, 'object', 2, 1, 1, 1, 2, 1366725268, 1366725268, 1366725268, 'yes'),
(56, 'object', 12, 38, 1, 38, 0, 1366725543, 1366725543, 1366725543, 'yes'),
(55, 'object', 12, 49, 1, 49, 0, 1366725542, 1366725543, 1366725542, 'yes'),
(57, 'object', 2, 1, 1, 1, 2, 1366725745, 1366725745, 1366725745, 'no'),
(58, 'object', 2, 1, 1, 1, 2, 1366971163, 1366971163, 1366971163, 'yes'),
(59, 'object', 2, 1, 1, 1, 2, 1366985193, 1366985193, 1366985193, 'yes'),
(61, 'object', 2, 1, 1, 1, 2, 1366988803, 1366988803, 1366988803, 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `elgg_entity_relationships`
--

CREATE TABLE IF NOT EXISTS `elgg_entity_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid_one` bigint(20) unsigned NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `guid_two` bigint(20) unsigned NOT NULL,
  `time_created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guid_one` (`guid_one`,`relationship`,`guid_two`),
  KEY `relationship` (`relationship`),
  KEY `guid_two` (`guid_two`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Contenu de la table `elgg_entity_relationships`
--

INSERT INTO `elgg_entity_relationships` (`id`, `guid_one`, `relationship`, `guid_two`, `time_created`) VALUES
(56, 61, 'active_plugin', 1, 1366989433),
(30, 9, 'active_plugin', 1, 1366723902),
(29, 21, 'active_plugin', 1, 1366723640),
(28, 23, 'active_plugin', 1, 1366723612),
(27, 49, 'member_of_site', 1, 1366723376),
(26, 19, 'active_plugin', 1, 1366723284),
(24, 27, 'active_plugin', 1, 1366722129),
(23, 38, 'member_of_site', 1, 1366721921);

-- --------------------------------------------------------

--
-- Structure de la table `elgg_entity_subtypes`
--

CREATE TABLE IF NOT EXISTS `elgg_entity_subtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`subtype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `elgg_entity_subtypes`
--

INSERT INTO `elgg_entity_subtypes` (`id`, `type`, `subtype`, `class`) VALUES
(1, 'object', 'file', 'ElggFile'),
(2, 'object', 'plugin', 'ElggPlugin'),
(3, 'object', 'widget', 'ElggWidget'),
(4, 'object', 'blog', ''),
(5, 'object', 'thewire', ''),
(6, 'object', 'custom_profile_field', 'ProfileManagerCustomProfileField'),
(7, 'object', 'custom_group_field', 'ProfileManagerCustomGroupField'),
(8, 'object', 'custom_profile_type', 'ProfileManagerCustomProfileType'),
(9, 'object', 'custom_profile_field_category', 'ProfileManagerCustomFieldCategory'),
(10, 'object', 'about', ''),
(11, 'object', 'menu_builder_menu_item', ''),
(12, 'object', 'messages', ''),
(13, 'object', 'admin_notice', '');

-- --------------------------------------------------------

--
-- Structure de la table `elgg_geocode_cache`
--

CREATE TABLE IF NOT EXISTS `elgg_geocode_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(128) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `long` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location` (`location`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `elgg_groups_entity`
--

CREATE TABLE IF NOT EXISTS `elgg_groups_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `name` (`name`(50)),
  KEY `description` (`description`(50)),
  FULLTEXT KEY `name_2` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `elgg_hmac_cache`
--

CREATE TABLE IF NOT EXISTS `elgg_hmac_cache` (
  `hmac` varchar(255) NOT NULL,
  `ts` int(11) NOT NULL,
  PRIMARY KEY (`hmac`),
  KEY `ts` (`ts`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `elgg_metadata`
--

CREATE TABLE IF NOT EXISTS `elgg_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- Contenu de la table `elgg_metadata`
--

INSERT INTO `elgg_metadata` (`id`, `entity_guid`, `name_id`, `value_id`, `value_type`, `owner_guid`, `access_id`, `time_created`, `enabled`) VALUES
(110, 1, 1, 2, 'text', 38, 2, 1366725697, 'yes'),
(2, 38, 3, 4, 'text', 38, 2, 1366721921, 'yes'),
(3, 38, 5, 4, 'text', 0, 2, 1366721922, 'yes'),
(4, 38, 6, 7, 'text', 0, 2, 1366721922, 'yes'),
(90, 49, 35, 18, 'text', 49, 2, 1366724905, 'yes'),
(103, 55, 49, 4, 'integer', 49, 2, 1366725543, 'yes'),
(87, 49, 32, 4, 'text', 49, 2, 1366723377, 'yes'),
(86, 49, 3, 4, 'text', 49, 2, 1366723376, 'yes'),
(67, 47, 24, 4, 'integer', 1, 2, 1366722930, 'yes'),
(85, 47, 22, 18, 'text', 1, 2, 1366723265, 'yes'),
(84, 47, 21, 18, 'text', 1, 2, 1366723265, 'yes'),
(83, 47, 20, 26, 'text', 1, 2, 1366723265, 'yes'),
(82, 47, 19, 26, 'text', 1, 2, 1366723265, 'yes'),
(81, 47, 17, 26, 'text', 1, 2, 1366723265, 'yes'),
(80, 47, 13, 30, 'text', 1, 2, 1366723265, 'yes'),
(79, 47, 10, 25, 'text', 1, 2, 1366723264, 'yes'),
(88, 49, 33, 34, 'integer', 49, 2, 1366723377, 'yes'),
(78, 47, 8, 25, 'text', 1, 2, 1366723264, 'yes'),
(102, 55, 48, 37, 'integer', 49, 2, 1366725543, 'yes'),
(101, 55, 47, 37, 'integer', 49, 2, 1366725543, 'yes'),
(100, 55, 46, 37, 'integer', 49, 2, 1366725543, 'yes'),
(99, 55, 45, 34, 'integer', 49, 2, 1366725542, 'yes'),
(98, 55, 43, 44, 'text', 49, 2, 1366725542, 'yes'),
(104, 56, 43, 44, 'text', 38, 2, 1366725543, 'yes'),
(105, 56, 45, 34, 'integer', 38, 2, 1366725543, 'yes'),
(106, 56, 46, 37, 'integer', 38, 2, 1366725543, 'yes'),
(107, 56, 47, 37, 'integer', 38, 2, 1366725543, 'yes'),
(108, 56, 48, 37, 'integer', 38, 2, 1366725543, 'yes'),
(109, 56, 49, 4, 'integer', 38, 2, 1366725543, 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `elgg_metastrings`
--

CREATE TABLE IF NOT EXISTS `elgg_metastrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `string` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string` (`string`(50))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Contenu de la table `elgg_metastrings`
--

INSERT INTO `elgg_metastrings` (`id`, `string`) VALUES
(1, 'email'),
(2, ''),
(3, 'notification:method:email'),
(4, '1'),
(5, 'validated'),
(6, 'validated_method'),
(7, 'admin_user'),
(8, 'metadata_name'),
(9, 'Adminsitrateur'),
(10, 'metadata_label'),
(11, 'Administrateur'),
(12, 'Groupe'),
(13, 'metadata_type'),
(14, 'dropdown'),
(15, 'metadata_options'),
(16, 'Lyon;Marseille'),
(17, 'show_on_register'),
(18, 'no'),
(19, 'mandatory'),
(20, 'user_editable'),
(21, 'admin_only'),
(22, 'output_as_tags'),
(23, 'blank_available'),
(24, 'order'),
(25, 'CGP'),
(26, 'yes'),
(27, 'test'),
(28, 'category_guid'),
(29, 'custom_profile_field_category_0'),
(30, 'text'),
(31, 'Default'),
(32, 'admin_created'),
(33, 'created_by_guid'),
(34, '38'),
(35, 'webgalli_user'),
(36, 'parent_guid'),
(37, '0'),
(38, '10'),
(39, 'url'),
(40, 'http://localhost/elgg/activity'),
(41, '20'),
(42, 'http://localhost/elgg/members'),
(43, 'toId'),
(44, '49'),
(45, 'fromId'),
(46, 'readYet'),
(47, 'hiddenFrom'),
(48, 'hiddenTo'),
(49, 'msg'),
(50, 'admin_notice_id'),
(51, 'cannot_startvazco_topbar');

-- --------------------------------------------------------

--
-- Structure de la table `elgg_objects_entity`
--

CREATE TABLE IF NOT EXISTS `elgg_objects_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  FULLTEXT KEY `title` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `elgg_objects_entity`
--

INSERT INTO `elgg_objects_entity` (`guid`, `title`, `description`) VALUES
(2, 'blog', ''),
(3, 'bookmarks', ''),
(4, 'categories', ''),
(5, 'custom_index', ''),
(6, 'dashboard', ''),
(7, 'developers', ''),
(8, 'diagnostics', ''),
(9, 'elgg_social_login', ''),
(10, 'embed', ''),
(11, 'externalpages', ''),
(12, 'file', ''),
(13, 'garbagecollector', ''),
(14, 'groups', ''),
(15, 'htmlawed', ''),
(16, 'invitefriends', ''),
(17, 'likes', ''),
(18, 'logbrowser', ''),
(19, 'login_as', ''),
(20, 'logrotate', ''),
(21, 'members', ''),
(22, 'messageboard', ''),
(23, 'messages', ''),
(24, 'notifications', ''),
(25, 'oauth_api', ''),
(26, 'pages', ''),
(27, 'profile', ''),
(28, 'profile_manager', ''),
(29, 'reportedcontent', ''),
(30, 'search', ''),
(31, 'tagcloud', ''),
(32, 'thewire', ''),
(33, 'tinymce', ''),
(34, 'twitter', ''),
(35, 'twitter_api', ''),
(36, 'uservalidationbyemail', ''),
(37, 'zaudio', ''),
(39, '', ''),
(40, '', ''),
(41, '', ''),
(42, '', ''),
(43, '', ''),
(50, 'about', ''),
(47, '', ''),
(51, 'galliProUser', ''),
(52, 'menu_builder', ''),
(55, 'test msg', 'contenu msg'),
(56, 'test msg', 'contenu msg'),
(57, 'vazco_topbar', ''),
(58, 'market', ''),
(59, 'usersettings_remove', ''),
(61, 'dwm_topbar', '');

-- --------------------------------------------------------

--
-- Structure de la table `elgg_private_settings`
--

CREATE TABLE IF NOT EXISTS `elgg_private_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_guid` (`entity_guid`,`name`),
  KEY `name` (`name`),
  KEY `value` (`value`(50))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=128 ;

--
-- Contenu de la table `elgg_private_settings`
--

INSERT INTO `elgg_private_settings` (`id`, `entity_guid`, `name`, `value`) VALUES
(1, 2, 'elgg:internal:priority', '3'),
(2, 3, 'elgg:internal:priority', '4'),
(3, 4, 'elgg:internal:priority', '5'),
(4, 5, 'elgg:internal:priority', '6'),
(5, 6, 'elgg:internal:priority', '7'),
(6, 7, 'elgg:internal:priority', '1'),
(7, 8, 'elgg:internal:priority', '2'),
(8, 9, 'elgg:internal:priority', '8'),
(9, 10, 'elgg:internal:priority', '9'),
(10, 11, 'elgg:internal:priority', '10'),
(11, 12, 'elgg:internal:priority', '11'),
(12, 13, 'elgg:internal:priority', '12'),
(13, 14, 'elgg:internal:priority', '13'),
(14, 15, 'elgg:internal:priority', '14'),
(15, 16, 'elgg:internal:priority', '15'),
(16, 17, 'elgg:internal:priority', '16'),
(17, 18, 'elgg:internal:priority', '17'),
(18, 19, 'elgg:internal:priority', '18'),
(19, 20, 'elgg:internal:priority', '19'),
(20, 21, 'elgg:internal:priority', '20'),
(21, 22, 'elgg:internal:priority', '22'),
(22, 23, 'elgg:internal:priority', '21'),
(23, 24, 'elgg:internal:priority', '23'),
(24, 25, 'elgg:internal:priority', '24'),
(25, 26, 'elgg:internal:priority', '25'),
(26, 27, 'elgg:internal:priority', '26'),
(27, 28, 'elgg:internal:priority', '27'),
(28, 29, 'elgg:internal:priority', '28'),
(29, 30, 'elgg:internal:priority', '29'),
(30, 31, 'elgg:internal:priority', '30'),
(31, 32, 'elgg:internal:priority', '31'),
(32, 33, 'elgg:internal:priority', '32'),
(33, 34, 'elgg:internal:priority', '33'),
(34, 35, 'elgg:internal:priority', '34'),
(35, 36, 'elgg:internal:priority', '35'),
(36, 37, 'elgg:internal:priority', '36'),
(37, 39, 'handler', 'control_panel'),
(38, 39, 'context', 'admin'),
(39, 39, 'column', '1'),
(40, 39, 'order', '0'),
(41, 40, 'handler', 'admin_welcome'),
(42, 40, 'context', 'admin'),
(43, 40, 'order', '10'),
(44, 40, 'column', '1'),
(45, 41, 'handler', 'online_users'),
(46, 41, 'context', 'admin'),
(47, 41, 'column', '2'),
(48, 41, 'order', '0'),
(49, 42, 'handler', 'new_users'),
(50, 42, 'context', 'admin'),
(51, 42, 'order', '10'),
(52, 42, 'column', '2'),
(53, 43, 'handler', 'content_stats'),
(54, 43, 'context', 'admin'),
(55, 43, 'order', '20'),
(56, 43, 'column', '2'),
(57, 41, 'num_display', '8'),
(58, 42, 'num_display', '5'),
(59, 43, 'num_display', '8'),
(60, 28, 'profile_icon_on_register', 'yes'),
(61, 28, 'registration_terms', ''),
(62, 28, 'registration_extra_fields', 'extend'),
(63, 28, 'registration_free_text', ''),
(64, 28, 'simple_access_control', 'no'),
(65, 28, 'hide_non_editables', 'no'),
(66, 28, 'edit_profile_mode', 'list'),
(67, 28, 'profile_type_selection', 'admin'),
(68, 28, 'show_profile_type_on_profile', 'yes'),
(69, 28, 'display_categories', 'plain'),
(70, 28, 'display_system_category', 'yes'),
(71, 28, 'description_position', 'bottom'),
(72, 28, 'user_summary_control', 'no'),
(73, 28, 'enable_profile_completeness_widget', 'yes'),
(74, 28, 'enable_username_change', 'no'),
(75, 28, 'enable_site_join_river_event', 'yes'),
(76, 9, 'ha_settings_test_mode', '1'),
(77, 9, 'ha_settings_privacy_page', ''),
(78, 9, 'ha_settings_Facebook_enabled', '1'),
(79, 9, 'ha_settings_Facebook_app_id', ''),
(80, 9, 'ha_settings_Facebook_app_secret', ''),
(81, 9, 'ha_settings_Google_enabled', '0'),
(82, 9, 'ha_settings_Google_app_id', ''),
(83, 9, 'ha_settings_Google_app_secret', ''),
(84, 9, 'ha_settings_Twitter_enabled', '0'),
(85, 9, 'ha_settings_Twitter_app_key', ''),
(86, 9, 'ha_settings_Twitter_app_secret', ''),
(87, 9, 'ha_settings_Live_enabled', '0'),
(88, 9, 'ha_settings_Live_app_id', ''),
(89, 9, 'ha_settings_Live_app_secret', ''),
(90, 9, 'ha_settings_MySpace_enabled', '0'),
(91, 9, 'ha_settings_MySpace_app_key', ''),
(92, 9, 'ha_settings_MySpace_app_secret', ''),
(93, 9, 'ha_settings_Foursquare_enabled', '0'),
(94, 9, 'ha_settings_Foursquare_app_id', ''),
(95, 9, 'ha_settings_Foursquare_app_secret', ''),
(96, 9, 'ha_settings_LinkedIn_enabled', '0'),
(97, 9, 'ha_settings_LinkedIn_app_key', ''),
(98, 9, 'ha_settings_LinkedIn_app_secret', ''),
(99, 9, 'ha_settings_Yahoo_enabled', '0'),
(100, 9, 'ha_settings_AOL_enabled', '0'),
(101, 51, 'elgg:internal:priority', '37'),
(102, 51, 'featured_noinindex', '3'),
(103, 52, 'elgg:internal:priority', '38'),
(104, 52, 'menu_builder_default_imported', '1366725305'),
(122, 61, 'loginbar', 'no'),
(106, 57, 'loginbar', 'no'),
(107, 57, 'loginbox', 'yes'),
(108, 57, 'joinicontools', 'no'),
(109, 57, 'elgglogo', 'no'),
(110, 57, 'joinsettings', 'no'),
(111, 57, 'homebutton', 'no'),
(112, 57, 'linklist', ''),
(113, 7, 'display_errors', '1'),
(114, 7, 'screen_log', '1'),
(115, 7, 'show_strings', '0'),
(116, 7, 'wrap_views', '1'),
(117, 7, 'log_events', '0'),
(119, 58, 'elgg:internal:priority', '39'),
(120, 59, 'elgg:internal:priority', '40'),
(121, 61, 'elgg:internal:priority', '41'),
(123, 61, 'loginbox', 'yes'),
(124, 61, 'joinicontools', 'no'),
(125, 61, 'elgglogo', 'no'),
(126, 61, 'joinsettings', 'no'),
(127, 61, 'homebutton', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `elgg_river`
--

CREATE TABLE IF NOT EXISTS `elgg_river` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(8) NOT NULL,
  `subtype` varchar(32) NOT NULL,
  `action_type` varchar(32) NOT NULL,
  `access_id` int(11) NOT NULL,
  `view` text NOT NULL,
  `subject_guid` int(11) NOT NULL,
  `object_guid` int(11) NOT NULL,
  `annotation_id` int(11) NOT NULL,
  `posted` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `action_type` (`action_type`),
  KEY `access_id` (`access_id`),
  KEY `subject_guid` (`subject_guid`),
  KEY `object_guid` (`object_guid`),
  KEY `annotation_id` (`annotation_id`),
  KEY `posted` (`posted`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `elgg_river`
--

INSERT INTO `elgg_river` (`id`, `type`, `subtype`, `action_type`, `access_id`, `view`, `subject_guid`, `object_guid`, `annotation_id`, `posted`) VALUES
(1, 'site', '', 'join', 2, 'river/relationship/member_of_site/create', 49, 1, 0, 1366723376);

-- --------------------------------------------------------

--
-- Structure de la table `elgg_sites_entity`
--

CREATE TABLE IF NOT EXISTS `elgg_sites_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`guid`),
  UNIQUE KEY `url` (`url`),
  FULLTEXT KEY `name` (`name`,`description`,`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `elgg_sites_entity`
--

INSERT INTO `elgg_sites_entity` (`guid`, `name`, `description`, `url`) VALUES
(1, 'Dowell Market', '', 'http://localhost/elgg/');

-- --------------------------------------------------------

--
-- Structure de la table `elgg_system_log`
--

CREATE TABLE IF NOT EXISTS `elgg_system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `object_class` varchar(50) NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `object_subtype` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `performed_by_guid` int(11) NOT NULL,
  `owner_guid` int(11) NOT NULL,
  `access_id` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  `time_created` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `object_class` (`object_class`),
  KEY `object_type` (`object_type`),
  KEY `object_subtype` (`object_subtype`),
  KEY `event` (`event`),
  KEY `performed_by_guid` (`performed_by_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `river_key` (`object_type`,`object_subtype`,`event`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=549 ;

--
-- Contenu de la table `elgg_system_log`
--

INSERT INTO `elgg_system_log` (`id`, `object_id`, `object_class`, `object_type`, `object_subtype`, `event`, `performed_by_guid`, `owner_guid`, `access_id`, `enabled`, `time_created`, `ip_address`) VALUES
(1, 2, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(2, 3, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(3, 4, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(4, 5, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(5, 6, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(6, 7, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(7, 8, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(8, 9, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(9, 10, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(10, 11, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(11, 12, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(12, 13, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(13, 14, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(14, 15, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(15, 16, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(16, 17, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(17, 18, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(18, 19, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(19, 20, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(20, 21, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(21, 22, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(22, 23, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(23, 24, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(24, 25, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(25, 26, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(26, 27, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(27, 28, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(28, 29, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(29, 30, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(30, 31, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(31, 32, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(32, 33, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(33, 34, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(34, 35, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721890, '127.0.0.1'),
(35, 36, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721891, '127.0.0.1'),
(36, 37, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1366721891, '127.0.0.1'),
(37, 1, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(38, 2, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(39, 3, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(40, 4, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(41, 5, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(42, 6, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(43, 7, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(44, 8, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(45, 9, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(46, 10, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(47, 11, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(48, 12, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(49, 13, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(50, 14, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(51, 15, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(52, 16, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(53, 17, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(54, 18, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(55, 19, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721891, '127.0.0.1'),
(56, 20, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721892, '127.0.0.1'),
(57, 21, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721892, '127.0.0.1'),
(58, 22, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1366721892, '127.0.0.1'),
(59, 23, 'ElggRelationship', 'relationship', 'member_of_site', 'create', 0, 0, 2, 'yes', 1366721921, '127.0.0.1'),
(60, 38, 'ElggUser', 'user', '', 'create', 0, 0, 2, 'yes', 1366721921, '127.0.0.1'),
(61, 2, 'ElggMetadata', 'metadata', 'notification:method:email', 'create', 0, 38, 2, 'yes', 1366721921, '127.0.0.1'),
(62, 39, 'ElggWidget', 'object', 'widget', 'create', 0, 38, 0, 'yes', 1366721921, '127.0.0.1'),
(63, 40, 'ElggWidget', 'object', 'widget', 'create', 0, 38, 0, 'yes', 1366721921, '127.0.0.1'),
(64, 41, 'ElggWidget', 'object', 'widget', 'create', 0, 38, 0, 'yes', 1366721921, '127.0.0.1'),
(65, 42, 'ElggWidget', 'object', 'widget', 'create', 0, 38, 0, 'yes', 1366721921, '127.0.0.1'),
(66, 43, 'ElggWidget', 'object', 'widget', 'create', 0, 38, 0, 'yes', 1366721922, '127.0.0.1'),
(67, 38, 'ElggUser', 'user', '', 'make_admin', 0, 0, 2, 'yes', 1366721922, '127.0.0.1'),
(68, 3, 'ElggMetadata', 'metadata', 'validated', 'create', 0, 0, 2, 'yes', 1366721922, '127.0.0.1'),
(69, 4, 'ElggMetadata', 'metadata', 'validated_method', 'create', 0, 0, 2, 'yes', 1366721922, '127.0.0.1'),
(70, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366721922, '127.0.0.1'),
(71, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366721922, '127.0.0.1'),
(72, 1, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(73, 2, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(74, 3, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(75, 4, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(76, 5, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(77, 6, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(78, 7, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(79, 8, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(80, 9, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(81, 10, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(82, 11, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(83, 12, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(84, 13, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(85, 14, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(86, 15, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(87, 16, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(88, 17, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(89, 18, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(90, 19, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(91, 20, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(92, 21, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(93, 22, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366722097, '127.0.0.1'),
(94, 24, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366722129, '127.0.0.1'),
(95, 25, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366722134, '127.0.0.1'),
(96, 44, 'ProfileManagerCustomProfileType', 'object', 'custom_profile_type', 'create', 38, 1, 2, 'yes', 1366722304, '127.0.0.1'),
(97, 5, 'ElggMetadata', 'metadata', 'metadata_name', 'create', 38, 1, 2, 'yes', 1366722304, '127.0.0.1'),
(98, 6, 'ElggMetadata', 'metadata', 'metadata_label', 'create', 38, 1, 2, 'yes', 1366722304, '127.0.0.1'),
(99, 44, 'ProfileManagerCustomProfileType', 'object', 'custom_profile_type', 'update', 38, 1, 2, 'yes', 1366722304, '127.0.0.1'),
(100, 45, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'create', 38, 1, 2, 'yes', 1366722442, '127.0.0.1'),
(101, 7, 'ElggMetadata', 'metadata', 'metadata_name', 'create', 38, 1, 2, 'yes', 1366722442, '127.0.0.1'),
(102, 8, 'ElggMetadata', 'metadata', 'metadata_label', 'create', 38, 1, 2, 'yes', 1366722442, '127.0.0.1'),
(103, 9, 'ElggMetadata', 'metadata', 'metadata_type', 'create', 38, 1, 2, 'yes', 1366722442, '127.0.0.1'),
(104, 10, 'ElggMetadata', 'metadata', 'metadata_options', 'create', 38, 1, 2, 'yes', 1366722442, '127.0.0.1'),
(105, 11, 'ElggMetadata', 'metadata', 'show_on_register', 'create', 38, 1, 2, 'yes', 1366722442, '127.0.0.1'),
(106, 12, 'ElggMetadata', 'metadata', 'mandatory', 'create', 38, 1, 2, 'yes', 1366722442, '127.0.0.1'),
(107, 13, 'ElggMetadata', 'metadata', 'user_editable', 'create', 38, 1, 2, 'yes', 1366722442, '127.0.0.1'),
(108, 14, 'ElggMetadata', 'metadata', 'admin_only', 'create', 38, 1, 2, 'yes', 1366722442, '127.0.0.1'),
(109, 15, 'ElggMetadata', 'metadata', 'output_as_tags', 'create', 38, 1, 2, 'yes', 1366722442, '127.0.0.1'),
(110, 16, 'ElggMetadata', 'metadata', 'blank_available', 'create', 38, 1, 2, 'yes', 1366722442, '127.0.0.1'),
(111, 17, 'ElggMetadata', 'metadata', 'order', 'create', 38, 1, 2, 'yes', 1366722442, '127.0.0.1'),
(112, 45, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'update', 38, 1, 2, 'yes', 1366722442, '127.0.0.1'),
(113, 7, 'ElggMetadata', 'metadata', 'metadata_name', 'delete', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(114, 18, 'ElggMetadata', 'metadata', 'metadata_name', 'create', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(115, 8, 'ElggMetadata', 'metadata', 'metadata_label', 'delete', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(116, 19, 'ElggMetadata', 'metadata', 'metadata_label', 'create', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(117, 9, 'ElggMetadata', 'metadata', 'metadata_type', 'delete', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(118, 20, 'ElggMetadata', 'metadata', 'metadata_type', 'create', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(119, 10, 'ElggMetadata', 'metadata', 'metadata_options', 'delete', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(120, 21, 'ElggMetadata', 'metadata', 'metadata_options', 'create', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(121, 11, 'ElggMetadata', 'metadata', 'show_on_register', 'delete', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(122, 22, 'ElggMetadata', 'metadata', 'show_on_register', 'create', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(123, 12, 'ElggMetadata', 'metadata', 'mandatory', 'delete', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(124, 23, 'ElggMetadata', 'metadata', 'mandatory', 'create', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(125, 13, 'ElggMetadata', 'metadata', 'user_editable', 'delete', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(126, 24, 'ElggMetadata', 'metadata', 'user_editable', 'create', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(127, 14, 'ElggMetadata', 'metadata', 'admin_only', 'delete', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(128, 25, 'ElggMetadata', 'metadata', 'admin_only', 'create', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(129, 15, 'ElggMetadata', 'metadata', 'output_as_tags', 'delete', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(130, 26, 'ElggMetadata', 'metadata', 'output_as_tags', 'create', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(131, 16, 'ElggMetadata', 'metadata', 'blank_available', 'delete', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(132, 27, 'ElggMetadata', 'metadata', 'blank_available', 'create', 38, 1, 2, 'yes', 1366722456, '127.0.0.1'),
(133, 45, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'update', 38, 1, 2, 'yes', 1366722457, '127.0.0.1'),
(134, 44, 'ProfileManagerCustomProfileType', 'object', 'custom_profile_type', 'delete', 38, 1, 2, 'yes', 1366722469, '127.0.0.1'),
(135, 5, 'ElggMetadata', 'metadata', 'metadata_name', 'delete', 38, 1, 2, 'yes', 1366722469, '127.0.0.1'),
(136, 6, 'ElggMetadata', 'metadata', 'metadata_label', 'delete', 38, 1, 2, 'yes', 1366722469, '127.0.0.1'),
(137, 24, 'ElggMetadata', 'metadata', 'user_editable', 'delete', 38, 1, 2, 'yes', 1366722505, '127.0.0.1'),
(138, 28, 'ElggMetadata', 'metadata', 'user_editable', 'create', 38, 1, 2, 'yes', 1366722505, '127.0.0.1'),
(139, 45, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'update', 38, 1, 2, 'yes', 1366722505, '127.0.0.1'),
(140, 28, 'ElggMetadata', 'metadata', 'user_editable', 'delete', 38, 1, 2, 'yes', 1366722506, '127.0.0.1'),
(141, 29, 'ElggMetadata', 'metadata', 'user_editable', 'create', 38, 1, 2, 'yes', 1366722506, '127.0.0.1'),
(142, 45, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'update', 38, 1, 2, 'yes', 1366722506, '127.0.0.1'),
(143, 22, 'ElggMetadata', 'metadata', 'show_on_register', 'delete', 38, 1, 2, 'yes', 1366722508, '127.0.0.1'),
(144, 30, 'ElggMetadata', 'metadata', 'show_on_register', 'create', 38, 1, 2, 'yes', 1366722508, '127.0.0.1'),
(145, 45, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'update', 38, 1, 2, 'yes', 1366722508, '127.0.0.1'),
(146, 23, 'ElggMetadata', 'metadata', 'mandatory', 'delete', 38, 1, 2, 'yes', 1366722534, '127.0.0.1'),
(147, 31, 'ElggMetadata', 'metadata', 'mandatory', 'create', 38, 1, 2, 'yes', 1366722534, '127.0.0.1'),
(148, 45, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'update', 38, 1, 2, 'yes', 1366722534, '127.0.0.1'),
(149, 46, 'ProfileManagerCustomFieldCategory', 'object', 'custom_profile_field_category', 'create', 38, 1, 2, 'yes', 1366722594, '127.0.0.1'),
(150, 32, 'ElggMetadata', 'metadata', 'metadata_name', 'create', 38, 1, 2, 'yes', 1366722594, '127.0.0.1'),
(151, 33, 'ElggMetadata', 'metadata', 'metadata_label', 'create', 38, 1, 2, 'yes', 1366722594, '127.0.0.1'),
(152, 34, 'ElggMetadata', 'metadata', 'order', 'create', 38, 1, 2, 'yes', 1366722594, '127.0.0.1'),
(153, 46, 'ProfileManagerCustomFieldCategory', 'object', 'custom_profile_field_category', 'update', 38, 1, 2, 'yes', 1366722594, '127.0.0.1'),
(154, 46, 'ProfileManagerCustomFieldCategory', 'object', 'custom_profile_field_category', 'delete', 38, 1, 2, 'yes', 1366722616, '127.0.0.1'),
(155, 32, 'ElggMetadata', 'metadata', 'metadata_name', 'delete', 38, 1, 2, 'yes', 1366722616, '127.0.0.1'),
(156, 33, 'ElggMetadata', 'metadata', 'metadata_label', 'delete', 38, 1, 2, 'yes', 1366722616, '127.0.0.1'),
(157, 34, 'ElggMetadata', 'metadata', 'order', 'delete', 38, 1, 2, 'yes', 1366722616, '127.0.0.1'),
(158, 35, 'ElggMetadata', 'metadata', 'category_guid', 'create', 38, 1, 2, 'yes', 1366722622, '127.0.0.1'),
(159, 45, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'update', 38, 1, 2, 'yes', 1366722622, '127.0.0.1'),
(160, 18, 'ElggMetadata', 'metadata', 'metadata_name', 'delete', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(161, 36, 'ElggMetadata', 'metadata', 'metadata_name', 'create', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(162, 19, 'ElggMetadata', 'metadata', 'metadata_label', 'delete', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(163, 37, 'ElggMetadata', 'metadata', 'metadata_label', 'create', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(164, 20, 'ElggMetadata', 'metadata', 'metadata_type', 'delete', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(165, 38, 'ElggMetadata', 'metadata', 'metadata_type', 'create', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(166, 21, 'ElggMetadata', 'metadata', 'metadata_options', 'delete', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(167, 39, 'ElggMetadata', 'metadata', 'metadata_options', 'create', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(168, 30, 'ElggMetadata', 'metadata', 'show_on_register', 'delete', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(169, 40, 'ElggMetadata', 'metadata', 'show_on_register', 'create', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(170, 31, 'ElggMetadata', 'metadata', 'mandatory', 'delete', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(171, 41, 'ElggMetadata', 'metadata', 'mandatory', 'create', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(172, 29, 'ElggMetadata', 'metadata', 'user_editable', 'delete', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(173, 42, 'ElggMetadata', 'metadata', 'user_editable', 'create', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(174, 25, 'ElggMetadata', 'metadata', 'admin_only', 'delete', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(175, 43, 'ElggMetadata', 'metadata', 'admin_only', 'create', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(176, 26, 'ElggMetadata', 'metadata', 'output_as_tags', 'delete', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(177, 44, 'ElggMetadata', 'metadata', 'output_as_tags', 'create', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(178, 27, 'ElggMetadata', 'metadata', 'blank_available', 'delete', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(179, 45, 'ElggMetadata', 'metadata', 'blank_available', 'create', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(180, 45, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'update', 38, 1, 2, 'yes', 1366722677, '127.0.0.1'),
(181, 35, 'ElggMetadata', 'metadata', 'category_guid', 'delete', 38, 1, 2, 'yes', 1366722794, '127.0.0.1'),
(182, 46, 'ElggMetadata', 'metadata', 'category_guid', 'create', 38, 1, 2, 'yes', 1366722795, '127.0.0.1'),
(183, 45, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'update', 38, 1, 2, 'yes', 1366722795, '127.0.0.1'),
(184, 46, 'ElggMetadata', 'metadata', 'category_guid', 'delete', 38, 1, 2, 'yes', 1366722801, '127.0.0.1'),
(185, 47, 'ElggMetadata', 'metadata', 'category_guid', 'create', 38, 1, 2, 'yes', 1366722801, '127.0.0.1'),
(186, 45, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'update', 38, 1, 2, 'yes', 1366722801, '127.0.0.1'),
(187, 36, 'ElggMetadata', 'metadata', 'metadata_name', 'delete', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(188, 48, 'ElggMetadata', 'metadata', 'metadata_name', 'create', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(189, 37, 'ElggMetadata', 'metadata', 'metadata_label', 'delete', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(190, 49, 'ElggMetadata', 'metadata', 'metadata_label', 'create', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(191, 38, 'ElggMetadata', 'metadata', 'metadata_type', 'delete', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(192, 50, 'ElggMetadata', 'metadata', 'metadata_type', 'create', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(193, 39, 'ElggMetadata', 'metadata', 'metadata_options', 'delete', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(194, 51, 'ElggMetadata', 'metadata', 'metadata_options', 'create', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(195, 40, 'ElggMetadata', 'metadata', 'show_on_register', 'delete', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(196, 52, 'ElggMetadata', 'metadata', 'show_on_register', 'create', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(197, 41, 'ElggMetadata', 'metadata', 'mandatory', 'delete', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(198, 53, 'ElggMetadata', 'metadata', 'mandatory', 'create', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(199, 42, 'ElggMetadata', 'metadata', 'user_editable', 'delete', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(200, 54, 'ElggMetadata', 'metadata', 'user_editable', 'create', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(201, 43, 'ElggMetadata', 'metadata', 'admin_only', 'delete', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(202, 55, 'ElggMetadata', 'metadata', 'admin_only', 'create', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(203, 44, 'ElggMetadata', 'metadata', 'output_as_tags', 'delete', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(204, 56, 'ElggMetadata', 'metadata', 'output_as_tags', 'create', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(205, 45, 'ElggMetadata', 'metadata', 'blank_available', 'delete', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(206, 57, 'ElggMetadata', 'metadata', 'blank_available', 'create', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(207, 45, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'update', 38, 1, 2, 'yes', 1366722828, '127.0.0.1'),
(208, 47, 'ElggMetadata', 'metadata', 'category_guid', 'delete', 38, 1, 2, 'yes', 1366722861, '127.0.0.1'),
(209, 58, 'ElggMetadata', 'metadata', 'category_guid', 'create', 38, 1, 2, 'yes', 1366722861, '127.0.0.1'),
(210, 45, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'update', 38, 1, 2, 'yes', 1366722861, '127.0.0.1'),
(211, 45, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'delete', 38, 1, 2, 'yes', 1366722909, '127.0.0.1'),
(212, 17, 'ElggMetadata', 'metadata', 'order', 'delete', 38, 1, 2, 'yes', 1366722909, '127.0.0.1'),
(213, 48, 'ElggMetadata', 'metadata', 'metadata_name', 'delete', 38, 1, 2, 'yes', 1366722909, '127.0.0.1'),
(214, 49, 'ElggMetadata', 'metadata', 'metadata_label', 'delete', 38, 1, 2, 'yes', 1366722909, '127.0.0.1'),
(215, 50, 'ElggMetadata', 'metadata', 'metadata_type', 'delete', 38, 1, 2, 'yes', 1366722909, '127.0.0.1'),
(216, 51, 'ElggMetadata', 'metadata', 'metadata_options', 'delete', 38, 1, 2, 'yes', 1366722909, '127.0.0.1'),
(217, 52, 'ElggMetadata', 'metadata', 'show_on_register', 'delete', 38, 1, 2, 'yes', 1366722909, '127.0.0.1'),
(218, 53, 'ElggMetadata', 'metadata', 'mandatory', 'delete', 38, 1, 2, 'yes', 1366722909, '127.0.0.1'),
(219, 54, 'ElggMetadata', 'metadata', 'user_editable', 'delete', 38, 1, 2, 'yes', 1366722909, '127.0.0.1'),
(220, 55, 'ElggMetadata', 'metadata', 'admin_only', 'delete', 38, 1, 2, 'yes', 1366722909, '127.0.0.1'),
(221, 56, 'ElggMetadata', 'metadata', 'output_as_tags', 'delete', 38, 1, 2, 'yes', 1366722909, '127.0.0.1'),
(222, 57, 'ElggMetadata', 'metadata', 'blank_available', 'delete', 38, 1, 2, 'yes', 1366722909, '127.0.0.1'),
(223, 58, 'ElggMetadata', 'metadata', 'category_guid', 'delete', 38, 1, 2, 'yes', 1366722909, '127.0.0.1'),
(224, 47, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'create', 38, 1, 2, 'yes', 1366722930, '127.0.0.1'),
(225, 59, 'ElggMetadata', 'metadata', 'metadata_name', 'create', 38, 1, 2, 'yes', 1366722930, '127.0.0.1'),
(226, 60, 'ElggMetadata', 'metadata', 'metadata_label', 'create', 38, 1, 2, 'yes', 1366722930, '127.0.0.1'),
(227, 61, 'ElggMetadata', 'metadata', 'metadata_type', 'create', 38, 1, 2, 'yes', 1366722930, '127.0.0.1'),
(228, 62, 'ElggMetadata', 'metadata', 'show_on_register', 'create', 38, 1, 2, 'yes', 1366722930, '127.0.0.1'),
(229, 63, 'ElggMetadata', 'metadata', 'mandatory', 'create', 38, 1, 2, 'yes', 1366722930, '127.0.0.1'),
(230, 64, 'ElggMetadata', 'metadata', 'user_editable', 'create', 38, 1, 2, 'yes', 1366722930, '127.0.0.1'),
(231, 65, 'ElggMetadata', 'metadata', 'admin_only', 'create', 38, 1, 2, 'yes', 1366722930, '127.0.0.1'),
(232, 66, 'ElggMetadata', 'metadata', 'output_as_tags', 'create', 38, 1, 2, 'yes', 1366722930, '127.0.0.1'),
(233, 67, 'ElggMetadata', 'metadata', 'order', 'create', 38, 1, 2, 'yes', 1366722930, '127.0.0.1'),
(234, 47, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'update', 38, 1, 2, 'yes', 1366722930, '127.0.0.1'),
(235, 62, 'ElggMetadata', 'metadata', 'show_on_register', 'delete', 38, 1, 2, 'yes', 1366722954, '127.0.0.1'),
(236, 68, 'ElggMetadata', 'metadata', 'show_on_register', 'create', 38, 1, 2, 'yes', 1366722954, '127.0.0.1'),
(237, 47, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'update', 38, 1, 2, 'yes', 1366722954, '127.0.0.1'),
(238, 48, 'ProfileManagerCustomProfileType', 'object', 'custom_profile_type', 'create', 38, 1, 2, 'yes', 1366723090, '127.0.0.1'),
(239, 69, 'ElggMetadata', 'metadata', 'metadata_name', 'create', 38, 1, 2, 'yes', 1366723090, '127.0.0.1'),
(240, 48, 'ProfileManagerCustomProfileType', 'object', 'custom_profile_type', 'update', 38, 1, 2, 'yes', 1366723090, '127.0.0.1'),
(241, 48, 'ProfileManagerCustomProfileType', 'object', 'custom_profile_type', 'delete', 38, 1, 2, 'yes', 1366723190, '127.0.0.1'),
(242, 69, 'ElggMetadata', 'metadata', 'metadata_name', 'delete', 38, 1, 2, 'yes', 1366723190, '127.0.0.1'),
(243, 59, 'ElggMetadata', 'metadata', 'metadata_name', 'delete', 38, 1, 2, 'yes', 1366723214, '127.0.0.1'),
(244, 70, 'ElggMetadata', 'metadata', 'metadata_name', 'create', 38, 1, 2, 'yes', 1366723214, '127.0.0.1'),
(245, 60, 'ElggMetadata', 'metadata', 'metadata_label', 'delete', 38, 1, 2, 'yes', 1366723214, '127.0.0.1'),
(246, 71, 'ElggMetadata', 'metadata', 'metadata_label', 'create', 38, 1, 2, 'yes', 1366723214, '127.0.0.1'),
(247, 61, 'ElggMetadata', 'metadata', 'metadata_type', 'delete', 38, 1, 2, 'yes', 1366723214, '127.0.0.1'),
(248, 72, 'ElggMetadata', 'metadata', 'metadata_type', 'create', 38, 1, 2, 'yes', 1366723214, '127.0.0.1'),
(249, 68, 'ElggMetadata', 'metadata', 'show_on_register', 'delete', 38, 1, 2, 'yes', 1366723214, '127.0.0.1'),
(250, 73, 'ElggMetadata', 'metadata', 'show_on_register', 'create', 38, 1, 2, 'yes', 1366723214, '127.0.0.1'),
(251, 63, 'ElggMetadata', 'metadata', 'mandatory', 'delete', 38, 1, 2, 'yes', 1366723214, '127.0.0.1'),
(252, 74, 'ElggMetadata', 'metadata', 'mandatory', 'create', 38, 1, 2, 'yes', 1366723214, '127.0.0.1'),
(253, 64, 'ElggMetadata', 'metadata', 'user_editable', 'delete', 38, 1, 2, 'yes', 1366723214, '127.0.0.1'),
(254, 75, 'ElggMetadata', 'metadata', 'user_editable', 'create', 38, 1, 2, 'yes', 1366723214, '127.0.0.1'),
(255, 65, 'ElggMetadata', 'metadata', 'admin_only', 'delete', 38, 1, 2, 'yes', 1366723214, '127.0.0.1'),
(256, 76, 'ElggMetadata', 'metadata', 'admin_only', 'create', 38, 1, 2, 'yes', 1366723214, '127.0.0.1'),
(257, 66, 'ElggMetadata', 'metadata', 'output_as_tags', 'delete', 38, 1, 2, 'yes', 1366723214, '127.0.0.1'),
(258, 77, 'ElggMetadata', 'metadata', 'output_as_tags', 'create', 38, 1, 2, 'yes', 1366723214, '127.0.0.1'),
(259, 47, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'update', 38, 1, 2, 'yes', 1366723214, '127.0.0.1'),
(260, 70, 'ElggMetadata', 'metadata', 'metadata_name', 'delete', 38, 1, 2, 'yes', 1366723264, '127.0.0.1'),
(261, 78, 'ElggMetadata', 'metadata', 'metadata_name', 'create', 38, 1, 2, 'yes', 1366723264, '127.0.0.1'),
(262, 71, 'ElggMetadata', 'metadata', 'metadata_label', 'delete', 38, 1, 2, 'yes', 1366723264, '127.0.0.1'),
(263, 79, 'ElggMetadata', 'metadata', 'metadata_label', 'create', 38, 1, 2, 'yes', 1366723264, '127.0.0.1'),
(264, 72, 'ElggMetadata', 'metadata', 'metadata_type', 'delete', 38, 1, 2, 'yes', 1366723265, '127.0.0.1'),
(265, 80, 'ElggMetadata', 'metadata', 'metadata_type', 'create', 38, 1, 2, 'yes', 1366723265, '127.0.0.1'),
(266, 73, 'ElggMetadata', 'metadata', 'show_on_register', 'delete', 38, 1, 2, 'yes', 1366723265, '127.0.0.1'),
(267, 81, 'ElggMetadata', 'metadata', 'show_on_register', 'create', 38, 1, 2, 'yes', 1366723265, '127.0.0.1'),
(268, 74, 'ElggMetadata', 'metadata', 'mandatory', 'delete', 38, 1, 2, 'yes', 1366723265, '127.0.0.1'),
(269, 82, 'ElggMetadata', 'metadata', 'mandatory', 'create', 38, 1, 2, 'yes', 1366723265, '127.0.0.1'),
(270, 75, 'ElggMetadata', 'metadata', 'user_editable', 'delete', 38, 1, 2, 'yes', 1366723265, '127.0.0.1'),
(271, 83, 'ElggMetadata', 'metadata', 'user_editable', 'create', 38, 1, 2, 'yes', 1366723265, '127.0.0.1'),
(272, 76, 'ElggMetadata', 'metadata', 'admin_only', 'delete', 38, 1, 2, 'yes', 1366723265, '127.0.0.1'),
(273, 84, 'ElggMetadata', 'metadata', 'admin_only', 'create', 38, 1, 2, 'yes', 1366723265, '127.0.0.1'),
(274, 77, 'ElggMetadata', 'metadata', 'output_as_tags', 'delete', 38, 1, 2, 'yes', 1366723265, '127.0.0.1'),
(275, 85, 'ElggMetadata', 'metadata', 'output_as_tags', 'create', 38, 1, 2, 'yes', 1366723265, '127.0.0.1'),
(276, 47, 'ProfileManagerCustomProfileField', 'object', 'custom_profile_field', 'update', 38, 1, 2, 'yes', 1366723265, '127.0.0.1'),
(277, 26, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366723284, '127.0.0.1'),
(278, 27, 'ElggRelationship', 'relationship', 'member_of_site', 'create', 38, 0, 2, 'yes', 1366723376, '127.0.0.1'),
(279, 49, 'ElggUser', 'user', '', 'create', 38, 0, 2, 'yes', 1366723376, '127.0.0.1'),
(280, 86, 'ElggMetadata', 'metadata', 'notification:method:email', 'create', 38, 49, 2, 'yes', 1366723376, '127.0.0.1'),
(281, 49, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366723377, '127.0.0.1'),
(282, 87, 'ElggMetadata', 'metadata', 'admin_created', 'create', 38, 49, 2, 'yes', 1366723377, '127.0.0.1'),
(283, 88, 'ElggMetadata', 'metadata', 'created_by_guid', 'create', 38, 49, 2, 'yes', 1366723377, '127.0.0.1'),
(284, 49, 'ElggUser', 'user', '', 'update', 49, 0, 2, 'yes', 1366723408, '127.0.0.1'),
(285, 49, 'ElggUser', 'user', '', 'login', 49, 0, 2, 'yes', 1366723408, '127.0.0.1'),
(286, 49, 'ElggUser', 'user', '', 'update', 49, 0, 2, 'yes', 1366723447, '127.0.0.1'),
(287, 49, 'ElggUser', 'user', '', 'profileupdate', 49, 0, 2, 'yes', 1366723447, '127.0.0.1'),
(288, 49, 'ElggUser', 'user', '', 'update', 49, 0, 2, 'yes', 1366723456, '127.0.0.1'),
(289, 49, 'ElggUser', 'user', '', 'profileupdate', 49, 0, 2, 'yes', 1366723456, '127.0.0.1'),
(290, 49, 'ElggUser', 'user', '', 'logout', 49, 0, 2, 'yes', 1366723477, '127.0.0.1'),
(291, 49, 'ElggUser', 'user', '', 'update', 49, 0, 2, 'yes', 1366723477, '127.0.0.1'),
(292, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366723479, '127.0.0.1'),
(293, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366723479, '127.0.0.1'),
(294, 1, 'ElggSite', 'site', '', 'update', 38, 0, 2, 'yes', 1366723581, '127.0.0.1'),
(295, 28, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366723612, '127.0.0.1'),
(296, 29, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366723640, '127.0.0.1'),
(297, 30, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366723902, '127.0.0.1'),
(298, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366724014, '127.0.0.1'),
(299, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724014, '127.0.0.1'),
(300, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724032, '127.0.0.1'),
(301, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366724032, '127.0.0.1'),
(302, 1, 'ElggSite', 'site', '', 'update', 38, 0, 2, 'yes', 1366724052, '127.0.0.1'),
(303, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366724054, '127.0.0.1'),
(304, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724054, '127.0.0.1'),
(305, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724059, '127.0.0.1'),
(306, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366724059, '127.0.0.1'),
(307, 1, 'ElggSite', 'site', '', 'update', 38, 0, 2, 'yes', 1366724071, '127.0.0.1'),
(308, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366724074, '127.0.0.1'),
(309, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724074, '127.0.0.1'),
(310, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724082, '127.0.0.1'),
(311, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366724082, '127.0.0.1'),
(312, 1, 'ElggSite', 'site', '', 'update', 38, 0, 2, 'yes', 1366724101, '127.0.0.1'),
(313, 1, 'ElggSite', 'site', '', 'update', 38, 0, 2, 'yes', 1366724129, '127.0.0.1'),
(314, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366724145, '127.0.0.1'),
(315, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724145, '127.0.0.1'),
(316, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724152, '127.0.0.1'),
(317, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366724152, '127.0.0.1'),
(318, 1, 'ElggSite', 'site', '', 'update', 38, 0, 2, 'yes', 1366724175, '127.0.0.1'),
(319, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366724178, '127.0.0.1'),
(320, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724178, '127.0.0.1'),
(321, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724188, '127.0.0.1'),
(322, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366724188, '127.0.0.1'),
(323, 1, 'ElggSite', 'site', '', 'update', 38, 0, 2, 'yes', 1366724199, '127.0.0.1'),
(324, 31, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366724262, '127.0.0.1'),
(325, 32, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366724273, '127.0.0.1'),
(326, 50, 'ElggObject', 'object', 'about', 'create', 38, 38, 2, 'yes', 1366724302, '127.0.0.1'),
(327, 1, 'ElggSite', 'site', '', 'update', 38, 0, 2, 'yes', 1366724332, '127.0.0.1'),
(328, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366724342, '127.0.0.1'),
(329, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724342, '127.0.0.1'),
(330, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724381, '127.0.0.1'),
(331, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366724381, '127.0.0.1'),
(332, 31, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366724399, '127.0.0.1'),
(333, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366724407, '127.0.0.1'),
(334, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724407, '127.0.0.1'),
(335, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724461, '127.0.0.1'),
(336, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366724461, '127.0.0.1'),
(337, 1, 'ElggSite', 'site', '', 'update', 38, 0, 2, 'yes', 1366724474, '127.0.0.1'),
(338, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366724481, '127.0.0.1'),
(339, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724481, '127.0.0.1'),
(340, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724493, '127.0.0.1'),
(341, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366724493, '127.0.0.1'),
(342, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366724500, '127.0.0.1'),
(343, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724500, '127.0.0.1'),
(344, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724549, '127.0.0.1'),
(345, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366724549, '127.0.0.1'),
(346, 33, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366724567, '127.0.0.1'),
(347, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366724572, '127.0.0.1'),
(348, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724572, '127.0.0.1'),
(349, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724580, '127.0.0.1'),
(350, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366724580, '127.0.0.1'),
(351, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366724583, '127.0.0.1'),
(352, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724583, '127.0.0.1'),
(353, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366724689, '127.0.0.1'),
(354, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366724689, '127.0.0.1'),
(355, 51, 'ElggPlugin', 'object', 'plugin', 'create', 38, 1, 2, 'yes', 1366724782, '127.0.0.1'),
(356, 34, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366724802, '127.0.0.1'),
(357, 89, 'ElggMetadata', 'metadata', 'webgalli_user', 'create', 38, 49, 2, 'yes', 1366724828, '127.0.0.1'),
(358, 89, 'ElggMetadata', 'metadata', 'webgalli_user', 'delete', 38, 49, 2, 'yes', 1366724905, '127.0.0.1'),
(359, 90, 'ElggMetadata', 'metadata', 'webgalli_user', 'create', 38, 49, 2, 'yes', 1366724905, '127.0.0.1'),
(360, 52, 'ElggPlugin', 'object', 'plugin', 'create', 38, 1, 2, 'yes', 1366725268, '127.0.0.1'),
(361, 35, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366725284, '127.0.0.1'),
(362, 91, 'ElggMetadata', 'metadata', 'parent_guid', 'create', 38, 1, 2, 'yes', 1366725305, '127.0.0.1'),
(363, 92, 'ElggMetadata', 'metadata', 'order', 'create', 38, 1, 2, 'yes', 1366725305, '127.0.0.1'),
(364, 93, 'ElggMetadata', 'metadata', 'url', 'create', 38, 1, 2, 'yes', 1366725305, '127.0.0.1'),
(365, 53, 'ElggObject', 'object', 'menu_builder_menu_item', 'create', 38, 1, 2, 'yes', 1366725305, '127.0.0.1'),
(366, 94, 'ElggMetadata', 'metadata', 'parent_guid', 'create', 38, 1, 2, 'yes', 1366725305, '127.0.0.1'),
(367, 95, 'ElggMetadata', 'metadata', 'order', 'create', 38, 1, 2, 'yes', 1366725305, '127.0.0.1'),
(368, 96, 'ElggMetadata', 'metadata', 'url', 'create', 38, 1, 2, 'yes', 1366725305, '127.0.0.1'),
(369, 54, 'ElggObject', 'object', 'menu_builder_menu_item', 'create', 38, 1, 2, 'yes', 1366725305, '127.0.0.1'),
(370, 53, 'ElggObject', 'object', 'menu_builder_menu_item', 'delete', 38, 1, 2, 'yes', 1366725323, '127.0.0.1'),
(371, 91, 'ElggMetadata', 'metadata', 'parent_guid', 'delete', 38, 1, 2, 'yes', 1366725324, '127.0.0.1'),
(372, 92, 'ElggMetadata', 'metadata', 'order', 'delete', 38, 1, 2, 'yes', 1366725324, '127.0.0.1'),
(373, 93, 'ElggMetadata', 'metadata', 'url', 'delete', 38, 1, 2, 'yes', 1366725324, '127.0.0.1'),
(374, 96, 'ElggMetadata', 'metadata', 'url', 'delete', 38, 1, 2, 'yes', 1366725344, '127.0.0.1'),
(375, 97, 'ElggMetadata', 'metadata', 'url', 'create', 38, 1, 2, 'yes', 1366725344, '127.0.0.1'),
(376, 54, 'ElggObject', 'object', 'menu_builder_menu_item', 'update', 38, 1, 0, 'yes', 1366725344, '127.0.0.1'),
(377, 54, 'ElggObject', 'object', 'menu_builder_menu_item', 'delete', 38, 1, 0, 'yes', 1366725354, '127.0.0.1'),
(378, 94, 'ElggMetadata', 'metadata', 'parent_guid', 'delete', 38, 1, 0, 'yes', 1366725354, '127.0.0.1'),
(379, 95, 'ElggMetadata', 'metadata', 'order', 'delete', 38, 1, 0, 'yes', 1366725354, '127.0.0.1'),
(380, 97, 'ElggMetadata', 'metadata', 'url', 'delete', 38, 1, 0, 'yes', 1366725354, '127.0.0.1'),
(381, 49, 'ElggUser', 'user', '', 'update', 49, 0, 2, 'yes', 1366725394, '127.0.0.1'),
(382, 49, 'ElggUser', 'user', '', 'login', 49, 0, 2, 'yes', 1366725394, '127.0.0.1'),
(383, 49, 'ElggUser', 'user', '', 'logout', 49, 0, 2, 'yes', 1366725404, '127.0.0.1'),
(384, 49, 'ElggUser', 'user', '', 'update', 49, 0, 2, 'yes', 1366725404, '127.0.0.1'),
(385, 49, 'ElggUser', 'user', '', 'update', 49, 0, 2, 'yes', 1366725410, '127.0.0.1'),
(386, 49, 'ElggUser', 'user', '', 'login', 49, 0, 2, 'yes', 1366725410, '127.0.0.1'),
(387, 49, 'ElggUser', 'user', '', 'logout', 49, 0, 2, 'yes', 1366725479, '127.0.0.1'),
(388, 49, 'ElggUser', 'user', '', 'update', 49, 0, 2, 'yes', 1366725479, '127.0.0.1'),
(389, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366725481, '127.0.0.1'),
(390, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366725481, '127.0.0.1'),
(391, 98, 'ElggMetadata', 'metadata', 'toId', 'create', 38, 49, 2, 'yes', 1366725542, '127.0.0.1'),
(392, 99, 'ElggMetadata', 'metadata', 'fromId', 'create', 38, 49, 2, 'yes', 1366725543, '127.0.0.1'),
(393, 100, 'ElggMetadata', 'metadata', 'readYet', 'create', 38, 49, 2, 'yes', 1366725543, '127.0.0.1'),
(394, 101, 'ElggMetadata', 'metadata', 'hiddenFrom', 'create', 38, 49, 2, 'yes', 1366725543, '127.0.0.1'),
(395, 102, 'ElggMetadata', 'metadata', 'hiddenTo', 'create', 38, 49, 2, 'yes', 1366725543, '127.0.0.1'),
(396, 103, 'ElggMetadata', 'metadata', 'msg', 'create', 38, 49, 2, 'yes', 1366725543, '127.0.0.1'),
(397, 55, 'ElggObject', 'object', 'messages', 'create', 38, 49, 2, 'yes', 1366725543, '127.0.0.1'),
(398, 104, 'ElggMetadata', 'metadata', 'toId', 'create', 38, 38, 2, 'yes', 1366725543, '127.0.0.1'),
(399, 105, 'ElggMetadata', 'metadata', 'fromId', 'create', 38, 38, 2, 'yes', 1366725543, '127.0.0.1'),
(400, 106, 'ElggMetadata', 'metadata', 'readYet', 'create', 38, 38, 2, 'yes', 1366725543, '127.0.0.1'),
(401, 107, 'ElggMetadata', 'metadata', 'hiddenFrom', 'create', 38, 38, 2, 'yes', 1366725543, '127.0.0.1'),
(402, 108, 'ElggMetadata', 'metadata', 'hiddenTo', 'create', 38, 38, 2, 'yes', 1366725543, '127.0.0.1'),
(403, 109, 'ElggMetadata', 'metadata', 'msg', 'create', 38, 38, 2, 'yes', 1366725543, '127.0.0.1'),
(404, 56, 'ElggObject', 'object', 'messages', 'create', 38, 38, 2, 'yes', 1366725543, '127.0.0.1'),
(405, 55, 'ElggObject', 'object', 'messages', 'update', 38, 49, 2, 'yes', 1366725543, '127.0.0.1'),
(406, 56, 'ElggObject', 'object', 'messages', 'update', 38, 38, 2, 'yes', 1366725543, '127.0.0.1'),
(407, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366725552, '127.0.0.1'),
(408, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366725552, '127.0.0.1'),
(409, 49, 'ElggUser', 'user', '', 'update', 49, 0, 2, 'yes', 1366725558, '127.0.0.1'),
(410, 49, 'ElggUser', 'user', '', 'login', 49, 0, 2, 'yes', 1366725558, '127.0.0.1'),
(411, 49, 'ElggUser', 'user', '', 'logout', 49, 0, 2, 'yes', 1366725578, '127.0.0.1'),
(412, 49, 'ElggUser', 'user', '', 'update', 49, 0, 2, 'yes', 1366725578, '127.0.0.1'),
(413, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366725581, '127.0.0.1'),
(414, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366725581, '127.0.0.1'),
(415, 1, 'ElggMetadata', 'metadata', 'email', 'delete', 38, 0, 2, 'yes', 1366725697, '127.0.0.1'),
(416, 110, 'ElggMetadata', 'metadata', 'email', 'create', 38, 38, 2, 'yes', 1366725697, '127.0.0.1'),
(417, 1, 'ElggSite', 'site', '', 'update', 38, 0, 2, 'yes', 1366725697, '127.0.0.1'),
(418, 57, 'ElggPlugin', 'object', 'plugin', 'create', 38, 1, 2, 'yes', 1366725745, '127.0.0.1'),
(419, 36, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366725771, '127.0.0.1'),
(420, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366725835, '127.0.0.1'),
(421, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366725835, '127.0.0.1'),
(422, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366725842, '127.0.0.1'),
(423, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366725842, '127.0.0.1'),
(424, 36, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366725872, '127.0.0.1'),
(425, 37, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366727087, '127.0.0.1'),
(426, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366727126, '127.0.0.1'),
(427, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366727126, '127.0.0.1'),
(428, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366727129, '127.0.0.1'),
(429, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366727129, '127.0.0.1'),
(430, 37, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366727144, '127.0.0.1'),
(431, 38, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366727147, '127.0.0.1'),
(432, 39, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366727210, '127.0.0.1'),
(433, 40, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366727217, '127.0.0.1'),
(434, 38, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366727535, '127.0.0.1'),
(435, 41, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366727549, '127.0.0.1'),
(436, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366727933, '127.0.0.1'),
(437, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366727933, '127.0.0.1'),
(438, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366728072, '127.0.0.1'),
(439, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366728072, '127.0.0.1'),
(440, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366728078, '127.0.0.1'),
(441, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366728078, '127.0.0.1'),
(442, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366728083, '127.0.0.1'),
(443, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366728083, '127.0.0.1'),
(444, 41, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366728138, '127.0.0.1'),
(445, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366969476, '127.0.0.1'),
(446, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366969476, '127.0.0.1'),
(447, 40, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366969500, '127.0.0.1'),
(448, 39, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366969506, '127.0.0.1'),
(449, 42, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366969928, '127.0.0.1'),
(450, 42, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366970008, '127.0.0.1'),
(451, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'yes', 1366970132, '127.0.0.1'),
(452, 57, 'ElggPlugin', 'object', 'plugin', 'enable', 38, 1, 2, 'no', 1366970153, '127.0.0.1'),
(453, 43, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366970158, '127.0.0.1'),
(454, 43, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366970494, '127.0.0.1'),
(455, 44, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366970625, '127.0.0.1'),
(456, 58, 'ElggPlugin', 'object', 'plugin', 'create', 38, 1, 2, 'yes', 1366971163, '127.0.0.1'),
(457, 45, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366971168, '127.0.0.1'),
(458, 44, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366971226, '127.0.0.1'),
(459, 46, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366971259, '127.0.0.1'),
(460, 47, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366978662, '127.0.0.1'),
(461, 48, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366978695, '127.0.0.1'),
(462, 33, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366978907, '127.0.0.1'),
(463, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366980058, '127.0.0.1'),
(464, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366980058, '127.0.0.1'),
(465, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366980061, '127.0.0.1'),
(466, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366980061, '127.0.0.1'),
(467, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366980880, '127.0.0.1'),
(468, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366980880, '127.0.0.1'),
(469, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366980886, '127.0.0.1'),
(470, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366980886, '127.0.0.1'),
(471, 46, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366980899, '127.0.0.1'),
(472, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366980904, '127.0.0.1'),
(473, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366980904, '127.0.0.1'),
(474, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366980909, '127.0.0.1'),
(475, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366980909, '127.0.0.1'),
(476, 49, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366980931, '127.0.0.1'),
(477, 59, 'ElggPlugin', 'object', 'plugin', 'create', 38, 1, 2, 'yes', 1366985193, '127.0.0.1'),
(478, 50, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366985202, '127.0.0.1'),
(479, 49, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366985208, '127.0.0.1'),
(480, 51, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366985626, '127.0.0.1'),
(481, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366986096, '127.0.0.1'),
(482, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366986096, '127.0.0.1'),
(483, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366986100, '127.0.0.1'),
(484, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366986100, '127.0.0.1'),
(485, 51, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366986639, '127.0.0.1'),
(486, 50, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366986647, '127.0.0.1'),
(487, 52, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366987596, '127.0.0.1'),
(488, 52, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366988707, '127.0.0.1'),
(489, 111, 'ElggMetadata', 'metadata', 'admin_notice_id', 'create', 38, 38, 0, 'yes', 1366988707, '127.0.0.1');
INSERT INTO `elgg_system_log` (`id`, `object_id`, `object_class`, `object_type`, `object_subtype`, `event`, `performed_by_guid`, `owner_guid`, `access_id`, `enabled`, `time_created`, `ip_address`) VALUES
(490, 60, 'ElggObject', 'object', 'admin_notice', 'create', 38, 38, 0, 'yes', 1366988707, '127.0.0.1'),
(491, 61, 'ElggPlugin', 'object', 'plugin', 'create', 38, 1, 2, 'yes', 1366988803, '127.0.0.1'),
(492, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'yes', 1366988803, '127.0.0.1'),
(493, 60, 'ElggObject', 'object', 'admin_notice', 'delete', 38, 38, 0, 'yes', 1366988812, '127.0.0.1'),
(494, 111, 'ElggMetadata', 'metadata', 'admin_notice_id', 'delete', 38, 38, 0, 'yes', 1366988812, '127.0.0.1'),
(495, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366988866, '127.0.0.1'),
(496, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366988903, '127.0.0.1'),
(497, 53, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366988914, '127.0.0.1'),
(498, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366988914, '127.0.0.1'),
(499, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366988953, '127.0.0.1'),
(500, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366988960, '127.0.0.1'),
(501, 47, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366988965, '127.0.0.1'),
(502, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366988966, '127.0.0.1'),
(503, 48, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366988970, '127.0.0.1'),
(504, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366988971, '127.0.0.1'),
(505, 32, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366988975, '127.0.0.1'),
(506, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366988975, '127.0.0.1'),
(507, 25, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366988988, '127.0.0.1'),
(508, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366988988, '127.0.0.1'),
(509, 34, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366988997, '127.0.0.1'),
(510, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366988997, '127.0.0.1'),
(511, 35, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366989017, '127.0.0.1'),
(512, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366989018, '127.0.0.1'),
(513, 45, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366989023, '127.0.0.1'),
(514, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366989023, '127.0.0.1'),
(515, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366989058, '127.0.0.1'),
(516, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366989064, '127.0.0.1'),
(517, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366989146, '127.0.0.1'),
(518, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366989146, '127.0.0.1'),
(519, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366989153, '127.0.0.1'),
(520, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366989153, '127.0.0.1'),
(521, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366989211, '127.0.0.1'),
(522, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366989223, '127.0.0.1'),
(523, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366989224, '127.0.0.1'),
(524, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366989229, '127.0.0.1'),
(525, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366989271, '127.0.0.1'),
(526, 53, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366989282, '127.0.0.1'),
(527, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366989282, '127.0.0.1'),
(528, 54, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366989290, '127.0.0.1'),
(529, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366989290, '127.0.0.1'),
(530, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366989296, '127.0.0.1'),
(531, 55, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366989303, '127.0.0.1'),
(532, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366989304, '127.0.0.1'),
(533, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366989327, '127.0.0.1'),
(534, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366989391, '127.0.0.1'),
(535, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366989391, '127.0.0.1'),
(536, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366989394, '127.0.0.1'),
(537, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366989394, '127.0.0.1'),
(538, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366989419, '127.0.0.1'),
(539, 54, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366989428, '127.0.0.1'),
(540, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366989428, '127.0.0.1'),
(541, 56, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1366989433, '127.0.0.1'),
(542, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366989433, '127.0.0.1'),
(543, 55, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1366989444, '127.0.0.1'),
(544, 57, 'ElggPlugin', 'object', 'plugin', 'disable', 38, 1, 2, 'no', 1366989444, '127.0.0.1'),
(545, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1366989454, '127.0.0.1'),
(546, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366989454, '127.0.0.1'),
(547, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1366989457, '127.0.0.1'),
(548, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1366989457, '127.0.0.1');

-- --------------------------------------------------------

--
-- Structure de la table `elgg_users_apisessions`
--

CREATE TABLE IF NOT EXISTS `elgg_users_apisessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `token` varchar(40) DEFAULT NULL,
  `expires` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_guid` (`user_guid`,`site_guid`),
  KEY `token` (`token`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `elgg_users_entity`
--

CREATE TABLE IF NOT EXISTS `elgg_users_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `username` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `salt` varchar(8) NOT NULL DEFAULT '',
  `email` text NOT NULL,
  `language` varchar(6) NOT NULL DEFAULT '',
  `code` varchar(32) NOT NULL DEFAULT '',
  `banned` enum('yes','no') NOT NULL DEFAULT 'no',
  `admin` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_action` int(11) NOT NULL DEFAULT '0',
  `prev_last_action` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `prev_last_login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  UNIQUE KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `email` (`email`(50)),
  KEY `code` (`code`),
  KEY `last_action` (`last_action`),
  KEY `last_login` (`last_login`),
  KEY `admin` (`admin`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `name_2` (`name`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `elgg_users_entity`
--

INSERT INTO `elgg_users_entity` (`guid`, `name`, `username`, `password`, `salt`, `email`, `language`, `code`, `banned`, `admin`, `last_action`, `prev_last_action`, `last_login`, `prev_last_login`) VALUES
(38, 'administration', 'admin', 'd93e9dd631cf124eddc6dfd57c4531d4', '25067019', 'admin@admin.com', 'en', '', 'no', 'yes', 1366993121, 1366992821, 1366989457, 1366989394),
(49, 'user', 'user', '7fae7ecbe9bbea07fcefd0a9f8f2b93f', 'c1be3d26', 'user@user.com', 'en', '', 'no', 'no', 1366725578, 1366725559, 1366725558, 1366725410);

-- --------------------------------------------------------

--
-- Structure de la table `elgg_users_sessions`
--

CREATE TABLE IF NOT EXISTS `elgg_users_sessions` (
  `session` varchar(255) NOT NULL,
  `ts` int(11) unsigned NOT NULL DEFAULT '0',
  `data` mediumblob,
  PRIMARY KEY (`session`),
  KEY `ts` (`ts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `elgg_users_sessions`
--

INSERT INTO `elgg_users_sessions` (`session`, `ts`, `data`) VALUES
('fb5ik2ohf203j6vifen8lb1r03', 1366989147, 0x5f5f656c67675f73657373696f6e7c733a33323a223063336133623539346266366536666137383237363436343535646337376632223b6d73677c613a303a7b7d),
('m1unss2q146rup1iqg14n0njk0', 1366989392, 0x5f5f656c67675f73657373696f6e7c733a33323a223065636437373630653233393034653466353534316137613166343132663234223b6d73677c613a303a7b7d),
('7ssoh70a54lp66oh2bcpkvffj2', 1366989455, 0x5f5f656c67675f73657373696f6e7c733a33323a223331636430633935656332373036336534393463393833663937363836616230223b6d73677c613a303a7b7d),
('lh4l7ht6jamo385f1l5m0006i1', 1366993121, 0x5f5f656c67675f73657373696f6e7c733a33323a223331636430633935656332373036336534393463393833663937363836616230223b6d73677c613a303a7b7d757365727c4f3a383a22456c676755736572223a383a7b733a31353a22002a0075726c5f6f76657272696465223b4e3b733a31363a22002a0069636f6e5f6f76657272696465223b4e3b733a31363a22002a0074656d705f6d65746164617461223b613a303a7b7d733a31393a22002a0074656d705f616e6e6f746174696f6e73223b613a303a7b7d733a32343a22002a0074656d705f707269766174655f73657474696e6773223b613a303a7b7d733a31313a22002a00766f6c6174696c65223b613a303a7b7d733a31333a22002a0061747472696275746573223b613a32353a7b733a343a2267756964223b693a33383b733a343a2274797065223b733a343a2275736572223b733a373a2273756274797065223b733a313a2230223b733a31303a226f776e65725f67756964223b733a313a2230223b733a393a22736974655f67756964223b733a313a2231223b733a31343a22636f6e7461696e65725f67756964223b733a313a2230223b733a393a226163636573735f6964223b733a313a2232223b733a31323a2274696d655f63726561746564223b733a31303a2231333636373231393231223b733a31323a2274696d655f75706461746564223b733a31303a2231333636393839343537223b733a31313a226c6173745f616374696f6e223b733a31303a2231333636393932383231223b733a373a22656e61626c6564223b733a333a22796573223b733a31323a227461626c65735f73706c6974223b693a323b733a31333a227461626c65735f6c6f61646564223b693a323b733a343a226e616d65223b733a31343a2261646d696e697374726174696f6e223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a383a2270617373776f7264223b733a33323a226439336539646436333163663132346564646336646664353763343533316434223b733a343a2273616c74223b733a383a223235303637303139223b733a353a22656d61696c223b733a31353a2261646d696e4061646d696e2e636f6d223b733a383a226c616e6775616765223b733a323a22656e223b733a343a22636f6465223b733a303a22223b733a363a2262616e6e6564223b733a323a226e6f223b733a353a2261646d696e223b733a333a22796573223b733a31363a22707265765f6c6173745f616374696f6e223b733a31303a2231333636393932353231223b733a31303a226c6173745f6c6f67696e223b733a31303a2231333636393839343537223b733a31353a22707265765f6c6173745f6c6f67696e223b733a31303a2231333636393839333934223b7d733a383a22002a0076616c6964223b623a303b7d677569647c693a33383b69647c693a33383b757365726e616d657c733a353a2261646d696e223b6e616d657c733a31343a2261646d696e697374726174696f6e223b);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
