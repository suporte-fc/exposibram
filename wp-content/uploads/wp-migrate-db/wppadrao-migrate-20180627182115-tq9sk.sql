# Migração da Base de Dados MySQL do WordPress
#
# Gerado: Wednesday 27. June 2018 18:21 UTC
# Nome do Servidor: localhost
# Banco de Dados: `wppadrao`
# URL: //localhost/wp-padrao
# Path: /Sites/wp-padrao
# Tables: fc_aiowps_events, fc_aiowps_failed_logins, fc_aiowps_global_meta, fc_aiowps_login_activity, fc_aiowps_login_lockdown, fc_aiowps_permanent_block, fc_cf7_vdata, fc_cf7_vdata_entry, fc_cf7dbplugin_st, fc_cf7dbplugin_submits, fc_commentmeta, fc_comments, fc_hotmart_ads, fc_links, fc_options, fc_postmeta, fc_posts, fc_term_relationships, fc_term_taxonomy, fc_termmeta, fc_terms, fc_usermeta, fc_users, fc_yikes_easy_mc_forms, fc_yoast_seo_links, fc_yoast_seo_meta
# Table Prefix: fc_
# Post Types: revision, post, wpcf7_contact_form
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Apagar qualquer tabela `fc_aiowps_events` existente
#

DROP TABLE IF EXISTS `fc_aiowps_events`;


#
# Estrutura da tabela `fc_aiowps_events`
#

CREATE TABLE `fc_aiowps_events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_or_host` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_data` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_aiowps_events`
#

#
# Fim do conteúdo da tabela `fc_aiowps_events`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_aiowps_failed_logins` existente
#

DROP TABLE IF EXISTS `fc_aiowps_failed_logins`;


#
# Estrutura da tabela `fc_aiowps_failed_logins`
#

CREATE TABLE `fc_aiowps_failed_logins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_attempt_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_aiowps_failed_logins`
#

#
# Fim do conteúdo da tabela `fc_aiowps_failed_logins`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_aiowps_global_meta` existente
#

DROP TABLE IF EXISTS `fc_aiowps_global_meta`;


#
# Estrutura da tabela `fc_aiowps_global_meta`
#

CREATE TABLE `fc_aiowps_global_meta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta_key1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value4` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value5` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_aiowps_global_meta`
#

#
# Fim do conteúdo da tabela `fc_aiowps_global_meta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_aiowps_login_activity` existente
#

DROP TABLE IF EXISTS `fc_aiowps_login_activity`;


#
# Estrutura da tabela `fc_aiowps_login_activity`
#

CREATE TABLE `fc_aiowps_login_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `login_country` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `browser_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_aiowps_login_activity`
#
INSERT INTO `fc_aiowps_login_activity` ( `id`, `user_id`, `user_login`, `login_date`, `logout_date`, `login_ip`, `login_country`, `browser_type`) VALUES
(1, 1, 'alex', '2017-12-29 10:39:49', '0000-00-00 00:00:00', '::1', '', ''),
(2, 1, 'alex', '2018-02-15 20:30:08', '0000-00-00 00:00:00', '::1', '', ''),
(3, 1, 'alex', '2018-03-27 18:00:54', '0000-00-00 00:00:00', '::1', '', ''),
(4, 1, 'alex', '2018-04-04 17:33:46', '0000-00-00 00:00:00', '::1', '', ''),
(5, 1, 'alex', '2018-05-30 17:45:18', '0000-00-00 00:00:00', '::1', '', ''),
(6, 1, 'alex', '2018-06-27 15:14:51', '0000-00-00 00:00:00', '127.0.0.1', '', '') ;

#
# Fim do conteúdo da tabela `fc_aiowps_login_activity`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_aiowps_login_lockdown` existente
#

DROP TABLE IF EXISTS `fc_aiowps_login_lockdown`;


#
# Estrutura da tabela `fc_aiowps_login_lockdown`
#

CREATE TABLE `fc_aiowps_login_lockdown` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `release_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `failed_login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lock_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `unlock_key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_aiowps_login_lockdown`
#

#
# Fim do conteúdo da tabela `fc_aiowps_login_lockdown`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_aiowps_permanent_block` existente
#

DROP TABLE IF EXISTS `fc_aiowps_permanent_block`;


#
# Estrutura da tabela `fc_aiowps_permanent_block`
#

CREATE TABLE `fc_aiowps_permanent_block` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blocked_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_origin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unblock` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_aiowps_permanent_block`
#

#
# Fim do conteúdo da tabela `fc_aiowps_permanent_block`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_cf7_vdata` existente
#

DROP TABLE IF EXISTS `fc_cf7_vdata`;


#
# Estrutura da tabela `fc_cf7_vdata`
#

CREATE TABLE `fc_cf7_vdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_cf7_vdata`
#

#
# Fim do conteúdo da tabela `fc_cf7_vdata`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_cf7_vdata_entry` existente
#

DROP TABLE IF EXISTS `fc_cf7_vdata_entry`;


#
# Estrutura da tabela `fc_cf7_vdata_entry`
#

CREATE TABLE `fc_cf7_vdata_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cf7_id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_cf7_vdata_entry`
#

#
# Fim do conteúdo da tabela `fc_cf7_vdata_entry`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_cf7dbplugin_st` existente
#

DROP TABLE IF EXISTS `fc_cf7dbplugin_st`;


#
# Estrutura da tabela `fc_cf7dbplugin_st`
#

CREATE TABLE `fc_cf7dbplugin_st` (
  `submit_time` decimal(16,4) NOT NULL,
  PRIMARY KEY (`submit_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


#
# Conteúdo da tabela `fc_cf7dbplugin_st`
#

#
# Fim do conteúdo da tabela `fc_cf7dbplugin_st`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_cf7dbplugin_submits` existente
#

DROP TABLE IF EXISTS `fc_cf7dbplugin_submits`;


#
# Estrutura da tabela `fc_cf7dbplugin_submits`
#

CREATE TABLE `fc_cf7dbplugin_submits` (
  `submit_time` decimal(16,4) NOT NULL,
  `form_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_value` longtext CHARACTER SET utf8,
  `field_order` int(11) DEFAULT NULL,
  `file` longblob,
  KEY `submit_time_idx` (`submit_time`),
  KEY `form_name_idx` (`form_name`),
  KEY `field_name_idx` (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


#
# Conteúdo da tabela `fc_cf7dbplugin_submits`
#

#
# Fim do conteúdo da tabela `fc_cf7dbplugin_submits`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_commentmeta` existente
#

DROP TABLE IF EXISTS `fc_commentmeta`;


#
# Estrutura da tabela `fc_commentmeta`
#

CREATE TABLE `fc_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_commentmeta`
#

#
# Fim do conteúdo da tabela `fc_commentmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_comments` existente
#

DROP TABLE IF EXISTS `fc_comments`;


#
# Estrutura da tabela `fc_comments`
#

CREATE TABLE `fc_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_comments`
#

#
# Fim do conteúdo da tabela `fc_comments`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_hotmart_ads` existente
#

DROP TABLE IF EXISTS `fc_hotmart_ads`;


#
# Estrutura da tabela `fc_hotmart_ads`
#

CREATE TABLE `fc_hotmart_ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotlink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `views` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_hotmart_ads`
#
INSERT INTO `fc_hotmart_ads` ( `id`, `title`, `image`, `hotlink`, `enabled`, `views`, `clicks`) VALUES
(1, 'Teste', 'http://localhost/wp-padrao/wp-content/uploads/2018/02/livrodeteste.png', 'https://go.hotmart.com/O7349221X', 0, 0, 0) ;

#
# Fim do conteúdo da tabela `fc_hotmart_ads`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_links` existente
#

DROP TABLE IF EXISTS `fc_links`;


#
# Estrutura da tabela `fc_links`
#

CREATE TABLE `fc_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_links`
#

#
# Fim do conteúdo da tabela `fc_links`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_options` existente
#

DROP TABLE IF EXISTS `fc_options`;


#
# Estrutura da tabela `fc_options`
#

CREATE TABLE `fc_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=774 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_options`
#
INSERT INTO `fc_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wp-padrao', 'yes'),
(2, 'home', 'http://localhost/wp-padrao', 'yes'),
(3, 'blogname', 'Site', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'alexlana@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:10:{i:0;s:45:"acf-date-time-picker/acf-date_time_picker.php";i:2;s:35:"advanced-cf7-db/advanced-cf7-db.php";i:3;s:19:"akismet/akismet.php";i:4;s:51:"all-in-one-wp-security-and-firewall/wp-security.php";i:5;s:36:"contact-form-7/wp-contact-form-7.php";i:6;s:41:"fc-wp-complementos/fc-wp-complementos.php";i:7;s:39:"glue-for-yoast-seo-amp/yoastseo-amp.php";i:9;s:21:"pagefrog/pagefrog.php";i:10;s:24:"wordpress-seo/wp-seo.php";i:11;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'filho-padrao', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:3:{s:27:"autoptimize/autoptimize.php";s:21:"autoptimize_uninstall";s:71:"yikes-inc-easy-mailchimp-extender/yikes-inc-easy-mailchimp-extender.php";s:43:"uninstall_yikes_inc_easy_mailchimp_extender";s:25:"hotmart-wp/hotmart-wp.php";s:17:"hotmart_uninstall";}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'fc_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:17:"cf7_db_form_view4";b:1;s:18:"cf7_db_form_edit_4";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'pt_BR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `fc_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'nonce_key', '3e*9#MoKB?zBus-y/&iGPVch.P9=#?s-,UAW/ cVe>v5s6iPkOOV2#XOKo|RZ7*e', 'no'),
(108, 'nonce_salt', '=e xN(uz3wOseW<`f^a:=GbRBNPA^N$2/iU-}PfCl*-r#&X(dExiZYJE+S[:wNl<', 'no'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:8:{i:1530124348;a:1:{s:24:"aiowps_hourly_cron_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1530125324;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1530130788;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1530130808;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1530131476;a:2:{s:15:"ao_cachechecker";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:19:"wpseo-reindex-links";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1530139123;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1530196348;a:1:{s:23:"aiowps_daily_cron_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1527716158;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(123, 'auth_key', '0gi]Gj;rtI{[`s~ZYqkqQYL<<z9v]qV==V(;s!(0{iarxi$4bbGc@6n~K#pT]t!=', 'no'),
(124, 'auth_salt', 'b&|hn`;GXb(y~n,0,)+OKf*Zw:kFBa]:Rm3rv_KDWb/CT^f.-mE7SlPX)7jZNO_6', 'no'),
(125, 'logged_in_key', '|!BN_TiA>/)i*[BX2urW:F4gBv&q6)^A(o&GB7.F}qDl=^%oB48@P,Df QeB9J>2', 'no'),
(126, 'logged_in_salt', 'UGi9`D;gKNS6A(tD*:Je_C3.&x$ px]n0-QTC}[|$;~A-QZ>(4pY(=dao}n:}(7J', 'no'),
(136, 'can_compress_scripts', '1', 'no'),
(156, 'recently_activated', 'a:1:{s:65:"add-featured-image-to-rss-feed/add-featured-image-to-rss-feed.php";i:1530123496;}', 'yes'),
(157, 'aiowpsec_db_version', '1.9', 'yes'),
(158, 'aio_wp_security_configs', 'a:86:{s:19:"aiowps_enable_debug";s:0:"";s:36:"aiowps_remove_wp_generator_meta_info";s:0:"";s:25:"aiowps_prevent_hotlinking";s:0:"";s:28:"aiowps_enable_login_lockdown";s:1:"1";s:28:"aiowps_allow_unlock_requests";s:0:"";s:25:"aiowps_max_login_attempts";i:5;s:24:"aiowps_retry_time_period";i:1;s:26:"aiowps_lockout_time_length";i:1;s:28:"aiowps_set_generic_login_msg";s:0:"";s:26:"aiowps_enable_email_notify";s:0:"";s:20:"aiowps_email_address";s:18:"alexlana@gmail.com";s:27:"aiowps_enable_forced_logout";s:0:"";s:25:"aiowps_logout_time_period";s:2:"60";s:39:"aiowps_enable_invalid_username_lockdown";s:0:"";s:43:"aiowps_instantly_lockout_specific_usernames";a:0:{}s:32:"aiowps_unlock_request_secret_key";s:20:"g47ojl21uoh64xcpid50";s:35:"aiowps_lockdown_enable_whitelisting";s:0:"";s:36:"aiowps_lockdown_allowed_ip_addresses";s:0:"";s:26:"aiowps_enable_whitelisting";s:0:"";s:27:"aiowps_allowed_ip_addresses";s:0:"";s:27:"aiowps_enable_login_captcha";s:0:"";s:34:"aiowps_enable_custom_login_captcha";s:0:"";s:31:"aiowps_enable_woo_login_captcha";s:0:"";s:34:"aiowps_enable_woo_register_captcha";s:0:"";s:25:"aiowps_captcha_secret_key";s:20:"c1mxnsvtuhliq5xelvhb";s:42:"aiowps_enable_manual_registration_approval";s:0:"";s:39:"aiowps_enable_registration_page_captcha";s:0:"";s:35:"aiowps_enable_registration_honeypot";s:1:"1";s:27:"aiowps_enable_random_prefix";s:0:"";s:31:"aiowps_enable_automated_backups";s:1:"1";s:26:"aiowps_db_backup_frequency";i:1;s:25:"aiowps_db_backup_interval";s:1:"1";s:26:"aiowps_backup_files_stored";i:45;s:32:"aiowps_send_backup_email_address";s:0:"";s:27:"aiowps_backup_email_address";s:18:"alexlana@gmail.com";s:27:"aiowps_disable_file_editing";s:1:"1";s:37:"aiowps_prevent_default_wp_file_access";s:1:"1";s:22:"aiowps_system_log_file";s:9:"error_log";s:26:"aiowps_enable_blacklisting";s:0:"";s:26:"aiowps_banned_ip_addresses";s:0:"";s:28:"aiowps_enable_basic_firewall";s:1:"1";s:31:"aiowps_enable_pingback_firewall";s:1:"1";s:38:"aiowps_disable_xmlrpc_pingback_methods";s:1:"1";s:34:"aiowps_block_debug_log_file_access";s:1:"1";s:26:"aiowps_disable_index_views";s:1:"1";s:30:"aiowps_disable_trace_and_track";s:1:"1";s:28:"aiowps_forbid_proxy_comments";s:1:"1";s:29:"aiowps_deny_bad_query_strings";s:1:"1";s:34:"aiowps_advanced_char_string_filter";s:1:"1";s:25:"aiowps_enable_5g_firewall";s:0:"";s:25:"aiowps_enable_6g_firewall";s:1:"1";s:26:"aiowps_enable_custom_rules";s:0:"";s:32:"aiowps_place_custom_rules_at_top";s:0:"";s:19:"aiowps_custom_rules";s:0:"";s:25:"aiowps_enable_404_logging";s:0:"";s:28:"aiowps_enable_404_IP_lockout";s:0:"";s:30:"aiowps_404_lockout_time_length";s:2:"60";s:28:"aiowps_404_lock_redirect_url";s:16:"http://127.0.0.1";s:31:"aiowps_enable_rename_login_page";s:1:"1";s:28:"aiowps_enable_login_honeypot";s:1:"1";s:43:"aiowps_enable_brute_force_attack_prevention";s:0:"";s:30:"aiowps_brute_force_secret_word";s:0:"";s:24:"aiowps_cookie_brute_test";s:0:"";s:44:"aiowps_cookie_based_brute_force_redirect_url";s:16:"http://127.0.0.1";s:59:"aiowps_brute_force_attack_prevention_pw_protected_exception";s:0:"";s:51:"aiowps_brute_force_attack_prevention_ajax_exception";s:0:"";s:19:"aiowps_site_lockout";s:0:"";s:23:"aiowps_site_lockout_msg";s:0:"";s:30:"aiowps_enable_spambot_blocking";s:1:"1";s:29:"aiowps_enable_comment_captcha";s:0:"";s:31:"aiowps_enable_autoblock_spam_ip";s:0:"";s:33:"aiowps_spam_ip_min_comments_block";s:0:"";s:32:"aiowps_enable_automated_fcd_scan";s:0:"";s:25:"aiowps_fcd_scan_frequency";i:4;s:24:"aiowps_fcd_scan_interval";s:1:"2";s:28:"aiowps_fcd_exclude_filetypes";s:0:"";s:24:"aiowps_fcd_exclude_files";s:35:"wp-content/cache\r\n/wp-content/cache";s:26:"aiowps_send_fcd_scan_email";s:0:"";s:29:"aiowps_fcd_scan_email_address";s:18:"alexlana@gmail.com";s:27:"aiowps_fcds_change_detected";b:0;s:22:"aiowps_copy_protection";s:0:"";s:40:"aiowps_prevent_site_display_inside_frame";s:1:"1";s:32:"aiowps_prevent_users_enumeration";s:1:"1";s:28:"aiowps_block_fake_googlebots";s:1:"1";s:22:"aiowps_login_page_slug";s:5:"entre";s:23:"aiowps_last_backup_time";s:19:"2018-04-04 17:33:19";}', 'yes'),
(159, 'autoptimize_version', '2.2.0', 'yes'),
(160, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.0.2";s:13:"bulk_validate";a:4:{s:9:"timestamp";d:1511634673;s:7:"version";s:5:"4.9.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(162, 'CF7DBPlugin__version', '2.10.28', 'yes'),
(179, 'yikes_mailchimp_activation_redirect', 'true', 'yes'),
(180, 'yikes_easy_mailchimp_activation_date', '1511641873', 'yes'),
(181, 'yikes_easy_mailchimp_extender_forms', 'a:0:{}', 'yes'),
(182, 'yikes_easy_mailchimp_extender_version', '6.3.30', 'yes'),
(186, 'jetpack_activated', '1', 'yes'),
(189, 'jetpack_activation_source', 'a:2:{i:0;s:7:"unknown";i:1;N;}', 'yes'),
(193, 'jetpack_available_modules', 'a:1:{s:3:"6.0";a:43:{s:18:"after-the-deadline";s:3:"1.1";s:8:"carousel";s:3:"1.5";s:13:"comment-likes";s:3:"5.1";s:8:"comments";s:3:"1.4";s:12:"contact-form";s:3:"1.3";s:20:"custom-content-types";s:3:"3.1";s:10:"custom-css";s:3:"1.7";s:21:"enhanced-distribution";s:3:"1.2";s:16:"google-analytics";s:3:"4.5";s:19:"gravatar-hovercards";s:3:"1.1";s:15:"infinite-scroll";s:3:"2.0";s:8:"json-api";s:3:"1.9";s:5:"latex";s:3:"1.1";s:11:"lazy-images";s:5:"5.6.0";s:5:"likes";s:3:"2.2";s:6:"manage";s:3:"3.4";s:8:"markdown";s:3:"2.8";s:9:"masterbar";s:3:"4.8";s:9:"minileven";s:3:"1.8";s:7:"monitor";s:3:"2.6";s:5:"notes";s:3:"1.9";s:6:"photon";s:3:"2.0";s:13:"post-by-email";s:3:"2.0";s:7:"protect";s:3:"3.4";s:9:"publicize";s:3:"2.0";s:3:"pwa";s:5:"5.6.0";s:13:"related-posts";s:3:"2.9";s:6:"search";s:3:"5.0";s:9:"seo-tools";s:3:"4.4";s:10:"sharedaddy";s:3:"1.1";s:10:"shortcodes";s:3:"1.1";s:10:"shortlinks";s:3:"1.1";s:8:"sitemaps";s:3:"3.9";s:3:"sso";s:3:"2.6";s:5:"stats";s:3:"1.1";s:13:"subscriptions";s:3:"1.2";s:13:"tiled-gallery";s:3:"2.1";s:10:"vaultpress";s:5:"0:1.2";s:18:"verification-tools";s:3:"3.0";s:10:"videopress";s:3:"2.5";s:17:"widget-visibility";s:3:"2.4";s:7:"widgets";s:3:"1.2";s:7:"wordads";s:5:"4.5.0";}}', 'yes'),
(194, 'jetpack_options', 'a:2:{s:7:"version";s:14:"6.0:1522874267";s:11:"old_version";s:16:"5.6.1:1514552030";}', 'yes'),
(195, 'wpseo', 'a:19:{s:15:"ms_defaults_set";b:0;s:7:"version";s:5:"7.7.1";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:11:"baiduverify";s:0:"";s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";s:0:"";s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:21:"enable_admin_bar_menu";b:1;s:26:"enable_cornerstone_content";b:1;s:18:"enable_xml_sitemap";b:1;s:24:"enable_text_link_counter";b:1;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1511641875;}', 'yes'),
(197, 'wpseo_titles', 'a:65:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:40:"%%name%%, Autor em %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:66:"Você pesquisou por %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:44:"Página não encontrada %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:9:"rssbefore";s:0:"";s:8:"rssafter";s:54:"O post %%POSTLINK%% apareceu primeiro em %%BLOGLINK%%.";s:20:"noindex-author-wpseo";b:0;s:28:"noindex-author-noposts-wpseo";b:1;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:18:"disable-attachment";b:0;s:23:"is-media-purge-relevant";b:1;s:20:"breadcrumbs-404crumb";s:33:"Erro 404: Página não encontrada";s:29:"breadcrumbs-display-blog-page";b:1;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:13:"Arquivos para";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:7:"Início";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:19:"Você pesquisou por";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:12:"website_name";s:0:"";s:11:"person_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:17:"stripcategorybase";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:23:"display-metabox-pt-post";b:1;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:23:"display-metabox-pt-page";b:1;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:29:"display-metabox-pt-attachment";b:1;s:18:"title-tax-category";s:53:"Arquivos %%term_title%% %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:28:"display-metabox-tax-category";b:1;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"Arquivos %%term_title%% %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:28:"display-metabox-tax-post_tag";b:1;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"Arquivos %%term_title%% %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:31:"display-metabox-tax-post_format";b:1;s:23:"noindex-tax-post_format";b:1;s:23:"post_types-post-maintax";i:0;}', 'yes'),
(198, 'wpseo_social', 'a:18:{s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:19:"summary_large_image";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(202, 'wpseo_flush_rewrite', '1', 'yes'),
(203, 'yikes_mc_database_version', '1.0', 'yes'),
(206, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(207, 'widget_yikes_easy_mc_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(209, 'jetpack_testimonial', '0', 'yes'),
(211, 'w3tc_state', '{"common.install":1511641878}', 'no'),
(213, 'fcwpc_ssl', '0', 'yes'),
(214, 'fcwpc_logout_home', '0', 'yes'),
(215, 'fcwpc_strong_password', '0', 'yes'),
(216, 'fcwpc_ua', '', 'yes'),
(217, 'fcwpc_erro', 'a:16:{i:400;s:3:"400";i:401;s:3:"401";i:402;s:3:"402";i:403;s:3:"403";i:405;s:3:"405";i:406;s:3:"406";i:407;s:3:"407";i:408;s:3:"408";i:409;s:3:"409";i:410;s:3:"410";i:500;s:3:"500";i:501;s:3:"501";i:502;s:3:"502";i:503;s:3:"503";i:504;s:3:"504";i:505;s:3:"505";}', 'yes'),
(218, 'do_activate', '0', 'yes'),
(227, 'sharing-options', 'a:1:{s:6:"global";a:5:{s:12:"button_style";s:9:"icon-text";s:13:"sharing_label";s:17:"Compartilhe isso:";s:10:"open_links";s:4:"same";s:4:"show";a:0:{}s:6:"custom";a:0:{}}}', 'yes'),
(228, 'stats_options', 'a:7:{s:9:"admin_bar";b:1;s:5:"roles";a:1:{i:0;s:13:"administrator";}s:11:"count_roles";a:0:{}s:7:"blog_id";b:0;s:12:"do_not_track";b:1;s:10:"hide_smile";b:1;s:7:"version";s:1:"9";}', 'yes'),
(238, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1530123674;}', 'no'),
(307, 'CF7DBPlugin_Donated', 'false', 'yes'),
(320, 'new_admin_email', 'alexlana@gmail.com', 'yes'),
(321, 'jetpack_holiday_snow_enabled', '', 'yes'),
(603, 'vsz_cf7_db_version', '1.4.1', 'yes'),
(623, 'wpseo_sitemap_cache_validator_global', '5KHxo', 'no'),
(641, 'jetpack_sync_settings_disable', '0', 'yes'),
(644, 'jpsq_sync-1527713271,693413-464124-1', 'a:6:{i:0;s:18:"deactivated_plugin";i:1;a:2:{i:0;s:19:"jetpack/jetpack.php";i:1;b:0;}i:2;i:1;i:3;d:1527713271.6931750774383544921875;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(645, 'jpsq_sync-1527713271,696290-464124-2', 'a:6:{i:0;s:14:"updated_option";i:1;a:3:{i:0;s:14:"active_plugins";i:1;a:12:{i:0;s:45:"acf-date-time-picker/acf-date_time_picker.php";i:1;s:65:"add-featured-image-to-rss-feed/add-featured-image-to-rss-feed.php";i:2;s:35:"advanced-cf7-db/advanced-cf7-db.php";i:3;s:19:"akismet/akismet.php";i:4;s:51:"all-in-one-wp-security-and-firewall/wp-security.php";i:5;s:36:"contact-form-7/wp-contact-form-7.php";i:6;s:41:"fc-wp-complementos/fc-wp-complementos.php";i:7;s:39:"glue-for-yoast-seo-amp/yoastseo-amp.php";i:8;s:19:"jetpack/jetpack.php";i:9;s:21:"pagefrog/pagefrog.php";i:10;s:24:"wordpress-seo/wp-seo.php";i:11;s:31:"wp-migrate-db/wp-migrate-db.php";}i:2;a:11:{i:0;s:45:"acf-date-time-picker/acf-date_time_picker.php";i:1;s:65:"add-featured-image-to-rss-feed/add-featured-image-to-rss-feed.php";i:2;s:35:"advanced-cf7-db/advanced-cf7-db.php";i:3;s:19:"akismet/akismet.php";i:4;s:51:"all-in-one-wp-security-and-firewall/wp-security.php";i:5;s:36:"contact-form-7/wp-contact-form-7.php";i:6;s:41:"fc-wp-complementos/fc-wp-complementos.php";i:7;s:39:"glue-for-yoast-seo-amp/yoastseo-amp.php";i:9;s:21:"pagefrog/pagefrog.php";i:10;s:24:"wordpress-seo/wp-seo.php";i:11;s:31:"wp-migrate-db/wp-migrate-db.php";}}i:2;i:1;i:3;d:1527713271.6961009502410888671875;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(648, 'jpsq_sync-1527713271,704095-464124-3', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:16:"EMPTY_TRASH_DAYS";i:1;i:30;}i:2;i:1;i:3;d:1527713271.7038700580596923828125;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(649, 'jpsq_sync-1527713271,705001-464124-4', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:17:"WP_POST_REVISIONS";i:1;b:1;}i:2;i:1;i:3;d:1527713271.7048370838165283203125;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(650, 'jpsq_sync-1527713271,705890-464124-5', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:26:"AUTOMATIC_UPDATER_DISABLED";i:1;b:1;}i:2;i:1;i:3;d:1527713271.7057321071624755859375;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(651, 'jpsq_sync-1527713271,706836-464124-6', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:7:"ABSPATH";i:1;s:17:"/Sites/wp-padrao/";}i:2;i:1;i:3;d:1527713271.706653118133544921875;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(652, 'jpsq_sync-1527713271,709899-464124-7', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:14:"WP_CONTENT_DIR";i:1;s:27:"/Sites/wp-padrao/wp-content";}i:2;i:1;i:3;d:1527713271.7096750736236572265625;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(653, 'jpsq_sync-1527713271,711034-464124-8', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:9:"FS_METHOD";i:1;s:6:"direct";}i:2;i:1;i:3;d:1527713271.7108409404754638671875;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(654, 'jpsq_sync-1527713271,711922-464124-9', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:18:"DISALLOW_FILE_EDIT";i:1;b:1;}i:2;i:1;i:3;d:1527713271.7116949558258056640625;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(655, 'jpsq_sync-1527713271,713151-464124-10', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:16:"JETPACK__VERSION";i:1;s:5:"6.1.1";}i:2;i:1;i:3;d:1527713271.712975978851318359375;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(656, 'jpsq_sync-1527713271,716063-464124-11', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:20:"WP_CRON_LOCK_TIMEOUT";i:1;i:60;}i:2;i:1;i:3;d:1527713271.7158749103546142578125;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(657, 'jpsq_sync-1527713271,717034-464124-12', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:11:"PHP_VERSION";i:1;s:6:"5.4.10";}i:2;i:1;i:3;d:1527713271.7168619632720947265625;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(658, 'jpsq_sync-1527713271,718395-464124-13', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:15:"WP_MEMORY_LIMIT";i:1;s:4:"512M";}i:2;i:1;i:3;d:1527713271.71821498870849609375;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(659, 'jpsq_sync-1527713271,719279-464124-14', 'a:6:{i:0;s:21:"jetpack_sync_constant";i:1;a:2:{i:0;s:19:"WP_MAX_MEMORY_LIMIT";i:1;s:4:"512M";}i:2;i:1;i:3;d:1527713271.7191050052642822265625;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(660, 'jetpack_constants_sync_checksum', 'a:19:{s:16:"EMPTY_TRASH_DAYS";i:2473281379;s:17:"WP_POST_REVISIONS";i:4261170317;s:26:"AUTOMATIC_UPDATER_DISABLED";i:4261170317;s:7:"ABSPATH";i:2084951606;s:14:"WP_CONTENT_DIR";i:3932547610;s:9:"FS_METHOD";i:3577458903;s:18:"DISALLOW_FILE_EDIT";i:4261170317;s:18:"DISALLOW_FILE_MODS";i:634125391;s:19:"WP_AUTO_UPDATE_CORE";i:634125391;s:22:"WP_HTTP_BLOCK_EXTERNAL";i:634125391;s:19:"WP_ACCESSIBLE_HOSTS";i:634125391;s:16:"JETPACK__VERSION";i:15020134;s:12:"IS_PRESSABLE";i:634125391;s:15:"DISABLE_WP_CRON";i:634125391;s:17:"ALTERNATE_WP_CRON";i:634125391;s:20:"WP_CRON_LOCK_TIMEOUT";i:3994858278;s:11:"PHP_VERSION";i:575629834;s:15:"WP_MEMORY_LIMIT";i:1839787262;s:19:"WP_MAX_MEMORY_LIMIT";i:1839787262;}', 'yes'),
(663, 'jetpack_sync_https_history_main_network_site_url', 'a:1:{i:0;s:4:"http";}', 'yes'),
(664, 'jetpack_sync_https_history_site_url', 'a:2:{i:0;s:4:"http";i:1;s:4:"http";}', 'yes'),
(665, 'jetpack_sync_https_history_home_url', 'a:2:{i:0;s:4:"http";i:1;s:4:"http";}', 'yes'),
(668, 'jpsq_sync-1527713271,770897-464124-15', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:18:"wp_max_upload_size";i:1;i:536870912;}i:2;i:1;i:3;d:1527713271.7706749439239501953125;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(669, 'jpsq_sync-1527713271,771937-464124-16', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:15:"is_main_network";i:1;b:0;}i:2;i:1;i:3;d:1527713271.771749973297119140625;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(670, 'jpsq_sync-1527713271,774487-464124-17', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:13:"is_multi_site";i:1;b:0;}i:2;i:1;i:3;d:1527713271.77425098419189453125;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(671, 'jpsq_sync-1527713271,776305-464124-18', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:17:"main_network_site";i:1;s:26:"http://localhost/wp-padrao";}i:2;i:1;i:3;d:1527713271.775990962982177734375;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(672, 'jpsq_sync-1527713271,777926-464124-19', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:8:"site_url";i:1;s:26:"http://localhost/wp-padrao";}i:2;i:1;i:3;d:1527713271.7777240276336669921875;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(673, 'jpsq_sync-1527713271,780693-464124-20', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:8:"home_url";i:1;s:26:"http://localhost/wp-padrao";}i:2;i:1;i:3;d:1527713271.7804749011993408203125;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(674, 'jpsq_sync-1527713271,782037-464124-21', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:16:"single_user_site";i:1;b:0;}i:2;i:1;i:3;d:1527713271.7817680835723876953125;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(675, 'jpsq_sync-1527713271,783573-464124-22', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:7:"updates";i:1;a:5:{s:7:"plugins";i:0;s:6:"themes";i:0;s:9:"wordpress";i:0;s:12:"translations";i:0;s:5:"total";i:0;}}i:2;i:1;i:3;d:1527713271.7833709716796875;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(676, 'jpsq_sync-1527713271,784901-464124-23', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:28:"has_file_system_write_access";i:1;b:1;}i:2;i:1;i:3;d:1527713271.784699916839599609375;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(677, 'jpsq_sync-1527713271,787109-464124-24', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:21:"is_version_controlled";i:1;b:0;}i:2;i:1;i:3;d:1527713271.7868030071258544921875;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(678, 'jpsq_sync-1527713271,795098-464124-25', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:10:"taxonomies";i:1;a:5:{s:8:"category";O:8:"stdClass":23:{s:4:"name";s:8:"category";s:5:"label";s:10:"Categorias";s:6:"labels";O:8:"stdClass":23:{s:4:"name";s:10:"Categorias";s:13:"singular_name";s:9:"Categoria";s:12:"search_items";s:20:"Pesquisar categorias";s:13:"popular_items";N;s:9:"all_items";s:19:"Todas as categorias";s:11:"parent_item";s:20:"Categoria ascendente";s:17:"parent_item_colon";s:21:"Categoria ascendente:";s:9:"edit_item";s:16:"Editar categoria";s:9:"view_item";s:13:"Ver categoria";s:11:"update_item";s:19:"Atualizar categoria";s:12:"add_new_item";s:24:"Adicionar nova categoria";s:13:"new_item_name";s:22:"Nome da nova categoria";s:26:"separate_items_with_commas";N;s:19:"add_or_remove_items";N;s:21:"choose_from_most_used";N;s:9:"not_found";s:33:"Nenhuma categoria foi encontrada.";s:8:"no_terms";s:17:"Nenhuma categoria";s:21:"items_list_navigation";s:35:"Navegação da listas de categorias";s:10:"items_list";s:19:"Lista de categorias";s:9:"most_used";s:11:"Mais usadas";s:13:"back_to_items";s:29:"&larr; Voltar para categorias";s:9:"menu_name";s:10:"Categorias";s:14:"name_admin_bar";s:8:"category";}s:11:"description";s:0:"";s:6:"public";b:1;s:18:"publicly_queryable";b:1;s:12:"hierarchical";b:1;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:1;s:13:"show_tagcloud";b:1;s:18:"show_in_quick_edit";b:1;s:17:"show_admin_column";b:1;s:11:"meta_box_cb";s:24:"post_categories_meta_box";s:11:"object_type";a:1:{i:0;s:4:"post";}s:3:"cap";O:8:"stdClass":4:{s:12:"manage_terms";s:17:"manage_categories";s:10:"edit_terms";s:15:"edit_categories";s:12:"delete_terms";s:17:"delete_categories";s:12:"assign_terms";s:17:"assign_categories";}s:7:"rewrite";O:8:"stdClass":4:{s:10:"with_front";b:1;s:12:"hierarchical";b:1;s:7:"ep_mask";i:512;s:4:"slug";s:8:"category";}s:9:"query_var";s:13:"category_name";s:21:"update_count_callback";N;s:12:"show_in_rest";b:1;s:9:"rest_base";s:10:"categories";s:21:"rest_controller_class";s:24:"WP_REST_Terms_Controller";s:8:"_builtin";b:1;}s:8:"post_tag";O:8:"stdClass":23:{s:4:"name";s:8:"post_tag";s:5:"label";s:4:"Tags";s:6:"labels";O:8:"stdClass":23:{s:4:"name";s:4:"Tags";s:13:"singular_name";s:3:"Tag";s:12:"search_items";s:14:"Pesquisar tags";s:13:"popular_items";s:14:"Tags populares";s:9:"all_items";s:13:"Todas as tags";s:11:"parent_item";N;s:17:"parent_item_colon";N;s:9:"edit_item";s:10:"Editar tag";s:9:"view_item";s:7:"Ver tag";s:11:"update_item";s:13:"Atualizar tag";s:12:"add_new_item";s:18:"Adicionar nova tag";s:13:"new_item_name";s:16:"Nome da nova tag";s:26:"separate_items_with_commas";s:28:"Separe as tags com vírgulas";s:19:"add_or_remove_items";s:25:"Adicionar ou remover tags";s:21:"choose_from_most_used";s:33:"Escolha entre as tags mais usadas";s:9:"not_found";s:23:"Nenhuma tag encontrada.";s:8:"no_terms";s:11:"Nenhuma tag";s:21:"items_list_navigation";s:28:"Navegação da lista de tags";s:10:"items_list";s:13:"Lista de tags";s:9:"most_used";s:11:"Mais usadas";s:13:"back_to_items";s:23:"&larr; Voltar para tags";s:9:"menu_name";s:4:"Tags";s:14:"name_admin_bar";s:8:"post_tag";}s:11:"description";s:0:"";s:6:"public";b:1;s:18:"publicly_queryable";b:1;s:12:"hierarchical";b:0;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:1;s:13:"show_tagcloud";b:1;s:18:"show_in_quick_edit";b:1;s:17:"show_admin_column";b:1;s:11:"meta_box_cb";s:18:"post_tags_meta_box";s:11:"object_type";a:1:{i:0;s:4:"post";}s:3:"cap";O:8:"stdClass":4:{s:12:"manage_terms";s:16:"manage_post_tags";s:10:"edit_terms";s:14:"edit_post_tags";s:12:"delete_terms";s:16:"delete_post_tags";s:12:"assign_terms";s:16:"assign_post_tags";}s:7:"rewrite";O:8:"stdClass":4:{s:10:"with_front";b:1;s:12:"hierarchical";b:0;s:7:"ep_mask";i:1024;s:4:"slug";s:3:"tag";}s:9:"query_var";s:3:"tag";s:21:"update_count_callback";N;s:12:"show_in_rest";b:1;s:9:"rest_base";s:4:"tags";s:21:"rest_controller_class";s:24:"WP_REST_Terms_Controller";s:8:"_builtin";b:1;}s:8:"nav_menu";O:8:"stdClass":23:{s:4:"name";s:8:"nav_menu";s:5:"label";s:5:"Menus";s:6:"labels";O:8:"stdClass":24:{s:4:"name";s:5:"Menus";s:13:"singular_name";s:4:"Menu";s:12:"search_items";s:14:"Pesquisar tags";s:13:"popular_items";s:14:"Tags populares";s:9:"all_items";s:5:"Menus";s:11:"parent_item";N;s:17:"parent_item_colon";N;s:9:"edit_item";s:10:"Editar tag";s:9:"view_item";s:7:"Ver tag";s:11:"update_item";s:13:"Atualizar tag";s:12:"add_new_item";s:18:"Adicionar nova tag";s:13:"new_item_name";s:16:"Nome da nova tag";s:26:"separate_items_with_commas";s:28:"Separe as tags com vírgulas";s:19:"add_or_remove_items";s:25:"Adicionar ou remover tags";s:21:"choose_from_most_used";s:33:"Escolha entre as tags mais usadas";s:9:"not_found";s:23:"Nenhuma tag encontrada.";s:8:"no_terms";s:11:"Nenhuma tag";s:21:"items_list_navigation";s:28:"Navegação da lista de tags";s:10:"items_list";s:13:"Lista de tags";s:9:"most_used";s:11:"Mais usadas";s:13:"back_to_items";s:23:"&larr; Voltar para tags";s:9:"menu_name";s:5:"Menus";s:14:"name_admin_bar";s:4:"Menu";s:8:"archives";s:5:"Menus";}s:11:"description";s:0:"";s:6:"public";b:0;s:18:"publicly_queryable";b:0;s:12:"hierarchical";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:13:"show_tagcloud";b:0;s:18:"show_in_quick_edit";b:0;s:17:"show_admin_column";b:0;s:11:"meta_box_cb";s:18:"post_tags_meta_box";s:11:"object_type";a:1:{i:0;s:13:"nav_menu_item";}s:3:"cap";O:8:"stdClass":4:{s:12:"manage_terms";s:17:"manage_categories";s:10:"edit_terms";s:17:"manage_categories";s:12:"delete_terms";s:17:"manage_categories";s:12:"assign_terms";s:10:"edit_posts";}s:7:"rewrite";b:0;s:9:"query_var";b:0;s:21:"update_count_callback";N;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:21:"rest_controller_class";N;s:8:"_builtin";b:1;}s:13:"link_category";O:8:"stdClass":23:{s:4:"name";s:13:"link_category";s:5:"label";s:19:"Categorias de links";s:6:"labels";O:8:"stdClass":24:{s:4:"name";s:19:"Categorias de links";s:13:"singular_name";s:17:"Categoria de link";s:12:"search_items";s:29:"Pesquisar categorias de links";s:13:"popular_items";N;s:9:"all_items";s:28:"Todas as categorias de links";s:11:"parent_item";N;s:17:"parent_item_colon";N;s:9:"edit_item";s:24:"Editar categoria de link";s:9:"view_item";s:7:"Ver tag";s:11:"update_item";s:28:"Atualizar categoria de links";s:12:"add_new_item";s:33:"Adicionar nova categoria de links";s:13:"new_item_name";s:31:"Nome da nova categoria de links";s:26:"separate_items_with_commas";N;s:19:"add_or_remove_items";N;s:21:"choose_from_most_used";N;s:9:"not_found";s:23:"Nenhuma tag encontrada.";s:8:"no_terms";s:11:"Nenhuma tag";s:21:"items_list_navigation";s:28:"Navegação da lista de tags";s:10:"items_list";s:13:"Lista de tags";s:9:"most_used";s:11:"Mais usadas";s:13:"back_to_items";s:38:"&larr; Voltar para categorias de links";s:9:"menu_name";s:19:"Categorias de links";s:14:"name_admin_bar";s:17:"Categoria de link";s:8:"archives";s:28:"Todas as categorias de links";}s:11:"description";s:0:"";s:6:"public";b:0;s:18:"publicly_queryable";b:0;s:12:"hierarchical";b:0;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:0;s:13:"show_tagcloud";b:1;s:18:"show_in_quick_edit";b:1;s:17:"show_admin_column";b:0;s:11:"meta_box_cb";s:18:"post_tags_meta_box";s:11:"object_type";a:1:{i:0;s:4:"link";}s:3:"cap";O:8:"stdClass":4:{s:12:"manage_terms";s:12:"manage_links";s:10:"edit_terms";s:12:"manage_links";s:12:"delete_terms";s:12:"manage_links";s:12:"assign_terms";s:12:"manage_links";}s:7:"rewrite";b:0;s:9:"query_var";b:0;s:21:"update_count_callback";N;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:21:"rest_controller_class";N;s:8:"_builtin";b:1;}s:11:"post_format";O:8:"stdClass":23:{s:4:"name";s:11:"post_format";s:5:"label";s:7:"Formato";s:6:"labels";O:8:"stdClass":24:{s:4:"name";s:7:"Formato";s:13:"singular_name";s:7:"Formato";s:12:"search_items";s:14:"Pesquisar tags";s:13:"popular_items";s:14:"Tags populares";s:9:"all_items";s:7:"Formato";s:11:"parent_item";N;s:17:"parent_item_colon";N;s:9:"edit_item";s:10:"Editar tag";s:9:"view_item";s:7:"Ver tag";s:11:"update_item";s:13:"Atualizar tag";s:12:"add_new_item";s:18:"Adicionar nova tag";s:13:"new_item_name";s:16:"Nome da nova tag";s:26:"separate_items_with_commas";s:28:"Separe as tags com vírgulas";s:19:"add_or_remove_items";s:25:"Adicionar ou remover tags";s:21:"choose_from_most_used";s:33:"Escolha entre as tags mais usadas";s:9:"not_found";s:23:"Nenhuma tag encontrada.";s:8:"no_terms";s:11:"Nenhuma tag";s:21:"items_list_navigation";s:28:"Navegação da lista de tags";s:10:"items_list";s:13:"Lista de tags";s:9:"most_used";s:11:"Mais usadas";s:13:"back_to_items";s:23:"&larr; Voltar para tags";s:9:"menu_name";s:7:"Formato";s:14:"name_admin_bar";s:7:"Formato";s:8:"archives";s:7:"Formato";}s:11:"description";s:0:"";s:6:"public";b:1;s:18:"publicly_queryable";b:1;s:12:"hierarchical";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:1;s:13:"show_tagcloud";b:0;s:18:"show_in_quick_edit";b:0;s:17:"show_admin_column";b:0;s:11:"meta_box_cb";s:18:"post_tags_meta_box";s:11:"object_type";a:1:{i:0;s:4:"post";}s:3:"cap";O:8:"stdClass":4:{s:12:"manage_terms";s:17:"manage_categories";s:10:"edit_terms";s:17:"manage_categories";s:12:"delete_terms";s:17:"manage_categories";s:12:"assign_terms";s:10:"edit_posts";}s:7:"rewrite";O:8:"stdClass":4:{s:10:"with_front";b:1;s:12:"hierarchical";b:0;s:7:"ep_mask";i:0;s:4:"slug";s:4:"type";}s:9:"query_var";s:11:"post_format";s:21:"update_count_callback";N;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:21:"rest_controller_class";N;s:8:"_builtin";b:1;}}}i:2;i:1;i:3;d:1527713271.7948849201202392578125;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no') ;
INSERT INTO `fc_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(679, 'jpsq_sync-1527713271,814188-464124-26', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:10:"post_types";i:1;a:11:{s:4:"post";O:8:"stdClass":26:{s:4:"name";s:4:"post";s:5:"label";s:5:"Posts";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:5:"Posts";s:13:"singular_name";s:4:"Post";s:7:"add_new";s:14:"Adicionar novo";s:12:"add_new_item";s:19:"Adicionar novo post";s:9:"edit_item";s:11:"Editar post";s:8:"new_item";s:9:"Novo post";s:9:"view_item";s:8:"Ver Post";s:10:"view_items";s:9:"Ver posts";s:12:"search_items";s:15:"Pesquisar posts";s:9:"not_found";s:23:"Nenhum post encontrado.";s:18:"not_found_in_trash";s:34:"Nenhum post encontrado na lixeira.";s:17:"parent_item_colon";N;s:9:"all_items";s:14:"Todos os posts";s:8:"archives";s:17:"Arquivos de posts";s:10:"attributes";s:17:"Atributos do post";s:16:"insert_into_item";s:15:"Inserir no post";s:21:"uploaded_to_this_item";s:20:"Anexadas a este post";s:14:"featured_image";s:16:"Imagem destacada";s:18:"set_featured_image";s:24:"Definir imagem destacada";s:21:"remove_featured_image";s:24:"Remover imagem destacada";s:18:"use_featured_image";s:26:"Usar como imagem destacada";s:17:"filter_items_list";s:22:"Filtrar lista de posts";s:21:"items_list_navigation";s:29:"Navegação da lista de posts";s:10:"items_list";s:14:"Lista de posts";s:9:"menu_name";s:5:"Posts";s:14:"name_admin_bar";s:4:"Post";}s:11:"description";s:0:"";s:6:"public";b:1;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:0;s:18:"publicly_queryable";b:1;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:1;s:17:"show_in_admin_bar";b:1;s:13:"menu_position";i:5;s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:9:"edit_post";s:9:"read_post";s:9:"read_post";s:11:"delete_post";s:11:"delete_post";s:10:"edit_posts";s:10:"edit_posts";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:4:"read";s:4:"read";s:12:"delete_posts";s:12:"delete_posts";s:20:"delete_private_posts";s:20:"delete_private_posts";s:22:"delete_published_posts";s:22:"delete_published_posts";s:19:"delete_others_posts";s:19:"delete_others_posts";s:18:"edit_private_posts";s:18:"edit_private_posts";s:20:"edit_published_posts";s:20:"edit_published_posts";s:12:"create_posts";s:10:"edit_posts";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:1;s:16:"delete_with_user";b:1;s:12:"show_in_rest";b:1;s:9:"rest_base";s:5:"posts";s:8:"_builtin";b:1;s:10:"_edit_link";s:16:"post.php?post=%d";}s:4:"page";O:8:"stdClass":26:{s:4:"name";s:4:"page";s:5:"label";s:8:"Páginas";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:8:"Páginas";s:13:"singular_name";s:7:"Página";s:7:"add_new";s:14:"Adicionar nova";s:12:"add_new_item";s:22:"Adicionar nova página";s:9:"edit_item";s:14:"Editar página";s:8:"new_item";s:12:"Nova página";s:9:"view_item";s:11:"Ver página";s:10:"view_items";s:12:"Ver páginas";s:12:"search_items";s:18:"Pesquisar páginas";s:9:"not_found";s:26:"Páginas não encontradas.";s:18:"not_found_in_trash";s:38:"Nenhuma página encontrada na lixeira.";s:17:"parent_item_colon";s:19:"Página ascendente:";s:9:"all_items";s:17:"Todas as páginas";s:8:"archives";s:19:"Arquivos de página";s:10:"attributes";s:20:"Atributos da página";s:16:"insert_into_item";s:18:"Inserir na página";s:21:"uploaded_to_this_item";s:23:"Anexadas a esta página";s:14:"featured_image";s:16:"Imagem destacada";s:18:"set_featured_image";s:24:"Definir imagem destacada";s:21:"remove_featured_image";s:24:"Remover imagem destacada";s:18:"use_featured_image";s:26:"Usar como imagem destacada";s:17:"filter_items_list";s:25:"Filtrar lista de páginas";s:21:"items_list_navigation";s:32:"Navegação da lista de páginas";s:10:"items_list";s:17:"Lista de páginas";s:9:"menu_name";s:8:"Páginas";s:14:"name_admin_bar";s:7:"Página";}s:11:"description";s:0:"";s:6:"public";b:1;s:12:"hierarchical";b:1;s:19:"exclude_from_search";b:0;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:1;s:17:"show_in_admin_bar";b:1;s:13:"menu_position";i:20;s:15:"capability_type";s:4:"page";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:9:"edit_page";s:9:"read_post";s:9:"read_page";s:11:"delete_post";s:11:"delete_page";s:10:"edit_posts";s:10:"edit_pages";s:17:"edit_others_posts";s:17:"edit_others_pages";s:13:"publish_posts";s:13:"publish_pages";s:18:"read_private_posts";s:18:"read_private_pages";s:4:"read";s:4:"read";s:12:"delete_posts";s:12:"delete_pages";s:20:"delete_private_posts";s:20:"delete_private_pages";s:22:"delete_published_posts";s:22:"delete_published_pages";s:19:"delete_others_posts";s:19:"delete_others_pages";s:18:"edit_private_posts";s:18:"edit_private_pages";s:20:"edit_published_posts";s:20:"edit_published_pages";s:12:"create_posts";s:10:"edit_pages";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:1;s:16:"delete_with_user";b:1;s:12:"show_in_rest";b:1;s:9:"rest_base";s:5:"pages";s:8:"_builtin";b:1;s:10:"_edit_link";s:16:"post.php?post=%d";}s:10:"attachment";O:8:"stdClass":25:{s:4:"name";s:10:"attachment";s:5:"label";s:6:"Mídia";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:6:"Mídia";s:13:"singular_name";s:6:"Mídia";s:7:"add_new";s:14:"Adicionar nova";s:12:"add_new_item";s:19:"Adicionar novo post";s:9:"edit_item";s:13:"Editar mídia";s:8:"new_item";s:9:"Novo post";s:9:"view_item";s:21:"Ver página de anexos";s:10:"view_items";s:9:"Ver posts";s:12:"search_items";s:15:"Pesquisar posts";s:9:"not_found";s:23:"Nenhum post encontrado.";s:18:"not_found_in_trash";s:34:"Nenhum post encontrado na lixeira.";s:17:"parent_item_colon";N;s:9:"all_items";s:6:"Mídia";s:8:"archives";s:6:"Mídia";s:10:"attributes";s:18:"Atributos do anexo";s:16:"insert_into_item";s:15:"Inserir no post";s:21:"uploaded_to_this_item";s:20:"Anexadas a este post";s:14:"featured_image";s:16:"Imagem destacada";s:18:"set_featured_image";s:24:"Definir imagem destacada";s:21:"remove_featured_image";s:24:"Remover imagem destacada";s:18:"use_featured_image";s:26:"Usar como imagem destacada";s:17:"filter_items_list";s:22:"Filtrar lista de posts";s:21:"items_list_navigation";s:29:"Navegação da lista de posts";s:10:"items_list";s:14:"Lista de posts";s:9:"menu_name";s:6:"Mídia";s:14:"name_admin_bar";s:6:"Mídia";}s:11:"description";s:0:"";s:6:"public";b:1;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:0;s:18:"publicly_queryable";b:1;s:7:"show_ui";b:1;s:12:"show_in_menu";b:1;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:1;s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:9:"edit_post";s:9:"read_post";s:9:"read_post";s:11:"delete_post";s:11:"delete_post";s:10:"edit_posts";s:10:"edit_posts";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:4:"read";s:4:"read";s:12:"delete_posts";s:12:"delete_posts";s:20:"delete_private_posts";s:20:"delete_private_posts";s:22:"delete_published_posts";s:22:"delete_published_posts";s:19:"delete_others_posts";s:19:"delete_others_posts";s:18:"edit_private_posts";s:18:"edit_private_posts";s:20:"edit_published_posts";s:20:"edit_published_posts";s:12:"create_posts";s:12:"upload_files";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:1;s:16:"delete_with_user";b:1;s:12:"show_in_rest";b:1;s:9:"rest_base";s:5:"media";s:8:"_builtin";b:1;s:10:"_edit_link";s:16:"post.php?post=%d";}s:8:"revision";O:8:"stdClass":25:{s:4:"name";s:8:"revision";s:5:"label";s:9:"Revisões";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:9:"Revisões";s:13:"singular_name";s:8:"Revisão";s:7:"add_new";s:14:"Adicionar novo";s:12:"add_new_item";s:19:"Adicionar novo post";s:9:"edit_item";s:11:"Editar post";s:8:"new_item";s:9:"Novo post";s:9:"view_item";s:8:"Ver Post";s:10:"view_items";s:9:"Ver posts";s:12:"search_items";s:15:"Pesquisar posts";s:9:"not_found";s:23:"Nenhum post encontrado.";s:18:"not_found_in_trash";s:34:"Nenhum post encontrado na lixeira.";s:17:"parent_item_colon";N;s:9:"all_items";s:9:"Revisões";s:8:"archives";s:9:"Revisões";s:10:"attributes";s:17:"Atributos do post";s:16:"insert_into_item";s:15:"Inserir no post";s:21:"uploaded_to_this_item";s:20:"Anexadas a este post";s:14:"featured_image";s:16:"Imagem destacada";s:18:"set_featured_image";s:24:"Definir imagem destacada";s:21:"remove_featured_image";s:24:"Remover imagem destacada";s:18:"use_featured_image";s:26:"Usar como imagem destacada";s:17:"filter_items_list";s:22:"Filtrar lista de posts";s:21:"items_list_navigation";s:29:"Navegação da lista de posts";s:10:"items_list";s:14:"Lista de posts";s:9:"menu_name";s:9:"Revisões";s:14:"name_admin_bar";s:8:"Revisão";}s:11:"description";s:0:"";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:9:"edit_post";s:9:"read_post";s:9:"read_post";s:11:"delete_post";s:11:"delete_post";s:10:"edit_posts";s:10:"edit_posts";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:4:"read";s:4:"read";s:12:"delete_posts";s:12:"delete_posts";s:20:"delete_private_posts";s:20:"delete_private_posts";s:22:"delete_published_posts";s:22:"delete_published_posts";s:19:"delete_others_posts";s:19:"delete_others_posts";s:18:"edit_private_posts";s:18:"edit_private_posts";s:20:"edit_published_posts";s:20:"edit_published_posts";s:12:"create_posts";s:10:"edit_posts";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:0;s:16:"delete_with_user";b:1;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:1;s:10:"_edit_link";s:24:"revision.php?revision=%d";}s:13:"nav_menu_item";O:8:"stdClass":26:{s:4:"name";s:13:"nav_menu_item";s:5:"label";s:13:"Itens do menu";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:13:"Itens do menu";s:13:"singular_name";s:12:"Item do menu";s:7:"add_new";s:14:"Adicionar novo";s:12:"add_new_item";s:19:"Adicionar novo post";s:9:"edit_item";s:11:"Editar post";s:8:"new_item";s:9:"Novo post";s:9:"view_item";s:8:"Ver Post";s:10:"view_items";s:9:"Ver posts";s:12:"search_items";s:15:"Pesquisar posts";s:9:"not_found";s:23:"Nenhum post encontrado.";s:18:"not_found_in_trash";s:34:"Nenhum post encontrado na lixeira.";s:17:"parent_item_colon";N;s:9:"all_items";s:13:"Itens do menu";s:8:"archives";s:13:"Itens do menu";s:10:"attributes";s:17:"Atributos do post";s:16:"insert_into_item";s:15:"Inserir no post";s:21:"uploaded_to_this_item";s:20:"Anexadas a este post";s:14:"featured_image";s:16:"Imagem destacada";s:18:"set_featured_image";s:24:"Definir imagem destacada";s:21:"remove_featured_image";s:24:"Remover imagem destacada";s:18:"use_featured_image";s:26:"Usar como imagem destacada";s:17:"filter_items_list";s:22:"Filtrar lista de posts";s:21:"items_list_navigation";s:29:"Navegação da lista de posts";s:10:"items_list";s:14:"Lista de posts";s:9:"menu_name";s:13:"Itens do menu";s:14:"name_admin_bar";s:12:"Item do menu";}s:11:"description";s:0:"";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:8:"supports";a:0:{}s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:9:"edit_post";s:9:"read_post";s:9:"read_post";s:11:"delete_post";s:11:"delete_post";s:10:"edit_posts";s:10:"edit_posts";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:4:"read";s:4:"read";s:12:"delete_posts";s:12:"delete_posts";s:20:"delete_private_posts";s:20:"delete_private_posts";s:22:"delete_published_posts";s:22:"delete_published_posts";s:19:"delete_others_posts";s:19:"delete_others_posts";s:18:"edit_private_posts";s:18:"edit_private_posts";s:20:"edit_published_posts";s:20:"edit_published_posts";s:12:"create_posts";s:10:"edit_posts";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:1;s:16:"delete_with_user";b:0;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:1;s:10:"_edit_link";s:0:"";}s:10:"custom_css";O:8:"stdClass":25:{s:4:"name";s:10:"custom_css";s:5:"label";s:17:"CSS personalizado";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:17:"CSS personalizado";s:13:"singular_name";s:17:"CSS personalizado";s:7:"add_new";s:14:"Adicionar novo";s:12:"add_new_item";s:19:"Adicionar novo post";s:9:"edit_item";s:11:"Editar post";s:8:"new_item";s:9:"Novo post";s:9:"view_item";s:8:"Ver Post";s:10:"view_items";s:9:"Ver posts";s:12:"search_items";s:15:"Pesquisar posts";s:9:"not_found";s:23:"Nenhum post encontrado.";s:18:"not_found_in_trash";s:34:"Nenhum post encontrado na lixeira.";s:17:"parent_item_colon";N;s:9:"all_items";s:17:"CSS personalizado";s:8:"archives";s:17:"CSS personalizado";s:10:"attributes";s:17:"Atributos do post";s:16:"insert_into_item";s:15:"Inserir no post";s:21:"uploaded_to_this_item";s:20:"Anexadas a este post";s:14:"featured_image";s:16:"Imagem destacada";s:18:"set_featured_image";s:24:"Definir imagem destacada";s:21:"remove_featured_image";s:24:"Remover imagem destacada";s:18:"use_featured_image";s:26:"Usar como imagem destacada";s:17:"filter_items_list";s:22:"Filtrar lista de posts";s:21:"items_list_navigation";s:29:"Navegação da lista de posts";s:10:"items_list";s:14:"Lista de posts";s:9:"menu_name";s:17:"CSS personalizado";s:14:"name_admin_bar";s:17:"CSS personalizado";}s:11:"description";s:0:"";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":13:{s:9:"edit_post";s:8:"edit_css";s:9:"read_post";s:4:"read";s:11:"delete_post";s:18:"edit_theme_options";s:10:"edit_posts";s:8:"edit_css";s:17:"edit_others_posts";s:8:"edit_css";s:13:"publish_posts";s:18:"edit_theme_options";s:18:"read_private_posts";s:4:"read";s:12:"delete_posts";s:18:"edit_theme_options";s:22:"delete_published_posts";s:18:"edit_theme_options";s:20:"delete_private_posts";s:18:"edit_theme_options";s:19:"delete_others_posts";s:18:"edit_theme_options";s:20:"edit_published_posts";s:8:"edit_css";s:12:"create_posts";s:8:"edit_css";}s:12:"map_meta_cap";b:0;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:1;s:16:"delete_with_user";b:0;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:1;s:10:"_edit_link";s:0:"";}s:19:"customize_changeset";O:8:"stdClass":25:{s:4:"name";s:19:"customize_changeset";s:5:"label";s:25:"Conjuntos de alterações";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:25:"Conjuntos de alterações";s:13:"singular_name";s:24:"Conjunto de alterações";s:7:"add_new";s:14:"Adicionar novo";s:12:"add_new_item";s:38:"Adicionar novo conjunto de alteração";s:9:"edit_item";s:30:"Editar conjunto de alteração";s:8:"new_item";s:28:"Novo conjunto de alteração";s:9:"view_item";s:28:"Ver conjunto de alteração.";s:10:"view_items";s:9:"Ver posts";s:12:"search_items";s:35:"Pesquisar conjuntos de alterações";s:9:"not_found";s:43:"Nenhum conjunto de alterações encontrado.";s:18:"not_found_in_trash";s:54:"Nenhum conjunto de alterações encontrado na lixeira.";s:17:"parent_item_colon";N;s:9:"all_items";s:34:"Todos os conjuntos de alterações";s:8:"archives";s:34:"Todos os conjuntos de alterações";s:10:"attributes";s:17:"Atributos do post";s:16:"insert_into_item";s:15:"Inserir no post";s:21:"uploaded_to_this_item";s:20:"Anexadas a este post";s:14:"featured_image";s:16:"Imagem destacada";s:18:"set_featured_image";s:24:"Definir imagem destacada";s:21:"remove_featured_image";s:24:"Remover imagem destacada";s:18:"use_featured_image";s:26:"Usar como imagem destacada";s:17:"filter_items_list";s:22:"Filtrar lista de posts";s:21:"items_list_navigation";s:29:"Navegação da lista de posts";s:10:"items_list";s:14:"Lista de posts";s:9:"menu_name";s:25:"Conjuntos de alterações";s:14:"name_admin_bar";s:24:"Conjunto de alterações";}s:11:"description";s:0:"";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:15:"capability_type";s:19:"customize_changeset";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:9:"customize";s:9:"read_post";s:9:"customize";s:11:"delete_post";s:9:"customize";s:10:"edit_posts";s:9:"customize";s:17:"edit_others_posts";s:9:"customize";s:13:"publish_posts";s:9:"customize";s:18:"read_private_posts";s:9:"customize";s:4:"read";s:4:"read";s:12:"delete_posts";s:9:"customize";s:20:"delete_private_posts";s:9:"customize";s:22:"delete_published_posts";s:9:"customize";s:19:"delete_others_posts";s:9:"customize";s:18:"edit_private_posts";s:9:"customize";s:20:"edit_published_posts";s:12:"do_not_allow";s:12:"create_posts";s:9:"customize";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:0;s:16:"delete_with_user";b:0;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:1;s:10:"_edit_link";s:0:"";}s:12:"oembed_cache";O:8:"stdClass":26:{s:4:"name";s:12:"oembed_cache";s:5:"label";s:19:"Respostas do oEmbed";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:19:"Respostas do oEmbed";s:13:"singular_name";s:18:"Resposta do oEmbed";s:7:"add_new";s:14:"Adicionar novo";s:12:"add_new_item";s:19:"Adicionar novo post";s:9:"edit_item";s:11:"Editar post";s:8:"new_item";s:9:"Novo post";s:9:"view_item";s:8:"Ver Post";s:10:"view_items";s:9:"Ver posts";s:12:"search_items";s:15:"Pesquisar posts";s:9:"not_found";s:23:"Nenhum post encontrado.";s:18:"not_found_in_trash";s:34:"Nenhum post encontrado na lixeira.";s:17:"parent_item_colon";N;s:9:"all_items";s:19:"Respostas do oEmbed";s:8:"archives";s:19:"Respostas do oEmbed";s:10:"attributes";s:17:"Atributos do post";s:16:"insert_into_item";s:15:"Inserir no post";s:21:"uploaded_to_this_item";s:20:"Anexadas a este post";s:14:"featured_image";s:16:"Imagem destacada";s:18:"set_featured_image";s:24:"Definir imagem destacada";s:21:"remove_featured_image";s:24:"Remover imagem destacada";s:18:"use_featured_image";s:26:"Usar como imagem destacada";s:17:"filter_items_list";s:22:"Filtrar lista de posts";s:21:"items_list_navigation";s:29:"Navegação da lista de posts";s:10:"items_list";s:14:"Lista de posts";s:9:"menu_name";s:19:"Respostas do oEmbed";s:14:"name_admin_bar";s:18:"Resposta do oEmbed";}s:11:"description";s:0:"";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:8:"supports";a:0:{}s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:9:"edit_post";s:9:"read_post";s:9:"read_post";s:11:"delete_post";s:11:"delete_post";s:10:"edit_posts";s:10:"edit_posts";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:4:"read";s:4:"read";s:12:"delete_posts";s:12:"delete_posts";s:20:"delete_private_posts";s:20:"delete_private_posts";s:22:"delete_published_posts";s:22:"delete_published_posts";s:19:"delete_others_posts";s:19:"delete_others_posts";s:18:"edit_private_posts";s:18:"edit_private_posts";s:20:"edit_published_posts";s:20:"edit_published_posts";s:12:"create_posts";s:10:"edit_posts";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:0;s:16:"delete_with_user";b:0;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:1;s:10:"_edit_link";s:0:"";}s:18:"wpcf7_contact_form";O:8:"stdClass":25:{s:4:"name";s:18:"wpcf7_contact_form";s:5:"label";s:23:"Formulários de contato";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:23:"Formulários de contato";s:13:"singular_name";s:22:"Formulário de contato";s:7:"add_new";s:14:"Adicionar novo";s:12:"add_new_item";s:19:"Adicionar novo post";s:9:"edit_item";s:11:"Editar post";s:8:"new_item";s:9:"Novo post";s:9:"view_item";s:8:"Ver Post";s:10:"view_items";s:9:"Ver posts";s:12:"search_items";s:15:"Pesquisar posts";s:9:"not_found";s:23:"Nenhum post encontrado.";s:18:"not_found_in_trash";s:34:"Nenhum post encontrado na lixeira.";s:17:"parent_item_colon";N;s:9:"all_items";s:23:"Formulários de contato";s:8:"archives";s:23:"Formulários de contato";s:10:"attributes";s:17:"Atributos do post";s:16:"insert_into_item";s:15:"Inserir no post";s:21:"uploaded_to_this_item";s:20:"Anexadas a este post";s:14:"featured_image";s:16:"Imagem destacada";s:18:"set_featured_image";s:24:"Definir imagem destacada";s:21:"remove_featured_image";s:24:"Remover imagem destacada";s:18:"use_featured_image";s:26:"Usar como imagem destacada";s:17:"filter_items_list";s:22:"Filtrar lista de posts";s:21:"items_list_navigation";s:29:"Navegação da lista de posts";s:10:"items_list";s:14:"Lista de posts";s:9:"menu_name";s:23:"Formulários de contato";s:14:"name_admin_bar";s:22:"Formulário de contato";}s:11:"description";s:0:"";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:8:"supports";a:0:{}s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":15:{s:9:"edit_post";s:9:"edit_post";s:9:"read_post";s:9:"read_post";s:11:"delete_post";s:11:"delete_post";s:10:"edit_posts";s:10:"edit_posts";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:4:"read";s:4:"read";s:12:"delete_posts";s:12:"delete_posts";s:20:"delete_private_posts";s:20:"delete_private_posts";s:22:"delete_published_posts";s:22:"delete_published_posts";s:19:"delete_others_posts";s:19:"delete_others_posts";s:18:"edit_private_posts";s:18:"edit_private_posts";s:20:"edit_published_posts";s:20:"edit_published_posts";s:12:"create_posts";s:10:"edit_posts";}s:12:"map_meta_cap";b:1;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";b:0;s:10:"can_export";b:1;s:12:"show_in_rest";b:0;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:0:"";}s:12:"jp_pay_order";O:8:"stdClass":24:{s:4:"name";s:12:"jp_pay_order";s:5:"label";s:5:"Ordem";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:5:"Ordem";s:13:"singular_name";s:5:"Ordem";s:7:"add_new";s:14:"Adicionar novo";s:12:"add_new_item";s:19:"Adicionar novo post";s:9:"edit_item";s:11:"Editar post";s:8:"new_item";s:9:"Novo post";s:9:"view_item";s:8:"Ver Post";s:10:"view_items";s:9:"Ver posts";s:12:"search_items";s:15:"Pesquisar posts";s:9:"not_found";s:23:"Nenhum post encontrado.";s:18:"not_found_in_trash";s:34:"Nenhum post encontrado na lixeira.";s:17:"parent_item_colon";N;s:9:"all_items";s:5:"Ordem";s:8:"archives";s:5:"Ordem";s:10:"attributes";s:17:"Atributos do post";s:16:"insert_into_item";s:15:"Inserir no post";s:21:"uploaded_to_this_item";s:20:"Anexadas a este post";s:14:"featured_image";s:16:"Imagem destacada";s:18:"set_featured_image";s:24:"Definir imagem destacada";s:21:"remove_featured_image";s:24:"Remover imagem destacada";s:18:"use_featured_image";s:26:"Usar como imagem destacada";s:17:"filter_items_list";s:22:"Filtrar lista de posts";s:21:"items_list_navigation";s:29:"Navegação da lista de posts";s:10:"items_list";s:14:"Lista de posts";s:9:"menu_name";s:5:"Ordem";s:14:"name_admin_bar";s:5:"Ordem";}s:11:"description";s:34:"Pedidos com pagamento simplificado";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":8:{s:9:"edit_post";s:10:"edit_posts";s:9:"read_post";s:18:"read_private_posts";s:11:"delete_post";s:12:"delete_posts";s:10:"edit_posts";s:10:"edit_posts";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:12:"create_posts";s:10:"edit_posts";}s:12:"map_meta_cap";b:0;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";s:12:"jp_pay_order";s:10:"can_export";b:1;s:12:"show_in_rest";b:1;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:0:"";}s:14:"jp_pay_product";O:8:"stdClass":24:{s:4:"name";s:14:"jp_pay_product";s:5:"label";s:7:"Produto";s:6:"labels";O:8:"stdClass":26:{s:4:"name";s:7:"Produto";s:13:"singular_name";s:7:"Produto";s:7:"add_new";s:14:"Adicionar novo";s:12:"add_new_item";s:19:"Adicionar novo post";s:9:"edit_item";s:11:"Editar post";s:8:"new_item";s:9:"Novo post";s:9:"view_item";s:8:"Ver Post";s:10:"view_items";s:9:"Ver posts";s:12:"search_items";s:15:"Pesquisar posts";s:9:"not_found";s:23:"Nenhum post encontrado.";s:18:"not_found_in_trash";s:34:"Nenhum post encontrado na lixeira.";s:17:"parent_item_colon";N;s:9:"all_items";s:7:"Produto";s:8:"archives";s:7:"Produto";s:10:"attributes";s:17:"Atributos do post";s:16:"insert_into_item";s:15:"Inserir no post";s:21:"uploaded_to_this_item";s:20:"Anexadas a este post";s:14:"featured_image";s:16:"Imagem destacada";s:18:"set_featured_image";s:24:"Definir imagem destacada";s:21:"remove_featured_image";s:24:"Remover imagem destacada";s:18:"use_featured_image";s:26:"Usar como imagem destacada";s:17:"filter_items_list";s:22:"Filtrar lista de posts";s:21:"items_list_navigation";s:29:"Navegação da lista de posts";s:10:"items_list";s:14:"Lista de posts";s:9:"menu_name";s:7:"Produto";s:14:"name_admin_bar";s:7:"Produto";}s:11:"description";s:35:"Produtos com pagamento simplificado";s:6:"public";b:0;s:12:"hierarchical";b:0;s:19:"exclude_from_search";b:1;s:18:"publicly_queryable";b:0;s:7:"show_ui";b:0;s:12:"show_in_menu";b:0;s:17:"show_in_nav_menus";b:0;s:17:"show_in_admin_bar";b:0;s:15:"capability_type";s:4:"post";s:3:"cap";O:8:"stdClass":8:{s:9:"edit_post";s:10:"edit_posts";s:9:"read_post";s:18:"read_private_posts";s:11:"delete_post";s:12:"delete_posts";s:10:"edit_posts";s:10:"edit_posts";s:17:"edit_others_posts";s:17:"edit_others_posts";s:13:"publish_posts";s:13:"publish_posts";s:18:"read_private_posts";s:18:"read_private_posts";s:12:"create_posts";s:10:"edit_posts";}s:12:"map_meta_cap";b:0;s:10:"taxonomies";a:0:{}s:11:"has_archive";b:0;s:7:"rewrite";b:0;s:9:"query_var";s:14:"jp_pay_product";s:10:"can_export";b:1;s:12:"show_in_rest";b:1;s:9:"rest_base";b:0;s:8:"_builtin";b:0;s:10:"_edit_link";s:0:"";}}}i:2;i:1;i:3;d:1527713271.813951015472412109375;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(680, 'jpsq_sync-1527713271,825074-464124-27', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:18:"post_type_features";i:1;a:13:{s:4:"post";a:11:{s:5:"title";b:1;s:6:"editor";b:1;s:6:"author";b:1;s:9:"thumbnail";b:1;s:7:"excerpt";b:1;s:10:"trackbacks";b:1;s:13:"custom-fields";b:1;s:8:"comments";b:1;s:9:"revisions";b:1;s:12:"post-formats";b:1;s:16:"pagefrog_preview";b:1;}s:4:"page";a:8:{s:5:"title";b:1;s:6:"editor";b:1;s:6:"author";b:1;s:9:"thumbnail";b:1;s:15:"page-attributes";b:1;s:13:"custom-fields";b:1;s:8:"comments";b:1;s:9:"revisions";b:1;}s:10:"attachment";a:3:{s:5:"title";b:1;s:6:"author";b:1;s:8:"comments";b:1;}s:16:"attachment:audio";a:1:{s:9:"thumbnail";b:1;}s:16:"attachment:video";a:1:{s:9:"thumbnail";b:1;}s:8:"revision";a:1:{s:6:"author";b:1;}s:13:"nav_menu_item";a:2:{s:5:"title";b:1;s:6:"editor";b:1;}s:10:"custom_css";a:2:{s:5:"title";b:1;s:9:"revisions";b:1;}s:19:"customize_changeset";a:2:{s:5:"title";b:1;s:6:"author";b:1;}s:12:"oembed_cache";a:2:{s:5:"title";b:1;s:6:"editor";b:1;}s:18:"wpcf7_contact_form";a:2:{s:5:"title";b:1;s:6:"editor";b:1;}s:12:"jp_pay_order";a:2:{s:13:"custom-fields";b:1;s:7:"excerpt";b:1;}s:14:"jp_pay_product";a:5:{s:5:"title";b:1;s:6:"editor";b:1;s:9:"thumbnail";b:1;s:13:"custom-fields";b:1;s:6:"author";b:1;}}}i:2;i:1;i:3;d:1527713271.8248689174652099609375;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(681, 'jpsq_sync-1527713271,826819-464124-28', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:10:"shortcodes";i:1;a:12:{i:0;s:10:"wp_caption";i:1;s:7:"caption";i:2;s:7:"gallery";i:3;s:8:"playlist";i:4;s:5:"audio";i:5;s:5:"video";i:6;s:5:"embed";i:7;s:17:"cf7-db-display-ip";i:8;s:14:"contact-form-7";i:9;s:12:"contact-form";i:10;s:16:"wpseo_breadcrumb";i:11;s:14:"simple-payment";}}i:2;i:1;i:3;d:1527713271.8266069889068603515625;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(682, 'jpsq_sync-1527713271,829210-464124-29', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:27:"rest_api_allowed_post_types";i:1;a:7:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:8:"revision";i:3;s:13:"jetpack-comic";i:4;s:19:"jetpack-testimonial";i:5;s:12:"jp_pay_order";i:6;s:14:"jp_pay_product";}}i:2;i:1;i:3;d:1527713271.8289649486541748046875;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(683, 'jpsq_sync-1527713271,830671-464124-30', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:32:"rest_api_allowed_public_metadata";i:1;a:0:{}}i:2;i:1;i:3;d:1527713271.8304259777069091796875;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(684, 'jpsq_sync-1527713271,834282-464124-31', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:24:"sso_is_two_step_required";i:1;b:0;}i:2;i:1;i:3;d:1527713271.83386993408203125;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(685, 'jpsq_sync-1527713271,835808-464124-32', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:26:"sso_should_hide_login_form";i:1;b:0;}i:2;i:1;i:3;d:1527713271.83557796478271484375;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(686, 'jpsq_sync-1527713271,839325-464124-33', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:18:"sso_match_by_email";i:1;b:1;}i:2;i:1;i:3;d:1527713271.8389949798583984375;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(687, 'jpsq_sync-1527713271,841562-464124-34', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:21:"sso_new_user_override";i:1;b:0;}i:2;i:1;i:3;d:1527713271.84113311767578125;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(688, 'jpsq_sync-1527713271,844435-464124-35', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:29:"sso_bypass_default_login_form";i:1;b:0;}i:2;i:1;i:3;d:1527713271.844088077545166015625;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(689, 'jpsq_sync-1527713271,846077-464124-36', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:10:"wp_version";i:1;s:5:"4.9.5";}i:2;i:1;i:3;d:1527713271.84584903717041015625;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no') ;
INSERT INTO `fc_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(690, 'jpsq_sync-1527713271,849581-464124-37', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:11:"get_plugins";i:1;a:33:{s:65:"add-featured-image-to-rss-feed/add-featured-image-to-rss-feed.php";a:11:{s:4:"Name";s:30:"Add featured image to RSS feed";s:9:"PluginURI";s:43:"http://www.tacticaltechnique.com/wordpress/";s:7:"Version";s:3:"1.0";s:11:"Description";s:63:"Adds the featured image attached to your posts to the RSS feed.";s:6:"Author";s:13:"Corey Salzano";s:9:"AuthorURI";s:26:"http://twitter.com/salzano";s:10:"TextDomain";s:30:"add-featured-image-to-rss-feed";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:30:"Add featured image to RSS feed";s:10:"AuthorName";s:13:"Corey Salzano";}s:35:"advanced-cf7-db/advanced-cf7-db.php";a:11:{s:4:"Name";s:15:"Advanced CF7 DB";s:9:"PluginURI";s:46:"https://wordpress.org/plugins/advanced-cf7-db/";s:7:"Version";s:5:"1.4.0";s:11:"Description";s:135:"Save all contact form 7 submitted data to the database, View, Export, ordering, Change field labels, Import data using CSV very easily.";s:6:"Author";s:14:"Vsourz Digital";s:9:"AuthorURI";s:22:"https://www.vsourz.com";s:10:"TextDomain";s:15:"advanced-cf7-db";s:10:"DomainPath";s:10:"/languages";s:7:"Network";b:0;s:5:"Title";s:15:"Advanced CF7 DB";s:10:"AuthorName";s:14:"Vsourz Digital";}s:30:"advanced-custom-fields/acf.php";a:11:{s:4:"Name";s:22:"Advanced Custom Fields";s:9:"PluginURI";s:36:"http://www.advancedcustomfields.com/";s:7:"Version";s:6:"4.4.12";s:11:"Description";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:6:"Author";s:13:"Elliot Condon";s:9:"AuthorURI";s:28:"http://www.elliotcondon.com/";s:10:"TextDomain";s:3:"acf";s:10:"DomainPath";s:5:"/lang";s:7:"Network";b:0;s:5:"Title";s:22:"Advanced Custom Fields";s:10:"AuthorName";s:13:"Elliot Condon";}s:33:"acf-qtranslate/acf-qtranslate.php";a:11:{s:4:"Name";s:34:"Advanced Custom Fields: qTranslate";s:9:"PluginURI";s:41:"http://github.com/funkjedi/acf-qtranslate";s:7:"Version";s:6:"1.7.23";s:11:"Description";s:74:"Provides multilingual versions of the text, text area, and wysiwyg fields.";s:6:"Author";s:8:"funkjedi";s:9:"AuthorURI";s:19:"http://funkjedi.com";s:10:"TextDomain";s:14:"acf-qtranslate";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:34:"Advanced Custom Fields: qTranslate";s:10:"AuthorName";s:8:"funkjedi";}s:19:"akismet/akismet.php";a:11:{s:4:"Name";s:17:"Akismet Anti-Spam";s:9:"PluginURI";s:20:"https://akismet.com/";s:7:"Version";s:5:"4.0.7";s:11:"Description";s:327:"Usado por milhões, Akismet é possivelmente a melhor maneira do mundo para <strong>proteger seu blog contra spam</strong>. Ele mantém seu site protegido mesmo enquanto você dorme. Para começar, vá até <a href="admin.php?page=akismet-key-config">sua página de configurações do Akismet</a> para configurar sua chave API.";s:6:"Author";s:10:"Automattic";s:9:"AuthorURI";s:41:"https://automattic.com/wordpress-plugins/";s:10:"TextDomain";s:7:"akismet";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:17:"Akismet Anti-Spam";s:10:"AuthorName";s:10:"Automattic";}s:51:"all-in-one-wp-security-and-firewall/wp-security.php";a:11:{s:4:"Name";s:22:"All In One WP Security";s:9:"PluginURI";s:71:"https://www.tipsandtricks-hq.com/wordpress-security-and-firewall-plugin";s:7:"Version";s:7:"4.3.3.1";s:11:"Description";s:41:"All round best WordPress security plugin!";s:6:"Author";s:46:"Tips and Tricks HQ, Peter Petreski, Ruhul, Ivy";s:9:"AuthorURI";s:33:"https://www.tipsandtricks-hq.com/";s:10:"TextDomain";s:35:"all-in-one-wp-security-and-firewall";s:10:"DomainPath";s:10:"/languages";s:7:"Network";b:0;s:5:"Title";s:22:"All In One WP Security";s:10:"AuthorName";s:46:"Tips and Tricks HQ, Peter Petreski, Ruhul, Ivy";}s:27:"autoptimize/autoptimize.php";a:11:{s:4:"Name";s:11:"Autoptimize";s:9:"PluginURI";s:24:"https://autoptimize.com/";s:7:"Version";s:5:"2.3.4";s:11:"Description";s:86:"Optimizes your website, concatenating the CSS and JavaScript code, and compressing it.";s:6:"Author";s:23:"Frank Goossens (futtta)";s:9:"AuthorURI";s:24:"https://autoptimize.com/";s:10:"TextDomain";s:11:"autoptimize";s:10:"DomainPath";s:13:"localization/";s:7:"Network";b:0;s:5:"Title";s:11:"Autoptimize";s:10:"AuthorName";s:23:"Frank Goossens (futtta)";}s:37:"breadcrumb-navxt/breadcrumb-navxt.php";a:11:{s:4:"Name";s:16:"Breadcrumb NavXT";s:9:"PluginURI";s:38:"http://mtekk.us/code/breadcrumb-navxt/";s:7:"Version";s:5:"6.0.4";s:11:"Description";s:201:"Adds a breadcrumb navigation showing the visitor&#39;s path to their current location. For details on how to use this plugin visit <a href="http://mtekk.us/code/breadcrumb-navxt/">Breadcrumb NavXT</a>.";s:6:"Author";s:11:"John Havlik";s:9:"AuthorURI";s:16:"http://mtekk.us/";s:10:"TextDomain";s:16:"breadcrumb-navxt";s:10:"DomainPath";s:10:"/languages";s:7:"Network";b:0;s:5:"Title";s:16:"Breadcrumb NavXT";s:10:"AuthorName";s:11:"John Havlik";}s:45:"taxonomy-terms-order/taxonomy-terms-order.php";a:11:{s:4:"Name";s:39:"Category Order and Taxonomy Terms Order";s:9:"PluginURI";s:23:"http://www.nsp-code.com";s:7:"Version";s:7:"1.5.3.2";s:11:"Description";s:135:"Order Categories and all custom taxonomies terms (hierarchically) and child terms using a Drag and Drop Sortable javascript capability.";s:6:"Author";s:8:"Nsp-Code";s:9:"AuthorURI";s:23:"http://www.nsp-code.com";s:10:"TextDomain";s:20:"taxonomy-terms-order";s:10:"DomainPath";s:11:"/languages/";s:7:"Network";b:0;s:5:"Title";s:39:"Category Order and Taxonomy Terms Order";s:10:"AuthorName";s:8:"Nsp-Code";}s:36:"contact-form-7/wp-contact-form-7.php";a:11:{s:4:"Name";s:14:"Contact Form 7";s:9:"PluginURI";s:25:"https://contactform7.com/";s:7:"Version";s:5:"5.0.2";s:11:"Description";s:54:"Just another contact form plugin. Simple but flexible.";s:6:"Author";s:16:"Takayuki Miyoshi";s:9:"AuthorURI";s:31:"https://ideasilo.wordpress.com/";s:10:"TextDomain";s:14:"contact-form-7";s:10:"DomainPath";s:11:"/languages/";s:7:"Network";b:0;s:5:"Title";s:14:"Contact Form 7";s:10:"AuthorName";s:16:"Takayuki Miyoshi";}s:43:"custom-post-type-ui/custom-post-type-ui.php";a:11:{s:4:"Name";s:19:"Custom Post Type UI";s:9:"PluginURI";s:53:"https://github.com/WebDevStudios/custom-post-type-ui/";s:7:"Version";s:5:"1.5.8";s:11:"Description";s:77:"Admin panel for creating custom post types and custom taxonomies in WordPress";s:6:"Author";s:13:"WebDevStudios";s:9:"AuthorURI";s:26:"https://webdevstudios.com/";s:10:"TextDomain";s:19:"custom-post-type-ui";s:10:"DomainPath";s:10:"/languages";s:7:"Network";b:0;s:5:"Title";s:19:"Custom Post Type UI";s:10:"AuthorName";s:13:"WebDevStudios";}s:45:"acf-date-time-picker/acf-date_time_picker.php";a:11:{s:4:"Name";s:45:"Date & Time Picker for Advanced Custom Fields";s:9:"PluginURI";s:47:"https://github.com/toszcze/acf-date-time-picker";s:7:"Version";s:5:"1.1.4";s:11:"Description";s:65:"Date & Time Picker field for Advanced Custom Fields 4 and 5 (Pro)";s:6:"Author";s:18:"Bartosz Romanowski";s:9:"AuthorURI";s:21:"http://romanowski.im/";s:10:"TextDomain";s:20:"acf-date-time-picker";s:10:"DomainPath";s:11:"/languages/";s:7:"Network";b:0;s:5:"Title";s:45:"Date & Time Picker for Advanced Custom Fields";s:10:"AuthorName";s:18:"Bartosz Romanowski";}s:71:"yikes-inc-easy-mailchimp-extender/yikes-inc-easy-mailchimp-extender.php";a:11:{s:4:"Name";s:24:"Easy Forms for MailChimp";s:9:"PluginURI";s:57:"https://yikesplugins.com/plugin/easy-forms-for-mailchimp/";s:7:"Version";s:5:"6.4.3";s:11:"Description";s:349:"The ultimate MailChimp WordPress plugin. Easily build <strong>unlimited forms for your MailChimp lists</strong>, add them to your site and track subscriber activity. To get started, go to the settings page and enter your <a href="https://yikesplugins.com/support/knowledge-base/finding-your-mailchimp-api-key/" target="_blank">MailChimp API key</a>.";s:6:"Author";s:11:"YIKES, Inc.";s:9:"AuthorURI";s:29:"https://www.yikesplugins.com/";s:10:"TextDomain";s:33:"yikes-inc-easy-mailchimp-extender";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:24:"Easy Forms for MailChimp";s:10:"AuthorName";s:11:"YIKES, Inc.";}s:29:"easy-wp-smtp/easy-wp-smtp.php";a:11:{s:4:"Name";s:12:"Easy WP SMTP";s:9:"PluginURI";s:106:"https://wp-ecommerce.net/easy-wordpress-smtp-send-emails-from-your-wordpress-site-using-a-smtp-server-2197";s:7:"Version";s:5:"1.3.6";s:11:"Description";s:44:"Send email via SMTP from your WordPress Blog";s:6:"Author";s:26:"wpecommerce, alexanderfoxc";s:9:"AuthorURI";s:25:"https://wp-ecommerce.net/";s:10:"TextDomain";s:12:"easy-wp-smtp";s:10:"DomainPath";s:10:"/languages";s:7:"Network";b:0;s:5:"Title";s:12:"Easy WP SMTP";s:10:"AuthorName";s:26:"wpecommerce, alexanderfoxc";}s:21:"pagefrog/pagefrog.php";a:11:{s:4:"Name";s:56:"Facebook Instant Articles & Google AMP Pages by PageFrog";s:9:"PluginURI";s:20:"http://pagefrog.com/";s:7:"Version";s:5:"1.0.9";s:11:"Description";s:216:"The PageFrog plugin allows you to easily publish and manage your content directly from WordPress for Facebook Instant Articles (FBIA) and Google Accelerated Mobile Pages (AMP) with full support for ads and analytics.";s:6:"Author";s:13:"PageFrog Team";s:9:"AuthorURI";s:20:"http://pagefrog.com/";s:10:"TextDomain";s:8:"pagefrog";s:10:"DomainPath";s:10:"/languages";s:7:"Network";b:0;s:5:"Title";s:56:"Facebook Instant Articles & Google AMP Pages by PageFrog";s:10:"AuthorName";s:13:"PageFrog Team";}s:41:"fc-wp-complementos/fc-wp-complementos.php";a:11:{s:4:"Name";s:32:"FC - Complementos para Wordpress";s:9:"PluginURI";s:34:"http://www.fabricadecriacao.com.br";s:7:"Version";s:3:"0.1";s:11:"Description";s:47:"Plugin com complementos úteis para o Wordpress";s:6:"Author";s:33:"Alex Lana / Fábrica de Criação";s:9:"AuthorURI";s:34:"http://www.fabricadecriacao.com.br";s:10:"TextDomain";s:8:"fcwpcomp";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:32:"FC - Complementos para Wordpress";s:10:"AuthorName";s:33:"Alex Lana / Fábrica de Criação";}s:59:"force-regenerate-thumbnails/force-regenerate-thumbnails.php";a:11:{s:4:"Name";s:27:"Force Regenerate Thumbnails";s:9:"PluginURI";s:80:"http://pedroelsner.com/2012/08/forcando-a-atualizacao-de-thumbnails-no-wordpress";s:7:"Version";s:5:"2.0.6";s:11:"Description";s:49:"Delete and REALLY force the regenerate thumbnail.";s:6:"Author";s:12:"Pedro Elsner";s:9:"AuthorURI";s:27:"http://www.pedroelsner.com/";s:10:"TextDomain";s:27:"force-regenerate-thumbnails";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:27:"Force Regenerate Thumbnails";s:10:"AuthorName";s:12:"Pedro Elsner";}s:39:"glue-for-yoast-seo-amp/yoastseo-amp.php";a:11:{s:4:"Name";s:24:"Glue for Yoast SEO & AMP";s:9:"PluginURI";s:53:"https://wordpress.org/plugins/glue-for-yoast-seo-amp/";s:7:"Version";s:5:"0.4.3";s:11:"Description";s:78:"Makes sure the default WordPress AMP plugin uses the proper Yoast SEO metadata";s:6:"Author";s:13:"Joost de Valk";s:9:"AuthorURI";s:17:"https://yoast.com";s:10:"TextDomain";s:22:"glue-for-yoast-seo-amp";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:24:"Glue for Yoast SEO & AMP";s:10:"AuthorName";s:13:"Joost de Valk";}s:41:"google-tag-manager/google-tag-manager.php";a:11:{s:4:"Name";s:18:"Google Tag Manager";s:9:"PluginURI";s:55:"http://wordpress.org/extend/plugins/google-tag-manager/";s:7:"Version";s:5:"1.0.2";s:11:"Description";s:213:"This is an implementation of the new Tag Management system from Google. It adds a field to the existing General Settings page for the ID, and if specified, outputs the tag management javascript in the page footer.";s:6:"Author";s:16:"George Stephanis";s:9:"AuthorURI";s:21:"http://stephanis.info";s:10:"TextDomain";s:18:"google-tag-manager";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:18:"Google Tag Manager";s:10:"AuthorName";s:16:"George Stephanis";}s:37:"hotlinks-manager/hotlinks-manager.php";a:11:{s:4:"Name";s:16:"Hotlinks Manager";s:9:"PluginURI";s:0:"";s:7:"Version";s:3:"1.0";s:11:"Description";s:79:"Gerencia os Hotlinks - Basta ativar e utilizar o shortcode [hotlinks-generator]";s:6:"Author";s:15:"Apiki WordPress";s:9:"AuthorURI";s:17:"http://apiki.com/";s:10:"TextDomain";s:16:"hotlinks-manager";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:16:"Hotlinks Manager";s:10:"AuthorName";s:15:"Apiki WordPress";}s:25:"hotmart-wp/hotmart-wp.php";a:11:{s:4:"Name";s:10:"Hotmart WP";s:9:"PluginURI";s:41:"https://wordpress.org/plugins/hotmart-wp/";s:7:"Version";s:5:"0.3.3";s:11:"Description";s:25:"Hotmart\'s official plugin";s:6:"Author";s:7:"Hotmart";s:9:"AuthorURI";s:27:"https://www.hotmart.com/en/";s:10:"TextDomain";s:10:"hotmart-wp";s:10:"DomainPath";s:11:"/languages/";s:7:"Network";b:0;s:5:"Title";s:10:"Hotmart WP";s:10:"AuthorName";s:7:"Hotmart";}s:39:"im8-exclude-pages/im8-exclude-pages.php";a:11:{s:4:"Name";s:17:"IM8 Exclude Pages";s:9:"PluginURI";s:47:"http://wordpress.org/plugins/im8-exclude-pages/";s:7:"Version";s:3:"2.7";s:11:"Description";s:103:"Adds a meta box to the Edit Page page where you can set to show or exclude the page from page listings.";s:6:"Author";s:23:"intermedi8, ipm-frommen";s:9:"AuthorURI";s:20:"http://intermedi8.de";s:10:"TextDomain";s:17:"im8-exclude-pages";s:10:"DomainPath";s:10:"/languages";s:7:"Network";b:0;s:5:"Title";s:17:"IM8 Exclude Pages";s:10:"AuthorName";s:23:"intermedi8, ipm-frommen";}s:19:"jetpack/jetpack.php";a:11:{s:4:"Name";s:24:"Jetpack by WordPress.com";s:9:"PluginURI";s:19:"https://jetpack.com";s:7:"Version";s:5:"6.1.1";s:11:"Description";s:218:"Bring the power of the WordPress.com cloud to your self-hosted WordPress. Jetpack enables you to connect your blog to a WordPress.com account to use the powerful features normally only available to WordPress.com users.";s:6:"Author";s:10:"Automattic";s:9:"AuthorURI";s:19:"https://jetpack.com";s:10:"TextDomain";s:7:"jetpack";s:10:"DomainPath";s:11:"/languages/";s:7:"Network";b:0;s:5:"Title";s:24:"Jetpack by WordPress.com";s:10:"AuthorName";s:10:"Automattic";}s:23:"loco-translate/loco.php";a:11:{s:4:"Name";s:14:"Loco Translate";s:9:"PluginURI";s:45:"https://wordpress.org/plugins/loco-translate/";s:7:"Version";s:5:"2.1.4";s:11:"Description";s:50:"Translate themes and plugins directly in WordPress";s:6:"Author";s:12:"Tim Whitlock";s:9:"AuthorURI";s:37:"https://localise.biz/wordpress/plugin";s:10:"TextDomain";s:14:"loco-translate";s:10:"DomainPath";s:11:"/languages/";s:7:"Network";b:0;s:5:"Title";s:14:"Loco Translate";s:10:"AuthorName";s:12:"Tim Whitlock";}s:27:"p3-profiler/p3-profiler.php";a:11:{s:4:"Name";s:32:"P3 (Plugin Performance Profiler)";s:9:"PluginURI";s:55:"http://support.godaddy.com/godaddy/wordpress-p3-plugin/";s:7:"Version";s:7:"1.5.3.9";s:11:"Description";s:162:"See which plugins are slowing down your site.  Create a profile of your WordPress site\'s plugins\' performance by measuring their impact on your site\'s load time.";s:6:"Author";s:11:"GoDaddy.com";s:9:"AuthorURI";s:23:"http://www.godaddy.com/";s:10:"TextDomain";s:11:"p3-profiler";s:10:"DomainPath";s:10:"/languages";s:7:"Network";b:0;s:5:"Title";s:32:"P3 (Plugin Performance Profiler)";s:10:"AuthorName";s:11:"GoDaddy.com";}s:27:"qtranslate-x/qtranslate.php";a:11:{s:4:"Name";s:12:"qTranslate-X";s:9:"PluginURI";s:42:"http://wordpress.org/plugins/qtranslate-x/";s:7:"Version";s:7:"3.4.6.8";s:11:"Description";s:70:"Adds user-friendly and database-friendly multilingual content support.";s:6:"Author";s:15:"qTranslate Team";s:9:"AuthorURI";s:42:"http://qtranslatexteam.wordpress.com/about";s:10:"TextDomain";s:10:"qtranslate";s:10:"DomainPath";s:6:"/lang/";s:7:"Network";b:0;s:5:"Title";s:12:"qTranslate-X";s:10:"AuthorName";s:15:"qTranslate Team";}s:54:"jetpack-sharing-butttons-shortcode/jp-sd-shortcode.php";a:11:{s:4:"Name";s:37:"Sharing buttons shortcode for Jetpack";s:9:"PluginURI";s:64:"http://wordpress.org/plugins/jetpack-sharing-butttons-shortcode/";s:7:"Version";s:5:"1.2.2";s:11:"Description";s:125:"Extends the Jetpack plugin and allows you to add sharing buttons anywhere inside your posts thanks to the [jpshare] shortcode";s:6:"Author";s:12:"Jeremy Herve";s:9:"AuthorURI";s:16:"http://jeremy.hu";s:10:"TextDomain";s:7:"jetpack";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:37:"Sharing buttons shortcode for Jetpack";s:10:"AuthorName";s:12:"Jeremy Herve";}s:53:"simple-custom-post-order/simple-custom-post-order.php";a:11:{s:4:"Name";s:24:"Simple Custom Post Order";s:9:"PluginURI";s:58:"https://wordpress.org/plugins-wp/simple-custom-post-order/";s:7:"Version";s:5:"2.3.2";s:11:"Description";s:92:"Order Items (Posts, Pages, and Custom Post Types) using a Drag and Drop Sortable JavaScript.";s:6:"Author";s:8:"Colorlib";s:9:"AuthorURI";s:24:"https://colorlib.com/wp/";s:10:"TextDomain";s:24:"simple-custom-post-order";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:24:"Simple Custom Post Order";s:10:"AuthorName";s:8:"Colorlib";}s:37:"user-role-editor/user-role-editor.php";a:11:{s:4:"Name";s:16:"User Role Editor";s:9:"PluginURI";s:27:"https://www.role-editor.com";s:7:"Version";s:4:"4.42";s:11:"Description";s:56:"Change/add/delete WordPress user roles and capabilities.";s:6:"Author";s:18:"Vladimir Garagulya";s:9:"AuthorURI";s:27:"https://www.role-editor.com";s:10:"TextDomain";s:16:"user-role-editor";s:10:"DomainPath";s:6:"/lang/";s:7:"Network";b:0;s:5:"Title";s:16:"User Role Editor";s:10:"AuthorName";s:18:"Vladimir Garagulya";}s:33:"w3-total-cache/w3-total-cache.php";a:11:{s:4:"Name";s:14:"W3 Total Cache";s:9:"PluginURI";s:57:"https://www.w3-edge.com/wordpress-plugins/w3-total-cache/";s:7:"Version";s:5:"0.9.7";s:11:"Description";s:244:"The highest rated and most complete WordPress performance plugin. Dramatically improve the speed and user experience of your site. Add browser, page, object and database caching as well as minify and content delivery network (CDN) to WordPress.";s:6:"Author";s:16:"Frederick Townes";s:9:"AuthorURI";s:42:"http://www.linkedin.com/in/fredericktownes";s:10:"TextDomain";s:14:"w3-total-cache";s:10:"DomainPath";s:0:"";s:7:"Network";b:1;s:5:"Title";s:14:"W3 Total Cache";s:10:"AuthorName";s:16:"Frederick Townes";}s:45:"wordpress-media-tags/wordpress-media-tags.php";a:11:{s:4:"Name";s:20:"WordPress Media Tags";s:9:"PluginURI";s:64:"http://www.typomedia.org/wordpress/plugins/wordpress-media-tags/";s:7:"Version";s:3:"1.5";s:11:"Description";s:84:"This plugin gives you the ability to use <code>Media Tags</code> for any attachment.";s:6:"Author";s:20:"Typomedia Foundation";s:9:"AuthorURI";s:25:"http://www.typomedia.org/";s:10:"TextDomain";s:20:"wordpress-media-tags";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:5:"Title";s:20:"WordPress Media Tags";s:10:"AuthorName";s:20:"Typomedia Foundation";}s:31:"wp-migrate-db/wp-migrate-db.php";a:11:{s:4:"Name";s:13:"WP Migrate DB";s:9:"PluginURI";s:44:"https://wordpress.org/plugins/wp-migrate-db/";s:7:"Version";s:5:"1.0.2";s:11:"Description";s:159:"Exports your database as a MySQL data dump (much like phpMyAdmin), does a find and replace on URLs and file paths, then allows you to save it to your computer.";s:6:"Author";s:16:"Delicious Brains";s:9:"AuthorURI";s:27:"https://deliciousbrains.com";s:10:"TextDomain";s:13:"wp-migrate-db";s:10:"DomainPath";s:11:"/languages/";s:7:"Network";b:1;s:5:"Title";s:13:"WP Migrate DB";s:10:"AuthorName";s:16:"Delicious Brains";}s:24:"wordpress-seo/wp-seo.php";a:11:{s:4:"Name";s:9:"Yoast SEO";s:9:"PluginURI";s:18:"https://yoa.st/1uj";s:7:"Version";s:5:"7.5.3";s:11:"Description";s:117:"The first true all-in-one SEO solution for WordPress, including on-page content analysis, XML sitemaps and much more.";s:6:"Author";s:10:"Team Yoast";s:9:"AuthorURI";s:18:"https://yoa.st/1uk";s:10:"TextDomain";s:13:"wordpress-seo";s:10:"DomainPath";s:11:"/languages/";s:7:"Network";b:0;s:5:"Title";s:9:"Yoast SEO";s:10:"AuthorName";s:10:"Team Yoast";}}}i:2;i:1;i:3;d:1527713271.8493030071258544921875;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(691, 'jpsq_sync-1527713271,864321-464124-38', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:24:"get_plugins_action_links";i:1;a:0:{}}i:2;i:1;i:3;d:1527713271.8640758991241455078125;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(692, 'jpsq_sync-1527713271,867680-464124-39', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:14:"active_modules";i:1;a:0:{}}i:2;i:1;i:3;d:1527713271.8664739131927490234375;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(693, 'jpsq_sync-1527713271,872442-464124-40', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:16:"hosting_provider";i:1;s:7:"unknown";}i:2;i:1;i:3;d:1527713271.8718879222869873046875;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(694, 'jpsq_sync-1527713271,875876-464124-41', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:6:"locale";i:1;s:5:"pt_BR";}i:2;i:1;i:3;d:1527713271.87555694580078125;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no') ;
INSERT INTO `fc_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(695, 'jpsq_sync-1527713271,883057-464124-42', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:13:"site_icon_url";i:1;b:0;}i:2;i:1;i:3;d:1527713271.882833957672119140625;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(696, 'jpsq_sync-1527713271,888765-464124-43', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:5:"roles";i:1;a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:17:"cf7_db_form_view4";b:1;s:18:"cf7_db_form_edit_4";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}}i:2;i:1;i:3;d:1527713271.8880269527435302734375;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(697, 'jpsq_sync-1527713271,893027-464124-44', 'a:6:{i:0;s:21:"jetpack_sync_callable";i:1;a:2:{i:0;s:8:"timezone";i:1;s:17:"America/Sao Paulo";}i:2;i:1;i:3;d:1527713271.892726898193359375;i:4;b:0;i:5;a:12:{s:13:"wpcom_user_id";N;s:16:"external_user_id";i:1;s:12:"display_name";s:4:"alex";s:10:"user_email";s:18:"alexlana@gmail.com";s:10:"user_roles";a:1:{i:0;s:13:"administrator";}s:15:"translated_role";s:13:"administrator";s:7:"is_cron";b:0;s:7:"is_rest";b:0;s:9:"is_xmlrpc";b:0;s:10:"is_wp_rest";b:0;s:7:"is_ajax";b:0;s:11:"is_wp_admin";b:1;}}', 'no'),
(698, 'jetpack_callables_sync_checksum', 'a:30:{s:18:"wp_max_upload_size";i:1819132959;s:15:"is_main_network";i:734881840;s:13:"is_multi_site";i:734881840;s:17:"main_network_site";i:519276930;s:8:"site_url";i:519276930;s:8:"home_url";i:519276930;s:16:"single_user_site";i:734881840;s:7:"updates";i:3425443202;s:28:"has_file_system_write_access";i:4261170317;s:21:"is_version_controlled";i:734881840;s:10:"taxonomies";i:4059916691;s:10:"post_types";i:279680373;s:18:"post_type_features";i:1464484401;s:10:"shortcodes";i:2708639061;s:27:"rest_api_allowed_post_types";i:1762700274;s:32:"rest_api_allowed_public_metadata";i:223132457;s:24:"sso_is_two_step_required";i:734881840;s:26:"sso_should_hide_login_form";i:734881840;s:18:"sso_match_by_email";i:4261170317;s:21:"sso_new_user_override";i:734881840;s:29:"sso_bypass_default_login_form";i:734881840;s:10:"wp_version";i:3975511174;s:11:"get_plugins";i:838782979;s:24:"get_plugins_action_links";i:223132457;s:14:"active_modules";i:223132457;s:16:"hosting_provider";i:769900095;s:6:"locale";i:2141422701;s:13:"site_icon_url";i:734881840;s:5:"roles";i:1846430526;s:8:"timezone";i:3906489675;}', 'no'),
(699, 'jpsq_sync_checkout', '0:0', 'no'),
(702, 'jetpack_next_sync_time_sync', '1527713331', 'yes'),
(703, 'jetpack_next_sync_time_full-sync-enqueue', '1527713281', 'yes'),
(709, 'wpseo_sitemap_1_cache_validator', '3TyH', 'no'),
(710, 'wpseo_sitemap_post_cache_validator', 'tWx1', 'no'),
(711, 'wpseo_sitemap_category_cache_validator', '6rSPd', 'no'),
(712, 'category_children', 'a:0:{}', 'yes'),
(713, 'wpseo_sitemap_attachment_cache_validator', '6rYYN', 'no'),
(714, 'wpseo_sitemap_page_cache_validator', '6s3JD', 'no'),
(715, 'wpseo_sitemap_wpcf7_contact_form_cache_validator', '6snzV', 'no'),
(725, 'current_theme', 'Fábrica de Criação', 'yes'),
(726, 'theme_mods_filho-padrao', 'a:2:{i:0;b:0;s:18:"custom_css_post_id";i:-1;}', 'yes'),
(727, 'theme_switched', '', 'yes'),
(761, 'rewrite_rules', 'a:90:{s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:25:"index.php?xsl=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:35:"([^/]+)/pagefrog_preview(/(.*))?/?$";s:55:"index.php?name=$matches[1]&pagefrog_preview=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(769, 'pagefrog_new_post_settings', 'a:8:{s:19:"amp_enable_new_post";i:0;s:20:"fbia_enable_new_post";i:0;s:19:"amp_enable_new_page";i:0;s:20:"fbia_enable_new_page";i:0;s:25:"amp_disable_other_plugins";i:0;s:26:"fbia_disable_other_plugins";i:0;s:22:"amp_show_header_images";i:0;s:23:"fbia_show_header_images";i:0;}', 'yes') ;

#
# Fim do conteúdo da tabela `fc_options`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_postmeta` existente
#

DROP TABLE IF EXISTS `fc_postmeta`;


#
# Estrutura da tabela `fc_postmeta`
#

CREATE TABLE `fc_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_postmeta`
#
INSERT INTO `fc_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_form', '<label> Seu nome (obrigatório)\n    [text* your-name] </label>\n\n<label> Seu e-mail (obrigatório)\n    [email* your-email] </label>\n\n<label> Assunto\n    [text your-subject] </label>\n\n<label> Sua mensagem\n    [textarea your-message] </label>\n\n[submit "Enviar"]'),
(3, 4, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:24:"Padrão "[your-subject]"";s:6:"sender";s:32:"[your-name] <alexlana@gmail.com>";s:9:"recipient";s:18:"alexlana@gmail.com";s:4:"body";s:109:"De: [your-name] <[your-email]>\nAssunto: [your-subject]\n\nCorpo da mensagem:\n[your-message]\n\n-- \nE-mail do site";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:24:"Padrão "[your-subject]"";s:6:"sender";s:28:"Padrão <alexlana@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:131:"Corpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em Padrão (http://localhost/wp-padrao)";s:18:"additional_headers";s:28:"Reply-To: alexlana@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(5, 4, '_messages', 'a:23:{s:12:"mail_sent_ok";s:27:"Agradecemos a sua mensagem.";s:12:"mail_sent_ng";s:74:"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.";s:16:"validation_error";s:63:"Um ou mais campos possuem um erro. Verifique e tente novamente.";s:4:"spam";s:72:"Houve um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.";s:12:"accept_terms";s:72:"Você deve aceitar os termos e condições antes de enviar sua mensagem.";s:16:"invalid_required";s:24:"O campo é obrigatório.";s:16:"invalid_too_long";s:23:"O campo é muito longo.";s:17:"invalid_too_short";s:23:"O campo é muito curto.";s:12:"invalid_date";s:34:"O formato de data está incorreto.";s:14:"date_too_early";s:44:"A data é anterior à mais antiga permitida.";s:13:"date_too_late";s:44:"A data é posterior à maior data permitida.";s:13:"upload_failed";s:49:"Ocorreu um erro desconhecido ao enviar o arquivo.";s:24:"upload_file_type_invalid";s:59:"Você não tem permissão para enviar esse tipo de arquivo.";s:21:"upload_file_too_large";s:26:"O arquivo é muito grande.";s:23:"upload_failed_php_error";s:36:"Ocorreu um erro ao enviar o arquivo.";s:14:"invalid_number";s:34:"O formato de número é inválido.";s:16:"number_too_small";s:46:"O número é menor do que o mínimo permitido.";s:16:"number_too_large";s:46:"O número é maior do que o máximo permitido.";s:23:"quiz_answer_not_correct";s:39:"A resposta para o quiz está incorreta.";s:17:"captcha_not_match";s:35:"O código digitado está incorreto.";s:13:"invalid_email";s:45:"O endereço de e-mail informado é inválido.";s:11:"invalid_url";s:19:"A URL é inválida.";s:11:"invalid_tel";s:35:"O número de telefone é inválido.";}'),
(6, 4, '_additional_settings', ''),
(7, 4, '_locale', 'pt_BR'),
(42, 19, '_pagefrog_fbia_status', '1'),
(43, 19, '_pagefrog_amp_status', '0') ;

#
# Fim do conteúdo da tabela `fc_postmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_posts` existente
#

DROP TABLE IF EXISTS `fc_posts`;


#
# Estrutura da tabela `fc_posts`
#

CREATE TABLE `fc_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_posts`
#
INSERT INTO `fc_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 1, '2017-11-25 18:31:13', '2017-11-25 20:31:13', '<label> Seu nome (obrigatório)\r\n    [text* your-name] </label>\r\n\r\n<label> Seu e-mail (obrigatório)\r\n    [email* your-email] </label>\r\n\r\n<label> Assunto\r\n    [text your-subject] </label>\r\n\r\n<label> Sua mensagem\r\n    [textarea your-message] </label>\r\n\r\n[submit "Enviar"]\n1\nPadrão "[your-subject]"\n[your-name] <alexlana@gmail.com>\nalexlana@gmail.com\nDe: [your-name] <[your-email]>\r\nAssunto: [your-subject]\r\n\r\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nE-mail do site\nReply-To: [your-email]\n\n\n\n\nPadrão "[your-subject]"\nPadrão <alexlana@gmail.com>\n[your-email]\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em Padrão (http://localhost/wp-padrao)\nReply-To: alexlana@gmail.com\n\n\n\nAgradecemos a sua mensagem.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nUm ou mais campos possuem um erro. Verifique e tente novamente.\nHouve um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nVocê deve aceitar os termos e condições antes de enviar sua mensagem.\nO campo é obrigatório.\nO campo é muito longo.\nO campo é muito curto.\nO formato de data está incorreto.\nA data é anterior à mais antiga permitida.\nA data é posterior à maior data permitida.\nOcorreu um erro desconhecido ao enviar o arquivo.\nVocê não tem permissão para enviar esse tipo de arquivo.\nO arquivo é muito grande.\nOcorreu um erro ao enviar o arquivo.\nO formato de número é inválido.\nO número é menor do que o mínimo permitido.\nO número é maior do que o máximo permitido.\nA resposta para o quiz está incorreta.\nO código digitado está incorreto.\nO endereço de e-mail informado é inválido.\nA URL é inválida.\nO número de telefone é inválido.', 'Contato', '', 'publish', 'closed', 'closed', '', 'formulario-de-contato-1', '', '', '2018-05-30 17:57:21', '2018-05-30 20:57:21', '', 0, 'http://localhost/wp-padrao/?post_type=wpcf7_contact_form&#038;p=4', 0, 'wpcf7_contact_form', '', 0),
(19, 1, '2018-06-27 15:14:54', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-27 15:14:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-padrao/?p=19', 0, 'post', '', 0) ;

#
# Fim do conteúdo da tabela `fc_posts`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_term_relationships` existente
#

DROP TABLE IF EXISTS `fc_term_relationships`;


#
# Estrutura da tabela `fc_term_relationships`
#

CREATE TABLE `fc_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_term_relationships`
#

#
# Fim do conteúdo da tabela `fc_term_relationships`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_term_taxonomy` existente
#

DROP TABLE IF EXISTS `fc_term_taxonomy`;


#
# Estrutura da tabela `fc_term_taxonomy`
#

CREATE TABLE `fc_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_term_taxonomy`
#
INSERT INTO `fc_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0) ;

#
# Fim do conteúdo da tabela `fc_term_taxonomy`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_termmeta` existente
#

DROP TABLE IF EXISTS `fc_termmeta`;


#
# Estrutura da tabela `fc_termmeta`
#

CREATE TABLE `fc_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_termmeta`
#

#
# Fim do conteúdo da tabela `fc_termmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_terms` existente
#

DROP TABLE IF EXISTS `fc_terms`;


#
# Estrutura da tabela `fc_terms`
#

CREATE TABLE `fc_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_terms`
#
INSERT INTO `fc_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Geral', 'geral', 0) ;

#
# Fim do conteúdo da tabela `fc_terms`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_usermeta` existente
#

DROP TABLE IF EXISTS `fc_usermeta`;


#
# Estrutura da tabela `fc_usermeta`
#

CREATE TABLE `fc_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_usermeta`
#
INSERT INTO `fc_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'alex'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'fc_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'fc_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"4dd1271e69b0be7cb10391f0ea24bb6bdd6578271e11aa05f56dc7068490afb3";a:4:{s:10:"expiration";i:1530296091;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.1.1 Safari/605.1.15";s:5:"login";i:1530123291;}}'),
(17, 1, 'fc_dashboard_quick_press_last_post_id', '19'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(20, 1, 'last_login_time', '2018-06-27 15:14:51'),
(21, 1, 'fc_user-settings', 'libraryContent=browse&hidetb=1'),
(22, 1, 'fc_user-settings-time', '1518734363'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(25, 1, 'closedpostboxes_post', 'a:1:{i:0;s:25:"pagefrog-preview-meta-box";}'),
(26, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(27, 1, 'meta-box-order_post', 'a:3:{s:4:"side";s:87:"submitdiv,formatdiv,categorydiv,tagsdiv-post_tag,postimagediv,pagefrog-preview-meta-box";s:6:"normal";s:82:"wpseo_meta,postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(28, 1, 'screen_layout_post', '2'),
(29, 2, 'nickname', 'pedro'),
(30, 2, 'first_name', 'Pedro'),
(31, 2, 'last_name', ''),
(32, 2, 'description', ''),
(33, 2, 'rich_editing', 'true'),
(34, 2, 'syntax_highlighting', 'true'),
(35, 2, 'comment_shortcuts', 'false'),
(36, 2, 'admin_color', 'fresh'),
(37, 2, 'use_ssl', '0'),
(38, 2, 'show_admin_bar_front', 'true'),
(39, 2, 'locale', ''),
(40, 2, 'fc_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(41, 2, 'fc_user_level', '10'),
(42, 2, '_yoast_wpseo_profile_updated', '1527716160'),
(43, 2, 'dismissed_wp_pointers', ''),
(44, 1, 'fc_yoast_notifications', 'a:1:{i:0;a:2:{s:7:"message";s:537:"Yoast SEO and Advanced Custom Fields can work together a lot better by adding a helper plugin. Please install <a href="http://localhost/wp-padrao/wp-admin/update.php?action=install-plugin&amp;plugin=acf-content-analysis-for-yoast-seo&amp;_wpnonce=5c6852c5b6">ACF Content Analysis for Yoast SEO</a> to make your life better. <a href="https://wordpress.org/plugins/acf-content-analysis-for-yoast-seo/" aria-label="Mais informação sobre ACF Content Analysis for Yoast SEO" target="_blank" rel="noopener noreferrer">Mais informações</a>.";s:7:"options";a:9:{s:4:"type";s:7:"warning";s:2:"id";s:41:"wpseo-suggested-plugin-yoast-acf-analysis";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";a:1:{i:0;s:15:"install_plugins";}s:16:"capability_check";s:3:"all";s:14:"yoast_branding";b:0;}}}'),
(45, 1, 'jetpack_tracks_anon_id', 'jetpack:cmtw2HlQvbwVGPy+e419qSkV'),
(46, 1, '_yoast_wpseo_profile_updated', '1527716160') ;

#
# Fim do conteúdo da tabela `fc_usermeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_users` existente
#

DROP TABLE IF EXISTS `fc_users`;


#
# Estrutura da tabela `fc_users`
#

CREATE TABLE `fc_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_users`
#
INSERT INTO `fc_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'alex', '$P$BL7J3TUlajdn2zGVH3IAbQNEPmbnQP.', 'alex', 'alexlana@gmail.com', '', '2017-11-25 20:19:47', '', 0, 'alex'),
(2, 'pedro', '$P$BtlYpT2Gx2tIkjSnLRSOMIW2cgy9xz.', 'pedro', 'conteudo@fabricadecriacao.com.br', '', '2018-04-04 20:34:57', '1522874097:$P$BCPG27cYtFYtYrg6lt2/3SRP6M6R3p/', 0, 'Pedro') ;

#
# Fim do conteúdo da tabela `fc_users`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_yikes_easy_mc_forms` existente
#

DROP TABLE IF EXISTS `fc_yikes_easy_mc_forms`;


#
# Estrutura da tabela `fc_yikes_easy_mc_forms`
#

CREATE TABLE `fc_yikes_easy_mc_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_styles` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_template` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_welcome_email` int(11) NOT NULL,
  `redirect_user_on_submit` int(11) NOT NULL,
  `redirect_page` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission_settings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `optin_settings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_settings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `error_messages` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_notifications` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `impressions` int(11) NOT NULL,
  `submissions` int(11) NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_yikes_easy_mc_forms`
#

#
# Fim do conteúdo da tabela `fc_yikes_easy_mc_forms`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_yoast_seo_links` existente
#

DROP TABLE IF EXISTS `fc_yoast_seo_links`;


#
# Estrutura da tabela `fc_yoast_seo_links`
#

CREATE TABLE `fc_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_yoast_seo_links`
#

#
# Fim do conteúdo da tabela `fc_yoast_seo_links`
# --------------------------------------------------------



#
# Apagar qualquer tabela `fc_yoast_seo_meta` existente
#

DROP TABLE IF EXISTS `fc_yoast_seo_meta`;


#
# Estrutura da tabela `fc_yoast_seo_meta`
#

CREATE TABLE `fc_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Conteúdo da tabela `fc_yoast_seo_meta`
#
INSERT INTO `fc_yoast_seo_meta` ( `object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 0, 0),
(16, 0, 0),
(17, 0, 0),
(18, 0, 0) ;

#
# Fim do conteúdo da tabela `fc_yoast_seo_meta`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

