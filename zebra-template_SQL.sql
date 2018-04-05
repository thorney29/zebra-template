-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 05, 2018 at 04:24 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `wordpress_from_scratch`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-07 19:33:41', '2018-03-07 19:33:41', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 1, 'Tresa', 'tresa@tresahorney.com', '', '::1', '2018-03-13 00:04:16', '2018-03-13 00:04:16', 'Oh my god. I LOVE pizza.', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://zebra-template', 'yes'),
(2, 'home', 'http://zebra-template', 'yes'),
(3, 'blogname', 'Zebra', 'yes'),
(4, 'blogdescription', 'Farm to Table', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tresa@tresahorney.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
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
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:1;s:14:\"menu-items.php\";i:2;s:23:\"ml-slider/ml-slider.php\";i:3;s:39:\"open-table-widget/open-table-widget.php\";i:4;s:31:\"wp-google-maps/wpGoogleMaps.php\";i:5;s:43:\"wp-instagram-widget/wp-instagram-widget.php\";i:6;s:24:\"wpforms-lite/wpforms.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:77:\"/Users/moderncultivator/Sites/HTML-template/wp-content/themes/zebra/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'zebra', 'yes'),
(41, 'stylesheet', 'zebra', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:3;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '29', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '73', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:64:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:17:\"manage_restaurant\";b:1;s:23:\"create_restaurant_items\";b:1;s:21:\"edit_restaurant_items\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:4;a:1:{s:5:\"title\";s:6:\"Search\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:3;a:3:{s:5:\"title\";s:11:\"Recent News\";s:6:\"number\";i:5;s:9:\"show_date\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:3;a:3:{s:5:\"title\";s:8:\"Archives\";s:5:\"count\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"sidebar-menu-right\";a:1:{i:0;s:13:\"custom_html-2\";}s:8:\"featured\";a:7:{i:0;s:13:\"custom_html-4\";i:1;s:8:\"search-4\";i:2;s:10:\"nav_menu-2\";i:3;s:10:\"nav_menu-3\";i:4;s:11:\"tag_cloud-3\";i:5;s:11:\"tag_cloud-4\";i:6;s:11:\"tag_cloud-5\";}s:12:\"left-sidebar\";a:4:{i:0;s:10:\"archives-3\";i:1;s:14:\"recent-posts-3\";i:2;s:12:\"categories-3\";i:3;s:11:\"tag_cloud-2\";}s:24:\"first-footer-widget-area\";a:3:{i:0;s:13:\"custom_html-5\";i:1;s:10:\"nav_menu-6\";i:2;s:10:\"nav_menu-7\";}s:25:\"second-footer-widget-area\";a:3:{i:0;s:13:\"custom_html-6\";i:1;s:19:\"wpgmza_map_widget-2\";i:2;s:12:\"otw_widget-2\";}s:24:\"third-footer-widget-area\";a:2:{i:0;s:10:\"nav_menu-5\";i:1;s:21:\"null-instagram-feed-2\";}s:25:\"fourth-footer-widget-area\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'nonce_key', '^*r/Y*85cZ9@y*fgL+g98kuvz#IDY5n!_0r<S`y%usd*-}UtUO#nKT=tZEWBY3@%', 'no'),
(107, 'nonce_salt', 'R^>|u;2$fB]Fl+Ps,2Ns6bwaxQ`!(lDQd/+=#p0VcxlT!0)tPg!@#b`@>Og-/we4', 'no'),
(108, 'widget_tag_cloud', 'a:5:{i:2;a:3:{s:5:\"title\";s:18:\"Points of Interest\";s:5:\"count\";i:0;s:8:\"taxonomy\";s:8:\"post_tag\";}i:3;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:1;s:8:\"taxonomy\";s:8:\"category\";}i:4;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"taxonomy\";s:8:\"specials\";}i:5;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"taxonomy\";s:10:\"food_types\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:6:{i:2;a:2:{s:5:\"title\";s:10:\"Food Menus\";s:8:\"nav_menu\";i:4;}i:3;a:2:{s:5:\"title\";s:11:\"Drink Menus\";s:8:\"nav_menu\";i:26;}i:5;a:2:{s:5:\"title\";s:25:\"Follow Us on Social Media\";s:8:\"nav_menu\";i:30;}i:6;a:2:{s:5:\"title\";s:4:\"Food\";s:8:\"nav_menu\";i:4;}i:7;a:2:{s:5:\"title\";s:5:\"Drink\";s:8:\"nav_menu\";i:26;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:5:{i:2;a:2:{s:5:\"title\";s:14:\"Well well well\";s:7:\"content\";s:0:\"\";}i:4;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:140:\" <div id=\"logo\">\r\n  <a class=\"blog-nav-item active\" href=\"/\">		<img src=\"/wp-content/themes/zebra/images/zebra-orange.png\">\r\n	 </a>\r\n </div>\";}i:5;a:2:{s:5:\"title\";s:10:\"Contact Us\";s:7:\"content\";s:238:\"<p>\r\nGive us a call: <a href=\"tel:555-555-5555\">555-555-5555</a>\r\n</p>\r\n\r\n<p>\r\n<a href=\"mailto:tresa@tresahorney.com\">Send us an email.</a>\r\n</p>\r\n\r\n<p>Hours \r\n</p>\r\n<p>Monday - Friday 3-11PM\r\n</p>\r\n<p>Saturday - Sunday 111AM-11PM\r\n</p>\r\n\";}i:6;a:2:{s:5:\"title\";s:8:\"Visit Us\";s:7:\"content\";s:53:\"<p>\r\nVisit us: 1 Main Street Portland, OR 97211\r\n</p>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:4:{i:1522913622;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1522956853;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1522962568;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1520451632;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(123, 'auth_key', 'At+0roM*[;,F&D;SL_?CeO.W_W`(s~+f$}{U!`s /bkW+dI_20VK~{J0o*B,^<X9', 'no'),
(124, 'auth_salt', 'aj[OM 0Lw_9 @x5u.epkx$qYhF HR mubpi+q++fw]*3:jbc,j7M=i(YW3{`AyBx', 'no'),
(125, 'logged_in_key', ')ley!?A~WuUfdL5={Xx9gYv[7XY~7(XpiF`$W%Aq<pl;?5&Wsza*RJvqIro7rl*`', 'no'),
(126, 'logged_in_salt', 'oe1n^kjLiE5f`piL]?C9B#PU|LE%c8_34Vs1szqY}o[N?pUrE.!KOGe`f39Q4dv~', 'no'),
(136, 'can_compress_scripts', '1', 'no'),
(145, 'theme_mods_zebra', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:11:\"custom_logo\";i:73;}', 'yes'),
(147, 'current_theme', 'Zebra', 'yes'),
(148, 'theme_switched', '', 'yes'),
(149, 'theme_switched_via_customizer', '', 'yes'),
(150, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(153, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.5-partial-4.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.4\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.5-partial-4.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-rollback-4.zip\";}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.4\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1522892127;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(156, 'WPLANG', '', 'yes'),
(157, 'new_admin_email', 'tresa@tresahorney.com', 'yes'),
(181, 'recently_activated', 'a:6:{s:43:\"food-and-drink-menu/food-and-drink-menu.php\";i:1522373363;s:57:\"beautiful-taxonomy-filters/beautiful-taxonomy-filters.php\";i:1522371461;s:68:\"fx-settings-meta-box-example-master/fx-settings-meta-box-example.php\";i:1522364171;s:35:\"wysiwyg-widgets/wysiwyg-widgets.php\";i:1521853246;s:41:\"dev-content-blocks/dev-content-blocks.php\";i:1521846679;s:25:\"example-widget-plugin.php\";i:1521837343;}', 'yes'),
(195, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:4;}}', 'yes'),
(221, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(222, 'ms_hide_all_ads_until', '1529454405', 'yes'),
(223, 'metaslider_systemcheck', 'a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}', 'no'),
(224, 'ml-slider_children', 'a:0:{}', 'yes'),
(225, 'metaslider_tour_cancelled_on', 'step_add_media', 'yes'),
(269, 'menus-categories_children', 'a:0:{}', 'yes'),
(308, 'menu_category_children', 'a:0:{}', 'yes'),
(335, 'lunch-menu_children', 'a:0:{}', 'yes'),
(352, 'topics_children', 'a:0:{}', 'yes'),
(382, 'specials_children', 'a:1:{i:19;a:2:{i:0;i:17;i:1;i:18;}}', 'yes'),
(462, 'topic_children', 'a:0:{}', 'yes'),
(514, 'widget_example_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(598, 'ms_ads_first_seen_on', '1521835710', 'yes'),
(628, 'widget_wysiwyg_widgets_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(686, 'widget_null-instagram-feed', 'a:2:{i:2;a:6:{s:5:\"title\";s:9:\"Instagram\";s:8:\"username\";s:7:\"tresa_d\";s:6:\"number\";s:1:\"6\";s:4:\"size\";s:9:\"thumbnail\";s:6:\"target\";s:6:\"_blank\";s:4:\"link\";s:23:\"Follow Us on Instagram \";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(716, 'wpgmza_temp_api', 'AIzaSyChPphumyabdfggISDNBuGOlGVBgEvZnGE', 'yes'),
(717, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(718, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(719, 'wpgmza_db_version', '6.4.11', 'yes'),
(720, 'wpgmaps_current_version', '6.4.11', 'yes'),
(721, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(722, 'widget_wpgmza_map_widget', 'a:2:{i:2;a:2:{s:9:\"selection\";s:1:\"1\";s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(723, 'WPGMZA_OTHER_SETTINGS', 'a:1:{s:27:\"wpgmza_settings_marker_pull\";s:1:\"0\";}', 'yes'),
(724, 'WPGMZA_FIRST_TIME', '6.4.11', 'yes'),
(725, 'wpgmza_stats', 'a:3:{s:15:\"list_maps_basic\";a:3:{s:5:\"views\";i:4;s:13:\"last_accessed\";s:19:\"2018-03-28 17:39:20\";s:14:\"first_accessed\";s:19:\"2018-03-27 22:37:26\";}s:14:\"settings_basic\";a:3:{s:5:\"views\";i:2;s:13:\"last_accessed\";s:19:\"2018-03-27 22:39:19\";s:14:\"first_accessed\";s:19:\"2018-03-27 22:39:14\";}s:9:\"dashboard\";a:3:{s:5:\"views\";i:7;s:13:\"last_accessed\";s:19:\"2018-03-28 17:39:27\";s:14:\"first_accessed\";s:19:\"2018-03-27 22:39:54\";}}', 'yes'),
(726, 'wpgmza_google_maps_api_key', 'AIzaSyDLa41r6_i326DTEdfDPs9ZDsSdvhtV35w', 'yes'),
(727, 'WPGMZA_SETTINGS', 'a:10:{s:24:\"map_default_starting_lat\";s:10:\"45.5230622\";s:24:\"map_default_starting_lng\";s:19:\"-122.67648150000002\";s:18:\"map_default_height\";s:3:\"300\";s:17:\"map_default_width\";s:3:\"300\";s:16:\"map_default_zoom\";i:7;s:20:\"map_default_max_zoom\";i:1;s:16:\"map_default_type\";i:1;s:21:\"map_default_alignment\";i:2;s:22:\"map_default_width_type\";s:2:\"px\";s:23:\"map_default_height_type\";s:2:\"px\";}', 'yes'),
(732, 'wpforms_preview_page', '202', 'yes'),
(733, 'wpforms_version', '1.4.5.2', 'yes'),
(734, 'wpforms_activated', 'a:1:{s:4:\"lite\";i:1522195352;}', 'yes'),
(737, 'widget_wpforms-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(738, '_amn_wpforms-lite_last_checked', '1522454400', 'yes'),
(739, 'wpforms_review', 'a:2:{s:4:\"time\";i:1522195354;s:9:\"dismissed\";b:0;}', 'yes'),
(742, 'ms_hide_thankyou_ads_until', '1554251205', 'yes'),
(766, 'food_types_children', 'a:1:{i:22;a:3:{i:0;i:20;i:1;i:21;i:2;i:32;}}', 'yes'),
(774, 'widget_otw_widget', 'a:2:{i:2;a:11:{s:5:\"title\";s:21:\"Make your reservation\";s:14:\"display_option\";s:1:\"0\";s:12:\"widget_style\";s:11:\"Shadow Dark\";s:15:\"restaurant_name\";s:5:\"Zebra\";s:13:\"restaurant_id\";s:0:\"\";s:11:\"hide_labels\";s:0:\"\";s:11:\"pre_content\";s:0:\"\";s:12:\"post_content\";s:0:\"\";s:10:\"label_date\";s:0:\"\";s:10:\"label_time\";s:0:\"\";s:11:\"label_party\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(775, 'opentablewidget_options', 'a:3:{s:0:\"\";N;s:11:\"disable_css\";s:0:\"\";s:24:\"disable_bootstrap_select\";s:0:\"\";}', 'yes'),
(776, 'category_children', 'a:0:{}', 'yes'),
(842, 'widget_beautiful-taxonomy-filters-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(843, 'widget_beautiful-taxonomy-filters-info-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(845, 'beautiful_taxonomy_filters_version', '2.3.1', 'yes'),
(846, 'beautiful_taxonomy_filters_post_types', 'a:1:{i:0;s:14:\"dinnermenuitem\";}', 'yes'),
(847, 'beautiful_taxonomy_filters_taxonomies', '', 'yes'),
(848, 'beautiful_taxonomy_filters_automagic', 'a:1:{i:0;s:5:\"above\";}', 'yes'),
(849, 'beautiful_taxonomy_filters_styles', 'light-material', 'yes'),
(850, 'beautiful_taxonomy_filters_custom_css', '', 'yes'),
(853, 'rewrite_rules', 'a:174:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:49:\"specials/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?specials=$matches[1]&feed=$matches[2]\";s:44:\"specials/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?specials=$matches[1]&feed=$matches[2]\";s:25:\"specials/([^/]+)/embed/?$\";s:41:\"index.php?specials=$matches[1]&embed=true\";s:37:\"specials/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?specials=$matches[1]&paged=$matches[2]\";s:19:\"specials/([^/]+)/?$\";s:30:\"index.php?specials=$matches[1]\";s:51:\"food-types/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?food_types=$matches[1]&feed=$matches[2]\";s:46:\"food-types/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?food_types=$matches[1]&feed=$matches[2]\";s:27:\"food-types/([^/]+)/embed/?$\";s:43:\"index.php?food_types=$matches[1]&embed=true\";s:39:\"food-types/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?food_types=$matches[1]&paged=$matches[2]\";s:21:\"food-types/([^/]+)/?$\";s:32:\"index.php?food_types=$matches[1]\";s:54:\"menu-sections/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?menu_sections=$matches[1]&feed=$matches[2]\";s:49:\"menu-sections/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?menu_sections=$matches[1]&feed=$matches[2]\";s:30:\"menu-sections/([^/]+)/embed/?$\";s:46:\"index.php?menu_sections=$matches[1]&embed=true\";s:42:\"menu-sections/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?menu_sections=$matches[1]&paged=$matches[2]\";s:24:\"menu-sections/([^/]+)/?$\";s:35:\"index.php?menu_sections=$matches[1]\";s:57:\"wpforms_log_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?taxonomy=wpforms_log_type&term=$matches[1]&feed=$matches[2]\";s:52:\"wpforms_log_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?taxonomy=wpforms_log_type&term=$matches[1]&feed=$matches[2]\";s:33:\"wpforms_log_type/([^/]+)/embed/?$\";s:63:\"index.php?taxonomy=wpforms_log_type&term=$matches[1]&embed=true\";s:45:\"wpforms_log_type/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?taxonomy=wpforms_log_type&term=$matches[1]&paged=$matches[2]\";s:27:\"wpforms_log_type/([^/]+)/?$\";s:52:\"index.php?taxonomy=wpforms_log_type&term=$matches[1]\";s:40:\"breakfast-menu/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"breakfast-menu/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"breakfast-menu/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"breakfast-menu/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"breakfast-menu/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"breakfast-menu/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"breakfast-menu/(.+?)/embed/?$\";s:50:\"index.php?breakfastmenuitem=$matches[1]&embed=true\";s:33:\"breakfast-menu/(.+?)/trackback/?$\";s:44:\"index.php?breakfastmenuitem=$matches[1]&tb=1\";s:41:\"breakfast-menu/(.+?)/page/?([0-9]{1,})/?$\";s:57:\"index.php?breakfastmenuitem=$matches[1]&paged=$matches[2]\";s:48:\"breakfast-menu/(.+?)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?breakfastmenuitem=$matches[1]&cpage=$matches[2]\";s:37:\"breakfast-menu/(.+?)(?:/([0-9]+))?/?$\";s:56:\"index.php?breakfastmenuitem=$matches[1]&page=$matches[2]\";s:49:\"post_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?menu_tag=$matches[1]&feed=$matches[2]\";s:44:\"post_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?menu_tag=$matches[1]&feed=$matches[2]\";s:25:\"post_tag/([^/]+)/embed/?$\";s:41:\"index.php?menu_tag=$matches[1]&embed=true\";s:37:\"post_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?menu_tag=$matches[1]&paged=$matches[2]\";s:19:\"post_tag/([^/]+)/?$\";s:30:\"index.php?menu_tag=$matches[1]\";s:37:\"brunch-menu/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"brunch-menu/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"brunch-menu/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"brunch-menu/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"brunch-menu/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"brunch-menu/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"brunch-menu/(.+?)/embed/?$\";s:47:\"index.php?brunchmenuitem=$matches[1]&embed=true\";s:30:\"brunch-menu/(.+?)/trackback/?$\";s:41:\"index.php?brunchmenuitem=$matches[1]&tb=1\";s:38:\"brunch-menu/(.+?)/page/?([0-9]{1,})/?$\";s:54:\"index.php?brunchmenuitem=$matches[1]&paged=$matches[2]\";s:45:\"brunch-menu/(.+?)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?brunchmenuitem=$matches[1]&cpage=$matches[2]\";s:34:\"brunch-menu/(.+?)(?:/([0-9]+))?/?$\";s:53:\"index.php?brunchmenuitem=$matches[1]&page=$matches[2]\";s:36:\"lunch-menu/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"lunch-menu/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"lunch-menu/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"lunch-menu/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"lunch-menu/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"lunch-menu/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"lunch-menu/(.+?)/embed/?$\";s:46:\"index.php?lunchmenuitem=$matches[1]&embed=true\";s:29:\"lunch-menu/(.+?)/trackback/?$\";s:40:\"index.php?lunchmenuitem=$matches[1]&tb=1\";s:37:\"lunch-menu/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?lunchmenuitem=$matches[1]&paged=$matches[2]\";s:44:\"lunch-menu/(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?lunchmenuitem=$matches[1]&cpage=$matches[2]\";s:33:\"lunch-menu/(.+?)(?:/([0-9]+))?/?$\";s:52:\"index.php?lunchmenuitem=$matches[1]&page=$matches[2]\";s:37:\"dinner-menu/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"dinner-menu/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"dinner-menu/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"dinner-menu/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"dinner-menu/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"dinner-menu/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"dinner-menu/(.+?)/embed/?$\";s:47:\"index.php?dinnermenuitem=$matches[1]&embed=true\";s:30:\"dinner-menu/(.+?)/trackback/?$\";s:41:\"index.php?dinnermenuitem=$matches[1]&tb=1\";s:38:\"dinner-menu/(.+?)/page/?([0-9]{1,})/?$\";s:54:\"index.php?dinnermenuitem=$matches[1]&paged=$matches[2]\";s:45:\"dinner-menu/(.+?)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?dinnermenuitem=$matches[1]&cpage=$matches[2]\";s:34:\"dinner-menu/(.+?)(?:/([0-9]+))?/?$\";s:53:\"index.php?dinnermenuitem=$matches[1]&page=$matches[2]\";s:37:\"beer-menu/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"beer-menu/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"beer-menu/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"beer-menu/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"beer-menu/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"beer-menu/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"beer-menu/([^/]+)/embed/?$\";s:45:\"index.php?beermenuitem=$matches[1]&embed=true\";s:30:\"beer-menu/([^/]+)/trackback/?$\";s:39:\"index.php?beermenuitem=$matches[1]&tb=1\";s:38:\"beer-menu/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?beermenuitem=$matches[1]&paged=$matches[2]\";s:45:\"beer-menu/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?beermenuitem=$matches[1]&cpage=$matches[2]\";s:34:\"beer-menu/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?beermenuitem=$matches[1]&page=$matches[2]\";s:26:\"beer-menu/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"beer-menu/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"beer-menu/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"beer-menu/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"beer-menu/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"beer-menu/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(856, 'widget_fdm_widget_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(857, 'widget_fdm_widget_menu_item', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(860, 'food-and-drink-menu-settings', 'a:4:{s:9:\"fdm-style\";s:7:\"classic\";s:17:\"fdm-disable-price\";s:0:\"\";s:20:\"fdm-item-thumb-width\";s:0:\"\";s:21:\"fdm-item-thumb-height\";s:0:\"\";}', 'yes'),
(870, 'menu_sections_children', 'a:0:{}', 'yes'),
(886, '_site_transient_timeout_theme_roots', '1522893928', 'no'),
(887, '_site_transient_theme_roots', 'a:4:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:5:\"zebra\";s:7:\"/themes\";}', 'no'),
(888, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1522892130;s:7:\"checked\";a:4:{s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";s:5:\"zebra\";s:29:\"1.0 License: Creative license\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.5.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(889, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1522892131;s:7:\"checked\";a:11:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:57:\"beautiful-taxonomy-filters/beautiful-taxonomy-filters.php\";s:5:\"2.3.1\";s:43:\"food-and-drink-menu/food-and-drink-menu.php\";s:5:\"1.5.2\";s:14:\"menu-items.php\";s:3:\"1.0\";s:23:\"ml-slider/ml-slider.php\";s:5:\"3.7.2\";s:39:\"open-table-widget/open-table-widget.php\";s:3:\"1.8\";s:35:\"wysiwyg-widgets/wysiwyg-widgets.php\";s:5:\"2.3.8\";s:27:\"plugin-name/plugin-name.php\";s:5:\"1.0.0\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.4.5.2\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:6:\"6.4.11\";s:43:\"wp-instagram-widget/wp-instagram-widget.php\";s:5:\"2.0.3\";}s:8:\"response\";a:1:{s:31:\"wp-google-maps/wpGoogleMaps.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:28:\"w.org/plugins/wp-google-maps\";s:4:\"slug\";s:14:\"wp-google-maps\";s:6:\"plugin\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:11:\"new_version\";s:6:\"7.0.00\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-google-maps/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-google-maps.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-128x128.png?rev=970398\";s:2:\"2x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398\";s:7:\"default\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293\";s:7:\"default\";s:68:\"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:57:\"beautiful-taxonomy-filters/beautiful-taxonomy-filters.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/beautiful-taxonomy-filters\";s:4:\"slug\";s:26:\"beautiful-taxonomy-filters\";s:6:\"plugin\";s:57:\"beautiful-taxonomy-filters/beautiful-taxonomy-filters.php\";s:11:\"new_version\";s:5:\"2.3.1\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/beautiful-taxonomy-filters/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/beautiful-taxonomy-filters.2.3.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:79:\"https://ps.w.org/beautiful-taxonomy-filters/assets/icon-128x128.png?rev=1654967\";s:2:\"2x\";s:79:\"https://ps.w.org/beautiful-taxonomy-filters/assets/icon-256x256.png?rev=1654967\";s:7:\"default\";s:79:\"https://ps.w.org/beautiful-taxonomy-filters/assets/icon-256x256.png?rev=1654967\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:82:\"https://ps.w.org/beautiful-taxonomy-filters/assets/banner-1544x500.jpg?rev=1020041\";s:2:\"1x\";s:81:\"https://ps.w.org/beautiful-taxonomy-filters/assets/banner-772x250.jpg?rev=1020041\";s:7:\"default\";s:82:\"https://ps.w.org/beautiful-taxonomy-filters/assets/banner-1544x500.jpg?rev=1020041\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"food-and-drink-menu/food-and-drink-menu.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/food-and-drink-menu\";s:4:\"slug\";s:19:\"food-and-drink-menu\";s:6:\"plugin\";s:43:\"food-and-drink-menu/food-and-drink-menu.php\";s:11:\"new_version\";s:5:\"1.5.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/food-and-drink-menu/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/food-and-drink-menu.1.5.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:71:\"https://ps.w.org/food-and-drink-menu/assets/icon-128x128.png?rev=975734\";s:2:\"2x\";s:71:\"https://ps.w.org/food-and-drink-menu/assets/icon-256x256.png?rev=975734\";s:7:\"default\";s:71:\"https://ps.w.org/food-and-drink-menu/assets/icon-256x256.png?rev=975734\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:74:\"https://ps.w.org/food-and-drink-menu/assets/banner-1544x500.png?rev=835075\";s:2:\"1x\";s:73:\"https://ps.w.org/food-and-drink-menu/assets/banner-772x250.png?rev=835075\";s:7:\"default\";s:74:\"https://ps.w.org/food-and-drink-menu/assets/banner-1544x500.png?rev=835075\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:5:\"3.7.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/ml-slider.3.7.2.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-128x128.png?rev=1837669\";s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1837669\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";s:7:\"default\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1837669\";s:7:\"default\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"open-table-widget/open-table-widget.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/open-table-widget\";s:4:\"slug\";s:17:\"open-table-widget\";s:6:\"plugin\";s:39:\"open-table-widget/open-table-widget.php\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/open-table-widget/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/open-table-widget.1.8.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:70:\"https://ps.w.org/open-table-widget/assets/icon-128x128.png?rev=1154057\";s:2:\"2x\";s:70:\"https://ps.w.org/open-table-widget/assets/icon-256x256.png?rev=1154057\";s:7:\"default\";s:70:\"https://ps.w.org/open-table-widget/assets/icon-256x256.png?rev=1154057\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:72:\"https://ps.w.org/open-table-widget/assets/banner-772x250.png?rev=1154057\";s:7:\"default\";s:72:\"https://ps.w.org/open-table-widget/assets/banner-772x250.png?rev=1154057\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"wysiwyg-widgets/wysiwyg-widgets.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/wysiwyg-widgets\";s:4:\"slug\";s:15:\"wysiwyg-widgets\";s:6:\"plugin\";s:35:\"wysiwyg-widgets/wysiwyg-widgets.php\";s:11:\"new_version\";s:5:\"2.3.8\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wysiwyg-widgets/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wysiwyg-widgets.2.3.8.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:2:{s:2:\"1x\";s:69:\"https://ps.w.org/wysiwyg-widgets/assets/banner-772x250.png?rev=794021\";s:7:\"default\";s:69:\"https://ps.w.org/wysiwyg-widgets/assets/banner-772x250.png?rev=794021\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.4.5.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/wpforms-lite.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-128x128.png?rev=1371112\";s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=1371112\";s:7:\"default\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=1371112\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=1371112\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=1371112\";s:7:\"default\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=1371112\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"wp-instagram-widget/wp-instagram-widget.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/wp-instagram-widget\";s:4:\"slug\";s:19:\"wp-instagram-widget\";s:6:\"plugin\";s:43:\"wp-instagram-widget/wp-instagram-widget.php\";s:11:\"new_version\";s:5:\"2.0.3\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/wp-instagram-widget/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/wp-instagram-widget.2.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:72:\"https://ps.w.org/wp-instagram-widget/assets/icon-128x128.png?rev=1155549\";s:2:\"2x\";s:72:\"https://ps.w.org/wp-instagram-widget/assets/icon-256x256.png?rev=1155549\";s:7:\"default\";s:72:\"https://ps.w.org/wp-instagram-widget/assets/icon-256x256.png?rev=1155549\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:75:\"https://ps.w.org/wp-instagram-widget/assets/banner-1544x500.png?rev=1155549\";s:2:\"1x\";s:74:\"https://ps.w.org/wp-instagram-widget/assets/banner-772x250.png?rev=1155549\";s:7:\"default\";s:75:\"https://ps.w.org/wp-instagram-widget/assets/banner-1544x500.png?rev=1155549\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(890, '_transient_timeout_insta-a10-u-tresa_d', '1522899331', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(891, '_transient_insta-a10-u-tresa_d', 'YToxMjp7aTowO2E6MTA6e3M6MTE6ImRlc2NyaXB0aW9uIjtzOjE0MDoiIkZlZWRpbmcgYmlyZHMgaXMgc28gdW5oZWFsdGh5IHRoYXQgQkMgU1BDQSBub3cgY29uc2lkZXIgaXQgaW5kaXJlY3QgYW5pbWFsIGNydWVsdHkuIiAjZG9udGZlZWR0aGViaXJkcyAjbG92ZXRoZWJpcmRzICNiaXJkaGVhbHRoICN2YW5jb3V2ZXIiO3M6NDoibGluayI7czozMDoiLy9pbnN0YWdyYW0uY29tL3AvQmhDUmNWQm5zbjkvIjtzOjQ6InRpbWUiO2k6MTUyMjYwMjE4OTtzOjg6ImNvbW1lbnRzIjtpOjA7czo1OiJsaWtlcyI7aToxMTtzOjk6InRodW1ibmFpbCI7czoxNTU6Ii8vc2NvbnRlbnQtbGF4My0yLmNkbmluc3RhZ3JhbS5jb20vdnAvZGZmMjMzNmViNGQ5ZDM2MzU3NDI3MjFjOGNkMWZiZTMvNUI2RkFDODkvdDUxLjI4ODUtMTUvczE1MHgxNTAvZTM1LzI5NzE3NjE5XzMzMjMzNTMwMzk1NjAwNV80MDQ0NzUxMTY4NTc5MDQzMzI4X24uanBnIjtzOjU6InNtYWxsIjtzOjE1NToiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC9hNGQyMDExNGJhNDQzMjNiMjc0M2Q5YTlmN2VlNTY5NS81QjZDQ0NDRS90NTEuMjg4NS0xNS9zMzIweDMyMC9lMzUvMjk3MTc2MTlfMzMyMzM1MzAzOTU2MDA1XzQwNDQ3NTExNjg1NzkwNDMzMjhfbi5qcGciO3M6NToibGFyZ2UiO3M6MTYyOiIvL3Njb250ZW50LWxheDMtMi5jZG5pbnN0YWdyYW0uY29tL3ZwLzRiNjJhMmYwMWQ5NmJkNTlkMzdmMmI4MzU5MjA5YmUzLzVCNjNFRDhEL3Q1MS4yODg1LTE1L3M2NDB4NjQwL3NoMC4wOC9lMzUvMjk3MTc2MTlfMzMyMzM1MzAzOTU2MDA1XzQwNDQ3NTExNjg1NzkwNDMzMjhfbi5qcGciO3M6ODoib3JpZ2luYWwiO3M6MTQ2OiIvL3Njb250ZW50LWxheDMtMi5jZG5pbnN0YWdyYW0uY29tL3ZwL2MyYzhjNzE1YjY5MjVkOTNiZWQxYTE4MzcxNjMzYWUzLzVCNEVBMUVDL3Q1MS4yODg1LTE1L2UzNS8yOTcxNzYxOV8zMzIzMzUzMDM5NTYwMDVfNDA0NDc1MTE2ODU3OTA0MzMyOF9uLmpwZyI7czo0OiJ0eXBlIjtzOjU6ImltYWdlIjt9aToxO2E6MTA6e3M6MTE6ImRlc2NyaXB0aW9uIjtzOjEyODoiIkxpa2UgYSBsaXR0bGUgZGVsaWdodGZ1bCBiaXNjdWl0LiIgI29saXZldGhlYmFzZW5qaSAjYmFzZW5qaXNvZmluc3RhZ3JhbSAjYmFzZW5qaSAjYmFzZW5qaWRvZyAjYmFzZW5qaXBvc2UgI3dhaXRpbmcgI2dvb2RmcmlkYXkiO3M6NDoibGluayI7czozMDoiLy9pbnN0YWdyYW0uY29tL3AvQmc5SVBraW5PQy0vIjtzOjQ6InRpbWUiO2k6MTUyMjQyOTU5NDtzOjg6ImNvbW1lbnRzIjtpOjM7czo1OiJsaWtlcyI7aToyMjtzOjk6InRodW1ibmFpbCI7czoxNTU6Ii8vc2NvbnRlbnQtbGF4My0yLmNkbmluc3RhZ3JhbS5jb20vdnAvMWI0NTVjOThiM2RmNzhlZWUwM2ZlZWVkY2MzM2NhYTQvNUI3NDY3NEUvdDUxLjI4ODUtMTUvczE1MHgxNTAvZTM1LzI5NDA0MzYyXzUwNzMyNDIxNjMzMDQ4M184NjMxNzM1NjgzMzMwODY3MjAwX24uanBnIjtzOjU6InNtYWxsIjtzOjE1NToiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC80ZDlkYjZjM2M0M2EwOWE3YTc0NzU3ODdmMjIzNmQyYS81QjU5OTMwOS90NTEuMjg4NS0xNS9zMzIweDMyMC9lMzUvMjk0MDQzNjJfNTA3MzI0MjE2MzMwNDgzXzg2MzE3MzU2ODMzMzA4NjcyMDBfbi5qcGciO3M6NToibGFyZ2UiO3M6MTYyOiIvL3Njb250ZW50LWxheDMtMi5jZG5pbnN0YWdyYW0uY29tL3ZwL2MzNDYyNTlmNzg3MjgxYmJiNWVkYzVjNmNkYTIyNTk5LzVCNjAyMTRBL3Q1MS4yODg1LTE1L3M2NDB4NjQwL3NoMC4wOC9lMzUvMjk0MDQzNjJfNTA3MzI0MjE2MzMwNDgzXzg2MzE3MzU2ODMzMzA4NjcyMDBfbi5qcGciO3M6ODoib3JpZ2luYWwiO3M6MTQ2OiIvL3Njb250ZW50LWxheDMtMi5jZG5pbnN0YWdyYW0uY29tL3ZwLzkyNzEyNjMwNzdmYzRmMThkOThmMTk2ZjI0NjVhMjUxLzVCNkRFNTJCL3Q1MS4yODg1LTE1L2UzNS8yOTQwNDM2Ml81MDczMjQyMTYzMzA0ODNfODYzMTczNTY4MzMzMDg2NzIwMF9uLmpwZyI7czo0OiJ0eXBlIjtzOjU6ImltYWdlIjt9aToyO2E6MTA6e3M6MTE6ImRlc2NyaXB0aW9uIjtzOjEyNDoiVGhpcyBmYWNlIGJldHdlZW4gYSBjb3VjaCBhbmQgYSBoYXJkIHBsYWNlLiDwn5i78J+YuyAjVGVlbmFnZUJheHRlciAjdGFiYnljYXRzb2ZpbnN0YWdyYW0gI2NhdCAjY2F0bG92ZXJzICNsb29raW5nZm9ydHJvdWJsZSI7czo0OiJsaW5rIjtzOjMwOiIvL2luc3RhZ3JhbS5jb20vcC9CZ3l6VTB0SFo4dy8iO3M6NDoidGltZSI7aToxNTIyMDgzMDgyO3M6ODoiY29tbWVudHMiO2k6MDtzOjU6Imxpa2VzIjtpOjE2O3M6OToidGh1bWJuYWlsIjtzOjE1NjoiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC9hYWE4NjBkMmM4NmRjM2VkZDAzZmM3YzYzM2FmNjc3OS81QjVCQUU5Ni90NTEuMjg4NS0xNS9zMTUweDE1MC9lMzUvMjkwOTM0MjdfMjAxMDQ2MDUyNTkzOTcyMV84Njk2NjMyODQ5NjI2ODI0NzA0X24uanBnIjtzOjU6InNtYWxsIjtzOjE1NjoiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC82MmNiMDdkYzcxMDZjMjI5ZjAwZTU5ODczMWI2OGFkZC81QjUxN0RBNi90NTEuMjg4NS0xNS9zMzIweDMyMC9lMzUvMjkwOTM0MjdfMjAxMDQ2MDUyNTkzOTcyMV84Njk2NjMyODQ5NjI2ODI0NzA0X24uanBnIjtzOjU6ImxhcmdlIjtzOjE2MzoiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC9iYTYxNjNjZTllYzRmOTI3ODg4NTFjNjAzYWY5NjNlOS81QjVFQjhFQi90NTEuMjg4NS0xNS9zNjQweDY0MC9zaDAuMDgvZTM1LzI5MDkzNDI3XzIwMTA0NjA1MjU5Mzk3MjFfODY5NjYzMjg0OTYyNjgyNDcwNF9uLmpwZyI7czo4OiJvcmlnaW5hbCI7czoxNDc6Ii8vc2NvbnRlbnQtbGF4My0yLmNkbmluc3RhZ3JhbS5jb20vdnAvMDUxOWJmOTVkYjdlYWRjZTQwY2NjZGJhODMzZDNmOGEvNUI1NTc3QzEvdDUxLjI4ODUtMTUvZTM1LzI5MDkzNDI3XzIwMTA0NjA1MjU5Mzk3MjFfODY5NjYzMjg0OTYyNjgyNDcwNF9uLmpwZyI7czo0OiJ0eXBlIjtzOjU6ImltYWdlIjt9aTozO2E6MTA6e3M6MTE6ImRlc2NyaXB0aW9uIjtzOjE3MjoiSSdsbCBjYWxsIGl0IGEgc3Vuc2V0IHZpZXcuIPCfjIfwn5GN8J+klwpOaWNlIHRvIGNvbWUgaG9tZSB0byB0aGlzIGFmdGVyIGEgbG9vb29uZyByYWlueSBkYXkuICNzdW5zZXQgI2NpdHlzdW5zZXQgI2JhbGNvbnl2aWV3ICN2YW5jb3V2ZXJsaXZpbmcgI0l0c0Fsd2F5c1JhaW5pbmdJblZhbmNvdXZlciI7czo0OiJsaW5rIjtzOjMwOiIvL2luc3RhZ3JhbS5jb20vcC9CZ3BndDV6bjVpTi8iO3M6NDoidGltZSI7aToxNTIxNzcxMzM2O3M6ODoiY29tbWVudHMiO2k6MDtzOjU6Imxpa2VzIjtpOjEzO3M6OToidGh1bWJuYWlsIjtzOjE1NToiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC84ZDAyZTE3ODliMzliMjRjYjMzM2M2NmY5MWM0YzcxMS81QjY5M0RDMS90NTEuMjg4NS0xNS9zMTUweDE1MC9lMzUvMjk0MDIyMjhfMTU4NDY5NTA0OTcxMDIwXzIwNzUyNTczMjYxNzE4NDg3MDRfbi5qcGciO3M6NToic21hbGwiO3M6MTU1OiIvL3Njb250ZW50LWxheDMtMi5jZG5pbnN0YWdyYW0uY29tL3ZwLzc2MDI4ZjAzNjNkMzEzMDI5MTJkYjNiNzk2NDk4ZGEzLzVCNzMwODg2L3Q1MS4yODg1LTE1L3MzMjB4MzIwL2UzNS8yOTQwMjIyOF8xNTg0Njk1MDQ5NzEwMjBfMjA3NTI1NzMyNjE3MTg0ODcwNF9uLmpwZyI7czo1OiJsYXJnZSI7czoxNjI6Ii8vc2NvbnRlbnQtbGF4My0yLmNkbmluc3RhZ3JhbS5jb20vdnAvNDUyNjQwNDMyZjIyY2JiY2Q0ZDg2YmY1YjNkY2IyMTYvNUI0RkM4QzUvdDUxLjI4ODUtMTUvczY0MHg2NDAvc2gwLjA4L2UzNS8yOTQwMjIyOF8xNTg0Njk1MDQ5NzEwMjBfMjA3NTI1NzMyNjE3MTg0ODcwNF9uLmpwZyI7czo4OiJvcmlnaW5hbCI7czoxNDY6Ii8vc2NvbnRlbnQtbGF4My0yLmNkbmluc3RhZ3JhbS5jb20vdnAvMzk3NjMyMTdjY2Y3ZGE4ZTBlNWNmNDQ0NjRlYzNlZjkvNUI1MDMxQTQvdDUxLjI4ODUtMTUvZTM1LzI5NDAyMjI4XzE1ODQ2OTUwNDk3MTAyMF8yMDc1MjU3MzI2MTcxODQ4NzA0X24uanBnIjtzOjQ6InR5cGUiO3M6NToiaW1hZ2UiO31pOjQ7YToxMDp7czoxMToiZGVzY3JpcHRpb24iO3M6MTY3OiJXaGVuIHlvdSBoYXZlIGFsbCBvZiB0aGUgd2luZSwgYnV0IG5vIHdpbmUgb3BlbmVyIC0gR29vZ2xlIGl0LiDwn4238J+Nt/Cfjbcjd2luZSAjd2luZWxvdmVyICN3aW5lb3BlbmVyICNub3dpbmVvcGVuZXIgI25vcHJvYmxlbSAjaGFtbWVyYW5kc2NyZXcgI21ha2VzdXJldGhlcmVpc25vcnVzdCI7czo0OiJsaW5rIjtzOjMwOiIvL2luc3RhZ3JhbS5jb20vcC9CZ25hRU90bnpRdy8iO3M6NDoidGltZSI7aToxNTIxNzAwNzQwO3M6ODoiY29tbWVudHMiO2k6MTtzOjU6Imxpa2VzIjtpOjE0O3M6OToidGh1bWJuYWlsIjtzOjE1NjoiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC9iN2EyYzljNzhhZmFjYzhiZTUwMGNiMmY2YTZhMmU5Yy81QjYxNzRGQi90NTEuMjg4NS0xNS9zMTUweDE1MC9lMzUvMjkwOTUzMjlfMTc4ODg3NDYyNDc0MTU3MF8yNjM3NjgzMTIxNzg0MzU2ODY0X24uanBnIjtzOjU6InNtYWxsIjtzOjE1NjoiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC84OWU2YjQxMWQ2ODI2YzUwMTI1Yzc4ODQ3ZDAzM2JkMi81QjRGNjVDQi90NTEuMjg4NS0xNS9zMzIweDMyMC9lMzUvMjkwOTUzMjlfMTc4ODg3NDYyNDc0MTU3MF8yNjM3NjgzMTIxNzg0MzU2ODY0X24uanBnIjtzOjU6ImxhcmdlIjtzOjE2MzoiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC9lMDdmNmJkMzZkZjRjZTIzNGEyMjA5YmI0YzM4YzFmZS81QjUyNUQ4Ni90NTEuMjg4NS0xNS9zNjQweDY0MC9zaDAuMDgvZTM1LzI5MDk1MzI5XzE3ODg4NzQ2MjQ3NDE1NzBfMjYzNzY4MzEyMTc4NDM1Njg2NF9uLmpwZyI7czo4OiJvcmlnaW5hbCI7czoxNDc6Ii8vc2NvbnRlbnQtbGF4My0yLmNkbmluc3RhZ3JhbS5jb20vdnAvODRlYmEwOTIyMWJhZThjNjg5ZjU5ZWI1NzBkNDRlNTQvNUI1MzNCQUMvdDUxLjI4ODUtMTUvZTM1LzI5MDk1MzI5XzE3ODg4NzQ2MjQ3NDE1NzBfMjYzNzY4MzEyMTc4NDM1Njg2NF9uLmpwZyI7czo0OiJ0eXBlIjtzOjU6ImltYWdlIjt9aTo1O2E6MTA6e3M6MTE6ImRlc2NyaXB0aW9uIjtzOjE0OToiSXQncyBhIGdvb2QgZGF5IGZvciBhIGZlcnJ5IHJpZGUuIOKbtO+4j+KbtO+4j+KbtO+4j+KbtO+4j/CfjJ7wn4ye8J+MnvCfjJ4KI2FxdWFidXMgI3NhdHVyZGF5ICNzaG9wcGluZyAjZ3JhbnZpbGxlaXNsYW5kICNJdHNBbHdheXNSYWluaW5nSW5WYW5jb3V2ZXIiO3M6NDoibGluayI7czozMDoiLy9pbnN0YWdyYW0uY29tL3AvQmdjVWdPZ0JvbzgvIjtzOjQ6InRpbWUiO2k6MTUyMTMyODcyNTtzOjg6ImNvbW1lbnRzIjtpOjA7czo1OiJsaWtlcyI7aToxMjtzOjk6InRodW1ibmFpbCI7czoxNTU6Ii8vc2NvbnRlbnQtbGF4My0yLmNkbmluc3RhZ3JhbS5jb20vdnAvZmI4ZjY3NGVmNDA2ZjExNzcyNmI3ZTRmOGVmNGIzN2YvNUI2NUMxQTkvdDUxLjI4ODUtMTUvczE1MHgxNTAvZTM1LzI5MDg3NzAzXzM2NzE2NTg0NzAyNjUwOF84NjYxOTc3NzI0ODgzMDQyMzA0X24uanBnIjtzOjU6InNtYWxsIjtzOjE1NToiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC8xYjJjOTEyZDc3NGFjNGM5NzA5Y2NkMDZmZGRjYTViMy81QjU4N0RFRS90NTEuMjg4NS0xNS9zMzIweDMyMC9lMzUvMjkwODc3MDNfMzY3MTY1ODQ3MDI2NTA4Xzg2NjE5Nzc3MjQ4ODMwNDIzMDRfbi5qcGciO3M6NToibGFyZ2UiO3M6MTYyOiIvL3Njb250ZW50LWxheDMtMi5jZG5pbnN0YWdyYW0uY29tL3ZwL2FmM2JiNDM0ZTg3ZjU2OTljNDM0NjM0YmZiZDg5MmI4LzVCNUIyNkFEL3Q1MS4yODg1LTE1L3M2NDB4NjQwL3NoMC4wOC9lMzUvMjkwODc3MDNfMzY3MTY1ODQ3MDI2NTA4Xzg2NjE5Nzc3MjQ4ODMwNDIzMDRfbi5qcGciO3M6ODoib3JpZ2luYWwiO3M6MTQ2OiIvL3Njb250ZW50LWxheDMtMi5jZG5pbnN0YWdyYW0uY29tL3ZwLzVlMjNkOTNjNmEzMjg2MGY0YTcxYTVlMjE2NzFhNDJmLzVCNjEzNUNDL3Q1MS4yODg1LTE1L2UzNS8yOTA4NzcwM18zNjcxNjU4NDcwMjY1MDhfODY2MTk3NzcyNDg4MzA0MjMwNF9uLmpwZyI7czo0OiJ0eXBlIjtzOjU6ImltYWdlIjt9aTo2O2E6MTA6e3M6MTE6ImRlc2NyaXB0aW9uIjtzOjgzOiJXaGVyZSBhbSBJICh1cyk/IEknbGwgZ2l2ZSB5b3Ugb25lIGd1ZXNzLiAjeWVsbG93ZG9nICN0YXN0eSAjY3JhZnRiZWVyICN0YXN0aW5ncm9vbSI7czo0OiJsaW5rIjtzOjMwOiIvL2luc3RhZ3JhbS5jb20vcC9CZjF5a29pSDVleC8iO3M6NDoidGltZSI7aToxNTIwMDM1ODY3O3M6ODoiY29tbWVudHMiO2k6MjtzOjU6Imxpa2VzIjtpOjE0O3M6OToidGh1bWJuYWlsIjtzOjE1NToiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC81ODI3Y2I1ODVkYTgwOWNkMWY3MTRlNWI0MTRjZjQ3YS81Qjc1NjVDRi90NTEuMjg4NS0xNS9zMTUweDE1MC9lMzUvMjgxNTYwNjFfMzUwODk0Mjk1NDEyNjUwXzM3NTQ4MTUzNzY4NzgyMDY5NzZfbi5qcGciO3M6NToic21hbGwiO3M6MTU1OiIvL3Njb250ZW50LWxheDMtMi5jZG5pbnN0YWdyYW0uY29tL3ZwLzI4NjBlZDM5YjFiNmE3OGU0MzFhZDFlNDcwZDQxZGI5LzVCNzE2QTg4L3Q1MS4yODg1LTE1L3MzMjB4MzIwL2UzNS8yODE1NjA2MV8zNTA4OTQyOTU0MTI2NTBfMzc1NDgxNTM3Njg3ODIwNjk3Nl9uLmpwZyI7czo1OiJsYXJnZSI7czoxNjI6Ii8vc2NvbnRlbnQtbGF4My0yLmNkbmluc3RhZ3JhbS5jb20vdnAvNjFmMDgxOTAyN2VjNmIxOTVkYWJiMGQyYjIwMmM3Y2IvNUI0RkQ3Q0IvdDUxLjI4ODUtMTUvczY0MHg2NDAvc2gwLjA4L2UzNS8yODE1NjA2MV8zNTA4OTQyOTU0MTI2NTBfMzc1NDgxNTM3Njg3ODIwNjk3Nl9uLmpwZyI7czo4OiJvcmlnaW5hbCI7czoxNDY6Ii8vc2NvbnRlbnQtbGF4My0yLmNkbmluc3RhZ3JhbS5jb20vdnAvN2UzYTJiYTVlZTYxOGRiNTZmYTFlODg3MjM1MDhjMDkvNUI3MDREQUEvdDUxLjI4ODUtMTUvZTM1LzI4MTU2MDYxXzM1MDg5NDI5NTQxMjY1MF8zNzU0ODE1Mzc2ODc4MjA2OTc2X24uanBnIjtzOjQ6InR5cGUiO3M6NToiaW1hZ2UiO31pOjc7YToxMDp7czoxMToiZGVzY3JpcHRpb24iO3M6MTAzOiJMaXN0ZW4gdG8gdGhlIGd1eS4g8J+YufCfmLkg4pml77iPCiNwdXJyc2ZvcmV2ZXIgI3B1cnIgI0JheHRlciAjbG9va2F0dGhpc2ZhY2UgI2hhcHB5Y2F0ICNjYXRsaWZlICNjYXRzIjtzOjQ6ImxpbmsiO3M6MzA6Ii8vaW5zdGFncmFtLmNvbS9wL0JmcFFMWnRuU2tGLyI7czo0OiJ0aW1lIjtpOjE1MTk2MTUzNzg7czo4OiJjb21tZW50cyI7aToxO3M6NToibGlrZXMiO2k6ODtzOjk6InRodW1ibmFpbCI7czoxNTU6Ii8vc2NvbnRlbnQtbGF4My0yLmNkbmluc3RhZ3JhbS5jb20vdnAvOGU5ZDgwODdlMjA3ZGQyMzM2MDIzZjc4NmFiZjNiNWUvNUFDNzlENEUvdDUxLjI4ODUtMTUvczE1MHgxNTAvZTM1LzI4NDMzNzU5XzE5NDAzNDk3MTM3MDc4Ml8xMTUzMDU5MjkxNDUyNjY5OTUyX24uanBnIjtzOjU6InNtYWxsIjtzOjE1NToiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC8yODRiNDYzNjcyZjgwMzQwZDNhNWI2ZTQ0ZDA2MzI1Ny81QUM4QTMwOS90NTEuMjg4NS0xNS9zMzIweDMyMC9lMzUvMjg0MzM3NTlfMTk0MDM0OTcxMzcwNzgyXzExNTMwNTkyOTE0NTI2Njk5NTJfbi5qcGciO3M6NToibGFyZ2UiO3M6MTYyOiIvL3Njb250ZW50LWxheDMtMi5jZG5pbnN0YWdyYW0uY29tL3ZwLzFlZmM4YTU3MDRhMjNiZTA0NDUwZTMwOWM3OGVkYjVhLzVBQzgxQjhBL3Q1MS4yODg1LTE1L3M2NDB4NjQwL3NoMC4wOC9lMzUvMjg0MzM3NTlfMTk0MDM0OTcxMzcwNzgyXzExNTMwNTkyOTE0NTI2Njk5NTJfbi5qcGciO3M6ODoib3JpZ2luYWwiO3M6MTQ2OiIvL3Njb250ZW50LWxheDMtMi5jZG5pbnN0YWdyYW0uY29tL3ZwLzJlNGZiMGI2ODY2MTkxZTZmZmM2ZTJmODJlN2Y5NWU2LzVBQzgxOUVCL3Q1MS4yODg1LTE1L2UzNS8yODQzMzc1OV8xOTQwMzQ5NzEzNzA3ODJfMTE1MzA1OTI5MTQ1MjY2OTk1Ml9uLmpwZyI7czo0OiJ0eXBlIjtzOjU6InZpZGVvIjt9aTo4O2E6MTA6e3M6MTE6ImRlc2NyaXB0aW9uIjtzOjExODoiWWF5LiBUaGUgbW91bnRhaW5zLCBibHVlIHNreSwgYW5kIHN1biBhcmUgYmFjayEg8J+Xu/CfjJ4gI21vdW50YWludmlldyAjc25vdyAjc3Vuc2hpbmUgI2JsdWVza2llcyAjaGluZ2VwYXJrICNkb2d3YWxrcyI7czo0OiJsaW5rIjtzOjMwOiIvL2luc3RhZ3JhbS5jb20vcC9CZm1WTVZtblZDRC8iO3M6NDoidGltZSI7aToxNTE5NTE3MTQ3O3M6ODoiY29tbWVudHMiO2k6MjtzOjU6Imxpa2VzIjtpOjk7czo5OiJ0aHVtYm5haWwiO3M6MTU1OiIvL3Njb250ZW50LWxheDMtMi5jZG5pbnN0YWdyYW0uY29tL3ZwLzEzMjU5NzExNjRjNmFiYzNjZDUwMmE5OWQ3ZWRkOWYwLzVCNkI5QTkwL3Q1MS4yODg1LTE1L3MxNTB4MTUwL2UzNS8yNzg5MDk3N181NzYxNjI5MDkzOTc2NDFfODY2NDY4OTc3MzM5MjE2NjkxMl9uLmpwZyI7czo1OiJzbWFsbCI7czoxNTU6Ii8vc2NvbnRlbnQtbGF4My0yLmNkbmluc3RhZ3JhbS5jb20vdnAvNTI1NTk1YjZjYjE3ODYxMDQ2MTVlNWM1NmI5YTc1NmEvNUI3MTY1RDcvdDUxLjI4ODUtMTUvczMyMHgzMjAvZTM1LzI3ODkwOTc3XzU3NjE2MjkwOTM5NzY0MV84NjY0Njg5NzczMzkyMTY2OTEyX24uanBnIjtzOjU6ImxhcmdlIjtzOjE2MjoiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC9kZDhhMGE3NmVlNTRlZTFjZDYxZGVhNzM3NzVjNGIyYy81QjY5REI5NC90NTEuMjg4NS0xNS9zNjQweDY0MC9zaDAuMDgvZTM1LzI3ODkwOTc3XzU3NjE2MjkwOTM5NzY0MV84NjY0Njg5NzczMzkyMTY2OTEyX24uanBnIjtzOjg6Im9yaWdpbmFsIjtzOjE0NjoiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC9iMDdjODJhOGQ5YWFkZTRjMDljNDVhNGRiZTczNDJlMy81QjVCMzJGNS90NTEuMjg4NS0xNS9lMzUvMjc4OTA5NzdfNTc2MTYyOTA5Mzk3NjQxXzg2NjQ2ODk3NzMzOTIxNjY5MTJfbi5qcGciO3M6NDoidHlwZSI7czo1OiJpbWFnZSI7fWk6OTthOjEwOntzOjExOiJkZXNjcmlwdGlvbiI7czoxNjU6IkkganVzdCBmb3VuZCBvdXQgd2UgYXJlIHVuZGVyIGEgInNub3dmYWxsIHdhcm5pbmciLiBJIHRoaW5rIHRoaXMgbWVhbnMgdGhlIHNub3cgd2lsbCBuZXZlciBzdG9wLiDinYTvuI/inYTvuI/inYTvuI/inYTvuI8gI3Nub3dmYWxsd2FybmluZyAjc25vdwojc25vd2RheSAjY2FuYWRhbGlmZSI7czo0OiJsaW5rIjtzOjMwOiIvL2luc3RhZ3JhbS5jb20vcC9CZmp5cUlobk5kQy8iO3M6NDoidGltZSI7aToxNTE5NDMxOTMyO3M6ODoiY29tbWVudHMiO2k6MDtzOjU6Imxpa2VzIjtpOjk7czo5OiJ0aHVtYm5haWwiO3M6MTU1OiIvL3Njb250ZW50LWxheDMtMi5jZG5pbnN0YWdyYW0uY29tL3ZwL2YzMTZkODIxM2I5NWU1YTUyZDdjMjQ3YzkwM2YwNGRlLzVCNkU2QjU3L3Q1MS4yODg1LTE1L3MxNTB4MTUwL2UzNS8yODQzMDg3N18zMzYyMzgwMTM1NTQ0NTZfNjI5MDc4Mjc5Mzk0MTEyMzA3Ml9uLmpwZyI7czo1OiJzbWFsbCI7czoxNTU6Ii8vc2NvbnRlbnQtbGF4My0yLmNkbmluc3RhZ3JhbS5jb20vdnAvOTVhMjk4MDg1YzVhYjI4NDYzNDViYThjZTA3YTA5YWMvNUI1NUM0MTAvdDUxLjI4ODUtMTUvczMyMHgzMjAvZTM1LzI4NDMwODc3XzMzNjIzODAxMzU1NDQ1Nl82MjkwNzgyNzkzOTQxMTIzMDcyX24uanBnIjtzOjU6ImxhcmdlIjtzOjE2MjoiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC9jYTVhYzZhMGUwOWU2NTYzZjYxMTkyMGYwZTZmM2NkMC81QjcwNkE1My90NTEuMjg4NS0xNS9zNjQweDY0MC9zaDAuMDgvZTM1LzI4NDMwODc3XzMzNjIzODAxMzU1NDQ1Nl82MjkwNzgyNzkzOTQxMTIzMDcyX24uanBnIjtzOjg6Im9yaWdpbmFsIjtzOjE0NjoiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC8zMmY1NzgxYzFiZTMzYjkyZWZmZWMzZGFmYzM2Njk1NC81QjU2QTEzMi90NTEuMjg4NS0xNS9lMzUvMjg0MzA4NzdfMzM2MjM4MDEzNTU0NDU2XzYyOTA3ODI3OTM5NDExMjMwNzJfbi5qcGciO3M6NDoidHlwZSI7czo1OiJpbWFnZSI7fWk6MTA7YToxMDp7czoxMToiZGVzY3JpcHRpb24iO3M6MjEwOiJMaXR0bGUgT2xpdmVzIGhhZCBmdW4gY2hhc2luZyBvdGhlciBkb2dzIGF0IHRoZSBkb2cgcGFyayBhbmQgdGhlbiB0aG91Z2h0IG9mIGhlciB3YXJtIGJlZCBhdCBob21lLiDwn5CV4piD77iP4pml77iP8J+bj++4jwojb2xpdmV0aGViYXNlbmppICNiYXNlbmppc29maW5zdGFncmFtICNoaW5nZXBhcmsgI3Nub3dkYXkgICNJdHNBbHdheXNSYWluaW5nSW5WYW5jb3V2ZXIiO3M6NDoibGluayI7czozMDoiLy9pbnN0YWdyYW0uY29tL3AvQmZqVmpud24zWHcvIjtzOjQ6InRpbWUiO2k6MTUxOTQxNjY3NTtzOjg6ImNvbW1lbnRzIjtpOjE7czo1OiJsaWtlcyI7aToxMjtzOjk6InRodW1ibmFpbCI7czoxNTY6Ii8vc2NvbnRlbnQtbGF4My0yLmNkbmluc3RhZ3JhbS5jb20vdnAvN2Y4YTI1MGFmMDFlY2Q1NzQ4M2M0ODE3YThjMTNiZTEvNUI3MEUxMDQvdDUxLjI4ODUtMTUvczE1MHgxNTAvZTM1LzI3ODkzNDU5XzE1MjY3NjYzMzc0NDAwMThfMTA3MTUyODk2MjM1OTgyMDI4OF9uLmpwZyI7czo1OiJzbWFsbCI7czoxNTY6Ii8vc2NvbnRlbnQtbGF4My0yLmNkbmluc3RhZ3JhbS5jb20vdnAvYjI4MTk1NDljZWY2NTY5MDM3NGY1MzMyZWQwMmIzZDQvNUI1MTY1MzQvdDUxLjI4ODUtMTUvczMyMHgzMjAvZTM1LzI3ODkzNDU5XzE1MjY3NjYzMzc0NDAwMThfMTA3MTUyODk2MjM1OTgyMDI4OF9uLmpwZyI7czo1OiJsYXJnZSI7czoxNjM6Ii8vc2NvbnRlbnQtbGF4My0yLmNkbmluc3RhZ3JhbS5jb20vdnAvNDBmNzNlZmFjZTUyNjA5YmY5OWU3MWJlZTJmMDFmYjEvNUI1QkI4NzkvdDUxLjI4ODUtMTUvczY0MHg2NDAvc2gwLjA4L2UzNS8yNzg5MzQ1OV8xNTI2NzY2MzM3NDQwMDE4XzEwNzE1Mjg5NjIzNTk4MjAyODhfbi5qcGciO3M6ODoib3JpZ2luYWwiO3M6MTQ3OiIvL3Njb250ZW50LWxheDMtMi5jZG5pbnN0YWdyYW0uY29tL3ZwL2QxNTFlZDUwZjg0Nzc2OWMyZjcxZDkxMGY0ZTU2OWY4LzVCNTk2MjUzL3Q1MS4yODg1LTE1L2UzNS8yNzg5MzQ1OV8xNTI2NzY2MzM3NDQwMDE4XzEwNzE1Mjg5NjIzNTk4MjAyODhfbi5qcGciO3M6NDoidHlwZSI7czo1OiJpbWFnZSI7fWk6MTE7YToxMDp7czoxMToiZGVzY3JpcHRpb24iO3M6MTE5OiJTb21ldGltZXMgSSBjYW4ndCBoYW5kbGUgaGlzIGN1dGVuZXNzIG9yIGhpcyBsaXR0bGUgc25vcmVzLiDwn5i7ICNCYXh0ZXIgI2NhdHNfb2ZfaW5zdGFncmFtICAjY2F0c2FyZXRoZWJlc3QgICN0YWJieWNhdCI7czo0OiJsaW5rIjtzOjMwOiIvL2luc3RhZ3JhbS5jb20vcC9CZmgyTUd0SHBERi8iO3M6NDoidGltZSI7aToxNTE5MzY2Njc1O3M6ODoiY29tbWVudHMiO2k6MjtzOjU6Imxpa2VzIjtpOjE2O3M6OToidGh1bWJuYWlsIjtzOjE1NjoiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC81NjQ1MGRhZjk2Yjc1ZjYwZDg0MjljMDg3NTJhMmJkZS81Qjc1NjIzOS90NTEuMjg4NS0xNS9zMTUweDE1MC9lMzUvMjc4ODA0NTNfMTQ5OTM2NTM1MzUyMjc0NV82MTEwODUyMjU1ODM2MDEyNTQ0X24uanBnIjtzOjU6InNtYWxsIjtzOjE1NjoiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC9mMTBhZDNhNjVmOTE1MGI4MGQ5M2IzYTkyOWEwNDFmZS81QjcyQkYwOS90NTEuMjg4NS0xNS9zMzIweDMyMC9lMzUvMjc4ODA0NTNfMTQ5OTM2NTM1MzUyMjc0NV82MTEwODUyMjU1ODM2MDEyNTQ0X24uanBnIjtzOjU6ImxhcmdlIjtzOjE2MzoiLy9zY29udGVudC1sYXgzLTIuY2RuaW5zdGFncmFtLmNvbS92cC83ZTFmMGI2MjhhZjFhNGU3YWNiNGY1NTcwMmM1YjhjYi81QjZGOTg0NC90NTEuMjg4NS0xNS9zNjQweDY0MC9zaDAuMDgvZTM1LzI3ODgwNDUzXzE0OTkzNjUzNTM1MjI3NDVfNjExMDg1MjI1NTgzNjAxMjU0NF9uLmpwZyI7czo4OiJvcmlnaW5hbCI7czoxNDc6Ii8vc2NvbnRlbnQtbGF4My0yLmNkbmluc3RhZ3JhbS5jb20vdnAvMjA2ZmVmYzIyNGUwYzc0ZDk5MzIwZjJmMWRhNWE2NTAvNUI0RkMzNkUvdDUxLjI4ODUtMTUvZTM1LzI3ODgwNDUzXzE0OTkzNjUzNTM1MjI3NDVfNjExMDg1MjI1NTgzNjAxMjU0NF9uLmpwZyI7czo0OiJ0eXBlIjtzOjU6ImltYWdlIjt9fQ==', 'no'),
(892, '_transient_doing_cron', '1522970494.5033679008483886718750', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'page-homepage-slider.php'),
(2, 4, '_wp_trash_meta_status', 'publish'),
(3, 4, '_wp_trash_meta_time', '1520451632'),
(4, 5, '_edit_last', '1'),
(5, 5, '_edit_lock', '1522365042:1'),
(6, 7, '_edit_last', '1'),
(7, 7, '_edit_lock', '1520535448:1'),
(8, 8, '_edit_last', '1'),
(9, 8, '_edit_lock', '1520537260:1'),
(10, 9, '_edit_last', '1'),
(11, 9, '_edit_lock', '1522371143:1'),
(12, 11, '_edit_last', '1'),
(13, 11, '_edit_lock', '1520536770:1'),
(14, 15, '_edit_last', '1'),
(15, 15, '_edit_lock', '1520537687:1'),
(16, 16, '_edit_last', '1'),
(17, 16, '_edit_lock', '1520537861:1'),
(18, 20, '_edit_last', '1'),
(19, 20, '_edit_lock', '1520544170:1'),
(20, 22, '_edit_last', '1'),
(21, 22, '_edit_lock', '1520544492:1'),
(22, 22, 'movie_rating', '5'),
(23, 9, '_wp_page_template', 'template-menu.php'),
(24, 23, '_edit_last', '1'),
(25, 23, '_edit_lock', '1520546690:1'),
(26, 26, '_edit_last', '1'),
(27, 26, '_edit_lock', '1520901945:1'),
(28, 28, '_edit_last', '1'),
(29, 28, '_edit_lock', '1520886098:1'),
(30, 29, '_edit_last', '1'),
(31, 29, '_edit_lock', '1521506157:1'),
(32, 29, '_wp_page_template', 'template-blog.php'),
(33, 31, '_wp_trash_meta_status', 'publish'),
(34, 31, '_wp_trash_meta_time', '1520555552'),
(35, 32, '_wp_attached_file', '2018/03/20180127_151236-1.jpg'),
(36, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:2268;s:4:\"file\";s:29:\"2018/03/20180127_151236-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"20180127_151236-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"20180127_151236-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"20180127_151236-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"20180127_151236-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.7\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"SM-G950U\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1517065956\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.25\";s:3:\"iso\";s:2:\"50\";s:13:\"shutter_speed\";s:17:\"0.000456204379562\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(38, 2, '_edit_lock', '1522364385:1'),
(39, 2, '_edit_last', '1'),
(40, 36, '_menu_item_type', 'post_type'),
(41, 36, '_menu_item_menu_item_parent', '0'),
(42, 36, '_menu_item_object_id', '29'),
(43, 36, '_menu_item_object', 'page'),
(44, 36, '_menu_item_target', ''),
(45, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 36, '_menu_item_xfn', ''),
(47, 36, '_menu_item_url', ''),
(49, 37, '_menu_item_type', 'post_type'),
(50, 37, '_menu_item_menu_item_parent', '96'),
(51, 37, '_menu_item_object_id', '9'),
(52, 37, '_menu_item_object', 'page'),
(53, 37, '_menu_item_target', ''),
(54, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 37, '_menu_item_xfn', ''),
(56, 37, '_menu_item_url', ''),
(58, 38, '_menu_item_type', 'post_type'),
(59, 38, '_menu_item_menu_item_parent', '0'),
(60, 38, '_menu_item_object_id', '2'),
(61, 38, '_menu_item_object', 'page'),
(62, 38, '_menu_item_target', ''),
(63, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 38, '_menu_item_xfn', ''),
(65, 38, '_menu_item_url', ''),
(67, 39, '_edit_last', '1'),
(68, 39, '_edit_lock', '1520561481:1'),
(69, 41, '_edit_last', '1'),
(70, 41, '_edit_lock', '1520561580:1'),
(71, 44, '_edit_last', '1'),
(72, 44, '_edit_lock', '1520561588:1'),
(73, 46, '_edit_last', '1'),
(74, 46, '_edit_lock', '1522367287:1'),
(75, 46, '_wp_page_template', 'default'),
(76, 28, '_wp_page_template', 'single-lunch-menu-item.php'),
(77, 26, '_wp_page_template', 'single-lunch-menu-item.php'),
(78, 50, '_wp_attached_file', '2018/03/zebras.png'),
(79, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:320;s:4:\"file\";s:18:\"2018/03/zebras.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"zebras-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"zebras-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 51, '_wp_attached_file', '2018/03/cropped-zebras.png'),
(81, 51, '_wp_attachment_context', 'site-icon'),
(82, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2018/03/cropped-zebras.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-zebras-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-zebras-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:26:\"cropped-zebras-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:26:\"cropped-zebras-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:26:\"cropped-zebras-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:24:\"cropped-zebras-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 52, '_wp_trash_meta_status', 'publish'),
(84, 52, '_wp_trash_meta_time', '1520573372'),
(85, 53, '_wp_trash_meta_status', 'publish'),
(86, 53, '_wp_trash_meta_time', '1520573394'),
(87, 54, '_wp_trash_meta_status', 'publish'),
(88, 54, '_wp_trash_meta_time', '1520573410'),
(89, 55, '_wp_attached_file', '2018/03/zebras-colors.jpg'),
(90, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:25:\"2018/03/zebras-colors.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"zebras-colors-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"zebras-colors-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"zebras-colors-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:35:\"(c) Slothastronaut | Dreamstime.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(91, 56, '_wp_attached_file', '2018/03/cropped-zebras-colors.jpg'),
(92, 56, '_wp_attachment_context', 'site-icon'),
(93, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2018/03/cropped-zebras-colors.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-zebras-colors-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"cropped-zebras-colors-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:33:\"cropped-zebras-colors-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:33:\"cropped-zebras-colors-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:33:\"cropped-zebras-colors-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:31:\"cropped-zebras-colors-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(94, 57, '_wp_trash_meta_status', 'publish'),
(95, 57, '_wp_trash_meta_time', '1520615117'),
(96, 58, '_wp_trash_meta_status', 'publish'),
(97, 58, '_wp_trash_meta_time', '1520619989'),
(98, 59, 'ml-slider_settings', 'a:35:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:4:\"2000\";s:6:\"height\";s:3:\"800\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.6999999999999999555910790149937383830547332763671875;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:4:\"1000\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";s:5:\"false\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(102, 61, 'ml-slider_type', 'image'),
(103, 61, 'ml-slider_inherit_image_caption', '1'),
(104, 61, 'ml-slider_inherit_image_title', '1'),
(105, 61, 'ml-slider_inherit_image_alt', '1'),
(107, 61, 'ml-slider_crop_position', 'center-center'),
(108, 61, '_wp_attachment_image_alt', ''),
(109, 61, '_wp_desired_post_slug', 'slider-59-image'),
(110, 62, '_wp_attached_file', '2018/03/spices-bowls-1.jpg'),
(111, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:26:\"2018/03/spices-bowls-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"spices-bowls-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"spices-bowls-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"spices-bowls-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"spices-bowls-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1300x600\";a:4:{s:4:\"file\";s:27:\"spices-bowls-1-1300x600.jpg\";s:5:\"width\";i:1300;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-2000x800\";a:4:{s:4:\"file\";s:27:\"spices-bowls-1-2000x800.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:29:\"(c) Marilyna | Dreamstime.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(112, 63, '_wp_attached_file', '2018/03/spices-spoons-1.jpg'),
(113, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:27:\"2018/03/spices-spoons-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"spices-spoons-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"spices-spoons-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"spices-spoons-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"spices-spoons-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1300x600\";a:4:{s:4:\"file\";s:28:\"spices-spoons-1-1300x600.jpg\";s:5:\"width\";i:1300;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-2000x800\";a:4:{s:4:\"file\";s:28:\"spices-spoons-1-2000x800.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:29:\"(c) Marilyna | Dreamstime.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 64, '_thumbnail_id', '62'),
(115, 64, 'ml-slider_type', 'image'),
(116, 64, 'ml-slider_inherit_image_caption', ''),
(117, 64, 'ml-slider_inherit_image_title', ''),
(118, 64, 'ml-slider_inherit_image_alt', ''),
(119, 65, '_thumbnail_id', '63'),
(120, 65, 'ml-slider_type', 'image'),
(121, 65, 'ml-slider_inherit_image_caption', ''),
(122, 65, 'ml-slider_inherit_image_title', ''),
(123, 65, 'ml-slider_inherit_image_alt', ''),
(124, 62, '_wp_attachment_backup_sizes', 'a:2:{s:16:\"resized-1300x600\";a:5:{s:4:\"path\";s:98:\"/Users/moderncultivator/Sites/HTML-template/wp-content/uploads/2018/03/spices-bowls-1-1300x600.jpg\";s:4:\"file\";s:27:\"spices-bowls-1-1300x600.jpg\";s:5:\"width\";i:1300;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-2000x800\";a:5:{s:4:\"path\";s:98:\"/Users/moderncultivator/Sites/HTML-template/wp-content/uploads/2018/03/spices-bowls-1-2000x800.jpg\";s:4:\"file\";s:27:\"spices-bowls-1-2000x800.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(125, 63, '_wp_attachment_backup_sizes', 'a:2:{s:16:\"resized-1300x600\";a:5:{s:4:\"path\";s:99:\"/Users/moderncultivator/Sites/HTML-template/wp-content/uploads/2018/03/spices-spoons-1-1300x600.jpg\";s:4:\"file\";s:28:\"spices-spoons-1-1300x600.jpg\";s:5:\"width\";i:1300;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-2000x800\";a:5:{s:4:\"path\";s:99:\"/Users/moderncultivator/Sites/HTML-template/wp-content/uploads/2018/03/spices-spoons-1-2000x800.jpg\";s:4:\"file\";s:28:\"spices-spoons-1-2000x800.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(126, 64, 'ml-slider_title', 'Different spices in different size bowls'),
(127, 64, 'ml-slider_crop_position', 'center-center'),
(128, 64, '_wp_attachment_image_alt', 'Different spices in different size spoons'),
(129, 65, 'ml-slider_title', 'Different spices in different size spoons'),
(130, 65, 'ml-slider_crop_position', 'center-center'),
(131, 65, '_wp_attachment_image_alt', 'Different spices in different size spoons'),
(137, 69, '_wp_trash_meta_status', 'publish'),
(138, 69, '_wp_trash_meta_time', '1520636324'),
(139, 70, '_wp_trash_meta_status', 'publish'),
(140, 70, '_wp_trash_meta_time', '1520638909'),
(141, 71, '_wp_trash_meta_status', 'publish'),
(142, 71, '_wp_trash_meta_time', '1520639172'),
(143, 72, '_wp_trash_meta_status', 'publish'),
(144, 72, '_wp_trash_meta_time', '1520639394'),
(145, 73, '_wp_attached_file', '2018/03/zebras-colors-logo-2.png'),
(146, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:460;s:6:\"height\";i:460;s:4:\"file\";s:32:\"2018/03/zebras-colors-logo-2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"zebras-colors-logo-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"zebras-colors-logo-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 74, '_wp_trash_meta_status', 'publish'),
(148, 74, '_wp_trash_meta_time', '1520639839'),
(158, 76, '_menu_item_type', 'post_type'),
(159, 76, '_menu_item_menu_item_parent', '0'),
(160, 76, '_menu_item_object_id', '9'),
(161, 76, '_menu_item_object', 'page'),
(162, 76, '_menu_item_target', ''),
(163, 76, '_menu_item_classes', 'a:1:{i:0;s:19:\"lunch-menu-bg-image\";}'),
(164, 76, '_menu_item_xfn', ''),
(165, 76, '_menu_item_url', ''),
(168, 79, '_wp_attached_file', '2018/03/220px-Plains_Zebra_Equus_quagga-1.jpg'),
(169, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:330;s:4:\"file\";s:45:\"2018/03/220px-Plains_Zebra_Equus_quagga-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"220px-Plains_Zebra_Equus_quagga-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"220px-Plains_Zebra_Equus_quagga-1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(170, 5, '_thumbnail_id', '79'),
(172, 81, '_edit_last', '1'),
(173, 81, '_wp_page_template', 'default'),
(174, 81, '_edit_lock', '1522364323:1'),
(175, 84, '_menu_item_type', 'post_type'),
(176, 84, '_menu_item_menu_item_parent', '0'),
(177, 84, '_menu_item_object_id', '81'),
(178, 84, '_menu_item_object', 'page'),
(179, 84, '_menu_item_target', ''),
(180, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(181, 84, '_menu_item_xfn', ''),
(182, 84, '_menu_item_url', ''),
(184, 85, '_edit_last', '1'),
(185, 85, '_edit_lock', '1522270754:1'),
(186, 85, '_wp_page_template', 'template-menus.php'),
(187, 87, '_edit_last', '1'),
(188, 87, '_edit_lock', '1522257283:1'),
(189, 89, '_edit_last', '1'),
(190, 89, '_wp_page_template', 'template-menu.php'),
(191, 89, '_edit_lock', '1522361994:1'),
(192, 87, '_wp_page_template', 'single-menu-item.php'),
(193, 91, '_menu_item_type', 'post_type'),
(194, 91, '_menu_item_menu_item_parent', '0'),
(195, 91, '_menu_item_object_id', '89'),
(196, 91, '_menu_item_object', 'page'),
(197, 91, '_menu_item_target', ''),
(198, 91, '_menu_item_classes', 'a:1:{i:0;s:20:\"dinner-menu-bg-image\";}'),
(199, 91, '_menu_item_xfn', ''),
(200, 91, '_menu_item_url', ''),
(202, 92, '_menu_item_type', 'post_type'),
(203, 92, '_menu_item_menu_item_parent', '0'),
(204, 92, '_menu_item_object_id', '89'),
(205, 92, '_menu_item_object', 'page'),
(206, 92, '_menu_item_target', ''),
(207, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(208, 92, '_menu_item_xfn', ''),
(209, 92, '_menu_item_url', ''),
(210, 92, '_menu_item_orphaned', '1520644926'),
(211, 93, '_menu_item_type', 'post_type'),
(212, 93, '_menu_item_menu_item_parent', '96'),
(213, 93, '_menu_item_object_id', '89'),
(214, 93, '_menu_item_object', 'page'),
(215, 93, '_menu_item_target', ''),
(216, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(217, 93, '_menu_item_xfn', ''),
(218, 93, '_menu_item_url', ''),
(220, 96, '_menu_item_type', 'post_type'),
(221, 96, '_menu_item_menu_item_parent', '0'),
(222, 96, '_menu_item_object_id', '85'),
(223, 96, '_menu_item_object', 'page'),
(224, 96, '_menu_item_target', ''),
(225, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(226, 96, '_menu_item_xfn', ''),
(227, 96, '_menu_item_url', ''),
(228, 101, '_edit_last', '1'),
(229, 101, '_edit_lock', '1520886108:1'),
(230, 101, '_wp_page_template', 'single-lunch-menu-item.php'),
(232, 106, '_edit_last', '1'),
(233, 106, '_edit_lock', '1520903771:1'),
(234, 106, '_wp_page_template', 'single-lunch-menu-item.php'),
(235, 108, '_edit_last', '1'),
(236, 108, '_edit_lock', '1520907231:1'),
(237, 108, '_wp_page_template', 'default'),
(238, 1, '_edit_lock', '1522364241:1'),
(239, 1, '_edit_last', '1'),
(242, 1, '_wp_old_slug', 'hello-world'),
(243, 111, '_edit_last', '1'),
(244, 111, '_edit_lock', '1520881118:1'),
(245, 112, '_edit_last', '1'),
(246, 112, '_wp_page_template', 'template-menu.php'),
(247, 112, '_edit_lock', '1522363718:1'),
(257, 115, '_menu_item_type', 'post_type'),
(258, 115, '_menu_item_menu_item_parent', '129'),
(259, 115, '_menu_item_object_id', '112'),
(260, 115, '_menu_item_object', 'page'),
(261, 115, '_menu_item_target', ''),
(262, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(263, 115, '_menu_item_xfn', ''),
(264, 115, '_menu_item_url', ''),
(266, 46, 'price', '10'),
(267, 106, 'price', '12'),
(268, 108, 'price', '29'),
(269, 87, 'price', '38'),
(270, 121, '_edit_last', '1'),
(271, 121, '_edit_lock', '1521170764:1'),
(272, 121, '_wp_page_template', 'default'),
(273, 125, '_wp_trash_meta_status', 'publish'),
(274, 125, '_wp_trash_meta_time', '1520916668'),
(275, 126, '_menu_item_type', 'post_type'),
(276, 126, '_menu_item_menu_item_parent', '0'),
(277, 126, '_menu_item_object_id', '112'),
(278, 126, '_menu_item_object', 'page'),
(279, 126, '_menu_item_target', ''),
(280, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(281, 126, '_menu_item_xfn', ''),
(282, 126, '_menu_item_url', ''),
(284, 127, '_edit_last', '1'),
(285, 127, '_edit_lock', '1521508370:1'),
(286, 127, '_wp_page_template', 'default'),
(287, 129, '_menu_item_type', 'post_type'),
(288, 129, '_menu_item_menu_item_parent', '0'),
(289, 129, '_menu_item_object_id', '127'),
(290, 129, '_menu_item_object', 'page'),
(291, 129, '_menu_item_target', ''),
(292, 129, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(293, 129, '_menu_item_xfn', ''),
(294, 129, '_menu_item_url', ''),
(295, 131, '_wp_attached_file', '2018/03/dreamstime_s_68294930.jpg'),
(296, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:534;s:4:\"file\";s:33:\"2018/03/dreamstime_s_68294930.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"dreamstime_s_68294930-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"dreamstime_s_68294930-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"dreamstime_s_68294930-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:33:\"dreamstime_s_68294930-270x170.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"screen-shot\";a:4:{s:4:\"file\";s:33:\"dreamstime_s_68294930-720x481.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:481;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:35:\"(c) Rawpixelimages | Dreamstime.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(297, 9, '_thumbnail_id', '225'),
(298, 132, '_wp_attached_file', '2018/03/lunch-menu.jpg'),
(299, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1489;s:6:\"height\";i:506;s:4:\"file\";s:22:\"2018/03/lunch-menu.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"lunch-menu-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"lunch-menu-300x102.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"lunch-menu-768x261.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:261;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"lunch-menu-1024x348.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:348;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"lunch-menu-270x170.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"screen-shot\";a:4:{s:4:\"file\";s:22:\"lunch-menu-720x245.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(c) Konstanttin | Dreamstime.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(300, 134, '_wp_attached_file', '2018/03/dinner-menu.jpg'),
(301, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1489;s:6:\"height\";i:506;s:4:\"file\";s:23:\"2018/03/dinner-menu.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"dinner-menu-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"dinner-menu-300x102.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"dinner-menu-768x261.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:261;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"dinner-menu-1024x348.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:348;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:23:\"dinner-menu-270x170.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"screen-shot\";a:4:{s:4:\"file\";s:23:\"dinner-menu-720x245.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(c) Konstanttin | Dreamstime.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(303, 89, '_thumbnail_id', '228'),
(305, 136, '_edit_last', '1'),
(306, 136, '_edit_lock', '1521171853:1'),
(307, 136, '_wp_page_template', 'search.php'),
(308, 121, '_wp_trash_meta_status', 'publish'),
(309, 121, '_wp_trash_meta_time', '1521170908'),
(310, 121, '_wp_desired_post_slug', 'search-s'),
(311, 29, '_thumbnail_id', '55'),
(312, 146, '_edit_lock', '1521853168:1'),
(313, 146, '_edit_last', '1'),
(314, 146, 'dc_dcb_html', '&lt;div class=&quot;flexbox&quot;&gt;\r\n    &lt;div class=&quot;flex-item&quot;&gt;\r\n        &lt;a href=&quot;#&quot;&gt;\r\n            Breakfast Menu\r\n        &lt;/a&gt;   \r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;flex-item&quot;&gt;\r\n        &lt;a href=&quot;#&quot;&gt;\r\n            Brunch Menu\r\n        &lt;/a&gt;   \r\n    &lt;/div&gt;\r\n     &lt;div class=&quot;flex-item&quot;&gt;\r\n        &lt;a href=&quot;#&quot;&gt;\r\n            Lunch Menu\r\n        &lt;/a&gt;   \r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;flex-item&quot;&gt;\r\n        &lt;a href=&quot;#&quot;&gt;\r\n            Dinner Menu\r\n        &lt;/a&gt;   \r\n    &lt;/div&gt;\r\n&lt;/div&gt;'),
(315, 146, 'dc_dcb_css', ''),
(316, 146, 'dc_dcb_js', ''),
(317, 146, 'dc_dcb_show_post', 'off'),
(318, 147, 'dc_dcb_html', 'a:1:{i:0;s:426:\"&lt;div class=&quot;flexbox&quot;&gt;\r\n    &lt;div class=&quot;flex-item&quot;&gt;\r\n        &lt;a href=&quot;#&quot;&gt;\r\n            Breakfast Menu\r\n        &lt;/a&gt;   \r\n    &lt;/div&gt;\r\n     &lt;div class=&quot;flex-item&quot;&gt;\r\n        &lt;a href=&quot;#&quot;&gt;\r\n            Lunch Menu\r\n        &lt;/a&gt;   \r\n    &lt;/div&gt;\r\n     &lt;div class=&quot;flex-item&quot;&gt;\r\n        \r\n    &lt;/div&gt;\r\n&lt;/div&gt;\";}'),
(319, 147, 'dc_dcb_css', 'a:1:{i:0;s:0:\"\";}'),
(320, 147, 'dc_dcb_js', 'a:1:{i:0;s:0:\"\";}'),
(321, 148, 'dc_dcb_html', 'a:0:{}'),
(322, 148, 'dc_dcb_css', 'a:0:{}'),
(323, 148, 'dc_dcb_js', 'a:0:{}'),
(324, 149, 'dc_dcb_html', 'a:1:{i:0;s:650:\"&lt;div class=&quot;flexbox&quot;&gt;\r\n    &lt;div class=&quot;flex-item&quot;&gt;\r\n        &lt;a href=&quot;#&quot;&gt;\r\n            Breakfast Menu\r\n        &lt;/a&gt;   \r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;flex-item&quot;&gt;\r\n        &lt;a href=&quot;#&quot;&gt;\r\n            Brunch Menu\r\n        &lt;/a&gt;   \r\n    &lt;/div&gt;\r\n     &lt;div class=&quot;flex-item&quot;&gt;\r\n        &lt;a href=&quot;#&quot;&gt;\r\n            Lunch Menu\r\n        &lt;/a&gt;   \r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;flex-item&quot;&gt;\r\n        &lt;a href=&quot;#&quot;&gt;\r\n            Dinner Menu\r\n        &lt;/a&gt;   \r\n    &lt;/div&gt;\r\n&lt;/div&gt;\";}'),
(325, 149, 'dc_dcb_css', 'a:1:{i:0;s:0:\"\";}'),
(326, 149, 'dc_dcb_js', 'a:1:{i:0;s:0:\"\";}'),
(328, 151, '_wp_attached_file', '2018/03/menu-background.jpg'),
(329, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1489;s:6:\"height\";i:465;s:4:\"file\";s:27:\"2018/03/menu-background.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"menu-background-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"menu-background-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"menu-background-768x240.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"menu-background-1024x320.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"menu-background-270x170.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"screen-shot\";a:4:{s:4:\"file\";s:27:\"menu-background-720x225.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:32:\"(c) Konstanttin | Dreamstime.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(331, 156, '_edit_lock', '1522358182:1'),
(332, 156, '_edit_last', '1'),
(333, 156, '_wp_page_template', 'template-menu.php'),
(334, 158, '_menu_item_type', 'post_type'),
(335, 158, '_menu_item_menu_item_parent', '96'),
(336, 158, '_menu_item_object_id', '156'),
(337, 158, '_menu_item_object', 'page'),
(338, 158, '_menu_item_target', ''),
(339, 158, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(340, 158, '_menu_item_xfn', ''),
(341, 158, '_menu_item_url', ''),
(343, 159, '_menu_item_type', 'post_type'),
(344, 159, '_menu_item_menu_item_parent', '0'),
(345, 159, '_menu_item_object_id', '156'),
(346, 159, '_menu_item_object', 'page'),
(347, 159, '_menu_item_target', ''),
(348, 159, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(349, 159, '_menu_item_xfn', ''),
(350, 159, '_menu_item_url', ''),
(352, 156, '_thumbnail_id', '226'),
(353, 160, '_edit_lock', '1522260599:1'),
(354, 160, '_edit_last', '1'),
(355, 160, '_wp_page_template', 'template-menu.php'),
(364, 163, '_edit_last', '1'),
(365, 163, '_wp_page_template', 'template-menu.php'),
(366, 164, '_menu_item_type', 'post_type'),
(367, 164, '_menu_item_menu_item_parent', '0'),
(368, 164, '_menu_item_object_id', '163'),
(369, 164, '_menu_item_object', 'page'),
(370, 164, '_menu_item_target', ''),
(371, 164, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(372, 164, '_menu_item_xfn', ''),
(373, 164, '_menu_item_url', ''),
(374, 163, '_edit_lock', '1522358225:1'),
(375, 166, '_menu_item_type', 'post_type'),
(376, 166, '_menu_item_menu_item_parent', '0'),
(377, 166, '_menu_item_object_id', '163'),
(378, 166, '_menu_item_object', 'page'),
(379, 166, '_menu_item_target', ''),
(380, 166, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(381, 166, '_menu_item_xfn', ''),
(382, 166, '_menu_item_url', ''),
(383, 166, '_menu_item_orphaned', '1522108443'),
(384, 167, '_menu_item_type', 'post_type'),
(385, 167, '_menu_item_menu_item_parent', '0'),
(386, 167, '_menu_item_object_id', '160'),
(387, 167, '_menu_item_object', 'page'),
(388, 167, '_menu_item_target', ''),
(389, 167, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(390, 167, '_menu_item_xfn', ''),
(391, 167, '_menu_item_url', ''),
(392, 167, '_menu_item_orphaned', '1522108443'),
(393, 168, '_menu_item_type', 'post_type'),
(394, 168, '_menu_item_menu_item_parent', '0'),
(395, 168, '_menu_item_object_id', '160'),
(396, 168, '_menu_item_object', 'page'),
(397, 168, '_menu_item_target', ''),
(398, 168, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(399, 168, '_menu_item_xfn', ''),
(400, 168, '_menu_item_url', ''),
(402, 169, '_menu_item_type', 'post_type'),
(403, 169, '_menu_item_menu_item_parent', '96'),
(404, 169, '_menu_item_object_id', '163'),
(405, 169, '_menu_item_object', 'page'),
(406, 169, '_menu_item_target', ''),
(407, 169, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(408, 169, '_menu_item_xfn', ''),
(409, 169, '_menu_item_url', ''),
(411, 170, '_menu_item_type', 'post_type'),
(412, 170, '_menu_item_menu_item_parent', '129'),
(413, 170, '_menu_item_object_id', '160'),
(414, 170, '_menu_item_object', 'page'),
(415, 170, '_menu_item_target', ''),
(416, 170, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(417, 170, '_menu_item_xfn', ''),
(418, 170, '_menu_item_url', ''),
(420, 172, '_edit_last', '1'),
(421, 172, '_wp_page_template', 'template-menu.php'),
(430, 172, '_edit_lock', '1522260569:1'),
(431, 175, '_edit_last', '1'),
(432, 175, '_wp_page_template', 'template-menu.php'),
(441, 175, '_edit_lock', '1522260587:1'),
(442, 178, '_edit_last', '1'),
(443, 178, '_wp_page_template', 'template-menu.php'),
(452, 178, '_edit_lock', '1522262223:1'),
(453, 181, '_menu_item_type', 'post_type'),
(454, 181, '_menu_item_menu_item_parent', '0'),
(455, 181, '_menu_item_object_id', '178'),
(456, 181, '_menu_item_object', 'page'),
(457, 181, '_menu_item_target', ''),
(458, 181, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(459, 181, '_menu_item_xfn', ''),
(460, 181, '_menu_item_url', ''),
(462, 182, '_menu_item_type', 'post_type'),
(463, 182, '_menu_item_menu_item_parent', '0'),
(464, 182, '_menu_item_object_id', '175'),
(465, 182, '_menu_item_object', 'page'),
(466, 182, '_menu_item_target', ''),
(467, 182, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(468, 182, '_menu_item_xfn', ''),
(469, 182, '_menu_item_url', ''),
(471, 183, '_menu_item_type', 'post_type'),
(472, 183, '_menu_item_menu_item_parent', '0'),
(473, 183, '_menu_item_object_id', '172'),
(474, 183, '_menu_item_object', 'page'),
(475, 183, '_menu_item_target', ''),
(476, 183, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(477, 183, '_menu_item_xfn', ''),
(478, 183, '_menu_item_url', ''),
(480, 184, '_menu_item_type', 'post_type'),
(481, 184, '_menu_item_menu_item_parent', '96'),
(482, 184, '_menu_item_object_id', '178'),
(483, 184, '_menu_item_object', 'page'),
(484, 184, '_menu_item_target', ''),
(485, 184, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(486, 184, '_menu_item_xfn', ''),
(487, 184, '_menu_item_url', ''),
(489, 185, '_menu_item_type', 'post_type'),
(490, 185, '_menu_item_menu_item_parent', '129'),
(491, 185, '_menu_item_object_id', '175'),
(492, 185, '_menu_item_object', 'page'),
(493, 185, '_menu_item_target', ''),
(494, 185, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(495, 185, '_menu_item_xfn', ''),
(496, 185, '_menu_item_url', ''),
(498, 186, '_menu_item_type', 'post_type'),
(499, 186, '_menu_item_menu_item_parent', '129'),
(500, 186, '_menu_item_object_id', '172'),
(501, 186, '_menu_item_object', 'page'),
(502, 186, '_menu_item_target', ''),
(503, 186, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(504, 186, '_menu_item_xfn', ''),
(505, 186, '_menu_item_url', ''),
(507, 187, '_wp_trash_meta_status', 'publish'),
(508, 187, '_wp_trash_meta_time', '1522169321'),
(509, 188, '_menu_item_type', 'custom'),
(510, 188, '_menu_item_menu_item_parent', '0'),
(511, 188, '_menu_item_object_id', '188'),
(512, 188, '_menu_item_object', 'custom'),
(513, 188, '_menu_item_target', ''),
(514, 188, '_menu_item_classes', 'a:3:{i:0;s:3:\"mdi\";i:1;s:12:\"mdi-facebook\";i:2;s:8:\"mdi-36px\";}'),
(515, 188, '_menu_item_xfn', ''),
(516, 188, '_menu_item_url', 'https://facebook.com/tresahorney'),
(527, 190, '_menu_item_type', 'custom'),
(528, 190, '_menu_item_menu_item_parent', '0'),
(529, 190, '_menu_item_object_id', '190'),
(530, 190, '_menu_item_object', 'custom'),
(531, 190, '_menu_item_target', ''),
(532, 190, '_menu_item_classes', 'a:3:{i:0;s:3:\"mdi\";i:1;s:13:\"mdi-instagram\";i:2;s:8:\"mdi-36px\";}'),
(533, 190, '_menu_item_xfn', ''),
(534, 190, '_menu_item_url', 'https://instagram.com/tresa_d'),
(536, 191, '_menu_item_type', 'custom'),
(537, 191, '_menu_item_menu_item_parent', '0'),
(538, 191, '_menu_item_object_id', '191'),
(539, 191, '_menu_item_object', 'custom'),
(540, 191, '_menu_item_target', ''),
(541, 191, '_menu_item_classes', 'a:3:{i:0;s:3:\"mdi\";i:1;s:18:\"mdi-twitter-circle\";i:2;s:8:\"mdi-36px\";}'),
(542, 191, '_menu_item_xfn', ''),
(543, 191, '_menu_item_url', 'https://twitter.com/tresahorney'),
(545, 192, '_menu_item_type', 'custom'),
(546, 192, '_menu_item_menu_item_parent', '0'),
(547, 192, '_menu_item_object_id', '192'),
(548, 192, '_menu_item_object', 'custom'),
(549, 192, '_menu_item_target', ''),
(550, 192, '_menu_item_classes', 'a:4:{i:0;s:3:\"mdi\";i:1;s:10:\"mdi-google\";i:2;s:8:\"mdi-36px\";i:3;s:0:\"\";}'),
(551, 192, '_menu_item_xfn', ''),
(552, 192, '_menu_item_url', '#'),
(554, 193, '_edit_last', '1'),
(555, 193, '_wp_page_template', 'default'),
(564, 193, '_edit_lock', '1522195422:1'),
(565, 197, '_edit_lock', '1522262546:1'),
(566, 197, '_edit_last', '1'),
(567, 197, '_wp_page_template', 'default'),
(576, 200, '_menu_item_type', 'post_type'),
(577, 200, '_menu_item_menu_item_parent', '0'),
(578, 200, '_menu_item_object_id', '197'),
(579, 200, '_menu_item_object', 'page'),
(580, 200, '_menu_item_target', ''),
(581, 200, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(582, 200, '_menu_item_xfn', ''),
(583, 200, '_menu_item_url', ''),
(585, 201, '_menu_item_type', 'post_type'),
(586, 201, '_menu_item_menu_item_parent', '0'),
(587, 201, '_menu_item_object_id', '193'),
(588, 201, '_menu_item_object', 'page'),
(589, 201, '_menu_item_target', ''),
(590, 201, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(591, 201, '_menu_item_xfn', ''),
(592, 201, '_menu_item_url', ''),
(594, 81, '_thumbnail_id', '63'),
(595, 163, '_thumbnail_id', '227'),
(596, 205, '_edit_lock', '1522257210:1'),
(597, 205, '_edit_last', '1'),
(598, 205, 'price', '8'),
(599, 205, '_wp_page_template', 'single-lunch-menu-item.php'),
(600, 207, '_edit_lock', '1522257711:1'),
(601, 207, '_edit_last', '1'),
(602, 207, 'price', '12'),
(603, 207, '_wp_page_template', 'single-menu-item.php'),
(604, 209, '_edit_lock', '1522363664:1'),
(605, 209, '_edit_last', '1'),
(606, 209, 'price', '9'),
(607, 209, '_wp_page_template', 'single-menu-item.php'),
(608, 197, '_thumbnail_id', '131'),
(609, 64, 'ml-slider_url', '/about'),
(610, 65, 'ml-slider_url', '/menus'),
(611, 224, 'notification_id', '721'),
(612, 224, 'type', 'success'),
(613, 224, 'dismissable', '1'),
(614, 224, 'location', '[\"everywhere\"]'),
(615, 224, 'version', ''),
(616, 224, 'viewed', '1'),
(617, 224, 'expiration', '1522796400'),
(618, 224, 'plans', '[]'),
(619, 225, '_wp_attached_file', '2018/03/bacon-bowl-bread-660282.jpg'),
(620, 225, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:35:\"2018/03/bacon-bowl-bread-660282.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"bacon-bowl-bread-660282-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"bacon-bowl-bread-660282-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"bacon-bowl-bread-660282-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"bacon-bowl-bread-660282-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:35:\"bacon-bowl-bread-660282-270x170.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"screen-shot\";a:4:{s:4:\"file\";s:35:\"bacon-bowl-bread-660282-720x480.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(621, 226, '_wp_attached_file', '2018/03/black-background-boiled-egg-boiled-eggs-824635.jpg'),
(622, 226, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2305;s:6:\"height\";i:1537;s:4:\"file\";s:58:\"2018/03/black-background-boiled-egg-boiled-eggs-824635.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"black-background-boiled-egg-boiled-eggs-824635-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"black-background-boiled-egg-boiled-eggs-824635-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:58:\"black-background-boiled-egg-boiled-eggs-824635-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:59:\"black-background-boiled-egg-boiled-eggs-824635-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:58:\"black-background-boiled-egg-boiled-eggs-824635-270x170.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"screen-shot\";a:4:{s:4:\"file\";s:58:\"black-background-boiled-egg-boiled-eggs-824635-720x480.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(623, 227, '_wp_attached_file', '2018/03/bar-bottle-brunch-755329.jpg'),
(624, 227, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:7952;s:6:\"height\";i:5304;s:4:\"file\";s:36:\"2018/03/bar-bottle-brunch-755329.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"bar-bottle-brunch-755329-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"bar-bottle-brunch-755329-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"bar-bottle-brunch-755329-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"bar-bottle-brunch-755329-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:36:\"bar-bottle-brunch-755329-270x170.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"screen-shot\";a:4:{s:4:\"file\";s:36:\"bar-bottle-brunch-755329-720x480.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(625, 228, '_wp_attached_file', '2018/03/basil-dinner-dish-64208.jpg'),
(626, 228, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1331;s:4:\"file\";s:35:\"2018/03/basil-dinner-dish-64208.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"basil-dinner-dish-64208-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"basil-dinner-dish-64208-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"basil-dinner-dish-64208-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"basil-dinner-dish-64208-1024x681.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:35:\"basil-dinner-dish-64208-270x170.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"screen-shot\";a:4:{s:4:\"file\";s:35:\"basil-dinner-dish-64208-720x479.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:479;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(627, 46, 'your_fields', 'a:1:{s:4:\"text\";s:2:\"22\";}'),
(628, 229, '_edit_lock', '1522372856:1'),
(629, 229, '_edit_last', '1'),
(630, 229, '_wp_page_template', 'default'),
(631, 231, '_edit_lock', '1522372879:1'),
(632, 231, '_edit_last', '1'),
(633, 231, '_wp_page_template', 'template-menu.php'),
(634, 234, '_edit_lock', '1522372908:1'),
(635, 234, '_edit_last', '1'),
(637, 234, 'fdm_item_price', '23'),
(638, 229, '_wp_trash_meta_status', 'publish'),
(639, 229, '_wp_trash_meta_time', '1522373065'),
(640, 229, '_wp_desired_post_slug', 'oatmeal'),
(641, 236, '_edit_lock', '1522373333:1'),
(642, 236, '_edit_last', '1'),
(643, 236, '_wp_page_template', 'default'),
(644, 236, '_wp_trash_meta_status', 'draft'),
(645, 236, '_wp_trash_meta_time', '1522373335'),
(646, 236, '_wp_desired_post_slug', ''),
(647, 238, '_edit_lock', '1522373932:1'),
(648, 238, '_edit_last', '1'),
(649, 238, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-07 19:33:41', '2018-03-07 19:33:41', 'Why do people love pizza? We want to know.', 'Pizza Pizza!', '', 'publish', 'open', 'open', '', 'pizza-pizza', '', '', '2018-03-11 21:07:49', '2018-03-11 21:07:49', '', 0, 'http://wordpressfromscratch/?p=1', 0, 'post', '', 2),
(2, 1, '2018-03-07 19:33:41', '2018-03-07 19:33:41', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://wordpressfromscratch/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Welcome to Zebra', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-03-09 22:53:28', '2018-03-09 22:53:28', '', 0, 'http://wordpressfromscratch/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-03-07 19:40:32', '2018-03-07 19:40:32', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ],\n            \"sidebar-2\": [],\n            \"sidebar-3\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-07 19:40:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '05a9ba40-0c66-4829-a361-fd4e369d43e7', '', '', '2018-03-07 19:40:32', '2018-03-07 19:40:32', '', 0, 'http://wordpressfromscratch/2018/03/07/05a9ba40-0c66-4829-a361-fd4e369d43e7/', 0, 'customize_changeset', '', 0),
(5, 1, '2018-03-07 21:09:51', '2018-03-07 21:09:51', '<b>Zebras</b> (<span class=\"nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"\'z\' in \'zoom\'\">z</span><span title=\"/ɛ/: \'e\' in \'dress\'\">ɛ</span><span title=\"\'b\' in \'buy\'\">b</span><span title=\"\'r\' in \'rye\'\">r</span><span title=\"/ə/: \'a\' in \'about\'\">ə</span>/</a></span></span> <a title=\"Help:Pronunciation respelling key\" href=\"https://en.wikipedia.org/wiki/Help:Pronunciation_respelling_key\"><i title=\"English pronunciation respelling\">ZEB-rə</i></a> or <span class=\"nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"\'z\' in \'zoom\'\">z</span><span title=\"/iː/: \'ee\' in \'fleece\'\">iː</span><span title=\"\'b\' in \'buy\'\">b</span><span title=\"\'r\' in \'rye\'\">r</span><span title=\"/ə/: \'a\' in \'about\'\">ə</span>/</a></span></span> <a title=\"Help:Pronunciation respelling key\" href=\"https://en.wikipedia.org/wiki/Help:Pronunciation_respelling_key\"><i title=\"English pronunciation respelling\">ZEE-brə</i></a>)<sup id=\"cite_ref-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Zebra#cite_note-1\">[1]</a></sup> are several species of <a title=\"Fauna of Africa\" href=\"https://en.wikipedia.org/wiki/Fauna_of_Africa\">African</a> <a title=\"Equidae\" href=\"https://en.wikipedia.org/wiki/Equidae\">equids</a> (horse family) united by their distinctive black and white striped coats. Their stripes come in different patterns, unique to each individual. They are generally social animals that live in small <a title=\"Harem (zoology)\" href=\"https://en.wikipedia.org/wiki/Harem_(zoology)\">harems</a> to large <a class=\"mw-redirect\" title=\"Herds\" href=\"https://en.wikipedia.org/wiki/Herds\">herds</a>. Unlike their closest relatives, <a title=\"Horse\" href=\"https://en.wikipedia.org/wiki/Horse\">horses</a> and <a title=\"Donkey\" href=\"https://en.wikipedia.org/wiki/Donkey\">donkeys</a>, zebras have never been truly <a class=\"mw-redirect\" title=\"Domesticated\" href=\"https://en.wikipedia.org/wiki/Domesticated\">domesticated</a>.\r\n\r\nThere are three species of zebras: the <a title=\"Plains zebra\" href=\"https://en.wikipedia.org/wiki/Plains_zebra\">plains zebra</a>, the <a title=\"Mountain zebra\" href=\"https://en.wikipedia.org/wiki/Mountain_zebra\">mountain zebra</a> and the <a title=\"Grévy\'s zebra\" href=\"https://en.wikipedia.org/wiki/Gr%C3%A9vy%27s_zebra\">Grévy\'s zebra</a>. The plains zebra and the mountain zebra belong to the subgenus <i><a class=\"mw-redirect\" title=\"Hippotigris\" href=\"https://en.wikipedia.org/wiki/Hippotigris\">Hippotigris</a></i>, but Grévy\'s zebra is the sole species of subgenus <i>Dolichohippus</i>. The latter resembles an <a title=\"Asinus\" href=\"https://en.wikipedia.org/wiki/Asinus\">ass</a>, to which zebras are closely related, while the former two look more horse-like. All three belong to the genus <i>Equus</i>, along with other living equids.\r\n\r\nThe unique stripes of zebras make them one of the animals most familiar to people. They occur in a variety of habitats, such as <a class=\"mw-redirect\" title=\"Grasslands\" href=\"https://en.wikipedia.org/wiki/Grasslands\">grasslands</a>, <a title=\"Savanna\" href=\"https://en.wikipedia.org/wiki/Savanna\">savannas</a>, <a title=\"Woodland\" href=\"https://en.wikipedia.org/wiki/Woodland\">woodlands</a>, thorny <a class=\"mw-redirect\" title=\"Scrubland\" href=\"https://en.wikipedia.org/wiki/Scrubland\">scrublands</a>, <a title=\"Mountain\" href=\"https://en.wikipedia.org/wiki/Mountain\">mountains</a>, and coastal <a title=\"Hill\" href=\"https://en.wikipedia.org/wiki/Hill\">hills</a>. However, various anthropogenic factors have had a severe impact on zebra populations, in particular hunting for skins and habitat destruction. Grévy\'s zebra and the mountain zebra are endangered. While plains zebras are much more plentiful, one subspecies, the <a title=\"Quagga\" href=\"https://en.wikipedia.org/wiki/Quagga\">quagga</a>, became extinct in the late 19th century – though there is currently a plan, called the <a title=\"Quagga Project\" href=\"https://en.wikipedia.org/wiki/Quagga_Project\">Quagga Project</a>, that aims to breed zebras that are phenotypically similar to the quagga in a process called <a title=\"Breeding back\" href=\"https://en.wikipedia.org/wiki/Breeding_back\">breeding back</a>.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<table class=\"infobox biota\">\r\n<tbody>\r\n<tr>\r\n<th colspan=\"2\">Zebra</th>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\"></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">A herd of <a title=\"Plains zebra\" href=\"https://en.wikipedia.org/wiki/Plains_zebra\">plains zebra</a> (<i>Equus quagga</i>)</td>\r\n</tr>\r\n<tr>\r\n<th colspan=\"2\"><a title=\"Taxonomy (biology)\" href=\"https://en.wikipedia.org/wiki/Taxonomy_(biology)\">Scientific classification</a></th>\r\n</tr>\r\n<tr>\r\n<td>Kingdom:</td>\r\n<td><span class=\"kingdom\"><a title=\"Animal\" href=\"https://en.wikipedia.org/wiki/Animal\">Animalia</a></span></td>\r\n</tr>\r\n<tr>\r\n<td>Phylum:</td>\r\n<td><span class=\"phylum\"><a class=\"mw-redirect\" title=\"Chordata\" href=\"https://en.wikipedia.org/wiki/Chordata\">Chordata</a></span></td>\r\n</tr>\r\n<tr>\r\n<td>Class:</td>\r\n<td><span class=\"class\"><a title=\"Mammal\" href=\"https://en.wikipedia.org/wiki/Mammal\">Mammalia</a></span></td>\r\n</tr>\r\n<tr>\r\n<td>Order:</td>\r\n<td><span class=\"order\"><a class=\"mw-redirect\" title=\"Perissodactyla\" href=\"https://en.wikipedia.org/wiki/Perissodactyla\">Perissodactyla</a></span></td>\r\n</tr>\r\n<tr>\r\n<td>Family:</td>\r\n<td><span class=\"family\"><a title=\"Equidae\" href=\"https://en.wikipedia.org/wiki/Equidae\">Equidae</a></span></td>\r\n</tr>\r\n<tr>\r\n<td>Genus:</td>\r\n<td><span class=\"genus\"><i><a title=\"Equus (genus)\" href=\"https://en.wikipedia.org/wiki/Equus_(genus)\">Equus</a></i></span></td>\r\n</tr>\r\n<tr>\r\n<td>Subgenus:</td>\r\n<td><span class=\"subgenus\"><i><b>Hippotigris</b></i> and\r\n<i><b><a title=\"Grévy\'s zebra\" href=\"https://en.wikipedia.org/wiki/Gr%C3%A9vy%27s_zebra\">Dolichohippus</a></b></i></span></td>\r\n</tr>\r\n<tr>\r\n<th colspan=\"2\"><a title=\"Species\" href=\"https://en.wikipedia.org/wiki/Species\">Species</a></th>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<div class=\"plainlist\">\r\n<ul>\r\n 	<li><i><a title=\"Mountain zebra\" href=\"https://en.wikipedia.org/wiki/Mountain_zebra\">Equus zebra</a></i></li>\r\n 	<li><i><a title=\"Plains zebra\" href=\"https://en.wikipedia.org/wiki/Plains_zebra\">Equus quagga</a></i></li>\r\n 	<li><i><a title=\"Grévy\'s zebra\" href=\"https://en.wikipedia.org/wiki/Gr%C3%A9vy%27s_zebra\">Equus grevyi</a></i></li>\r\n</ul>\r\n</div>\r\nSee <a href=\"https://en.wikipedia.org/wiki/Zebra#Classification\">§ Classification</a> for subspecies.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'About Zebras', '', 'publish', 'open', 'open', '', 'congratulations-on-your-second-post', '', '', '2018-03-11 03:04:00', '2018-03-11 03:04:00', '', 0, 'http://wordpressfromscratch/?p=5', 0, 'post', '', 0),
(6, 1, '2018-03-07 21:09:51', '2018-03-07 21:09:51', 'This is not the biggest deal and you need to go to the gym.', 'Congratulations on your second post!', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-03-07 21:09:51', '2018-03-07 21:09:51', '', 5, 'http://wordpressfromscratch/2018/03/07/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-03-08 18:59:27', '2018-03-08 18:59:27', 'Hamburger meat with lettuce and tomato. Curly fries on the side.', 'Burger with Curly Fries', '', 'publish', 'closed', 'closed', '', 'burger-with-curly-fries', '', '', '2018-03-08 18:59:27', '2018-03-08 18:59:27', '', 0, 'http://wordpressfromscratch/?post_type=lunch_menu_item&#038;p=7', 0, 'lunch_menu_item', '', 0),
(8, 1, '2018-03-08 19:00:46', '2018-03-08 19:00:46', 'burger with fries', 'burger', '', 'publish', 'closed', 'closed', '', 'burger', '', '', '2018-03-08 19:00:46', '2018-03-08 19:00:46', '', 0, 'http://wordpressfromscratch/?post_type=lunch&#038;p=8', 0, 'lunch', '', 0),
(9, 1, '2018-03-08 19:01:21', '2018-03-08 19:01:21', '<strong>Our lunch menu is served between 12-2:30PM.</strong>', 'Lunch Menu', '', 'publish', 'closed', 'closed', '', 'lunch-menu', '', '', '2018-03-29 21:05:47', '2018-03-29 21:05:47', '', 85, 'http://wordpressfromscratch/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-03-08 19:01:21', '2018-03-08 19:01:21', 'This is our lunch menu served between 12-2:30pm.', 'Lunch', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-08 19:01:21', '2018-03-08 19:01:21', '', 9, 'http://wordpressfromscratch/2018/03/08/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-03-08 19:20:22', '2018-03-08 19:20:22', 'pizza yum', 'pizza', '', 'publish', 'open', 'closed', '', 'pizza', '', '', '2018-03-08 19:20:22', '2018-03-08 19:20:22', '', 0, 'http://wordpressfromscratch/?post_type=restaurant_item&#038;p=11', 0, 'restaurant_item', '', 0),
(12, 1, '2018-03-08 19:20:22', '2018-03-08 19:20:22', 'pizza yum', 'pizza', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-08 19:20:22', '2018-03-08 19:20:22', '', 11, 'http://wordpressfromscratch/2018/03/08/11-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-03-08 19:34:49', '2018-03-08 19:34:49', 'aadfl;kadfklajsdf;lkasjdf;lkjasdfl;kjsdl;fja;fldkdsfk;ljdf', 'Old Yeller', 'flurries', 'publish', 'open', 'closed', '', 'old-yeller', '', '', '2018-03-08 19:34:49', '2018-03-08 19:34:49', '', 0, 'http://wordpressfromscratch/?post_type=book&#038;p=15', 0, 'book', '', 0),
(16, 1, '2018-03-08 19:39:48', '2018-03-08 19:39:48', '', 'ferrari', '', 'publish', 'open', 'closed', '', 'ferrari', '', '', '2018-03-08 19:39:48', '2018-03-08 19:39:48', '', 0, 'http://wordpressfromscratch/?post_type=car&#038;p=16', 0, 'car', '', 0),
(17, 1, '2018-03-08 19:39:48', '2018-03-08 19:39:48', '', 'ferrari', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-03-08 19:39:48', '2018-03-08 19:39:48', '', 16, 'http://wordpressfromscratch/2018/03/08/16-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-03-08 20:54:03', '2018-03-08 20:54:03', 'I love pizza and we have the best!', 'Pizza', '', 'publish', 'open', 'closed', '', 'pizza', '', '', '2018-03-08 20:54:03', '2018-03-08 20:54:03', '', 0, 'http://wordpressfromscratch/?post_type=menu_items&#038;p=20', 0, 'menu_items', '', 0),
(22, 1, '2018-03-08 21:27:34', '2018-03-08 21:27:34', 'Great movie about a deer dealing with life tragedies.', 'Bambi', '', 'publish', 'open', 'closed', '', 'bambi', '', '', '2018-03-08 21:27:34', '2018-03-08 21:27:34', '', 0, 'http://wordpressfromscratch/?post_type=movie_reviews&#038;p=22', 0, 'movie_reviews', '', 0),
(23, 1, '2018-03-08 21:48:45', '2018-03-08 21:48:45', '<b>Pizza</b> is a traditional <a title=\"Italian cuisine\" href=\"https://en.wikipedia.org/wiki/Italian_cuisine\">Italian</a> <a title=\"Dish (food)\" href=\"https://en.wikipedia.org/wiki/Dish_(food)\">dish</a> consisting of a yeasted <a title=\"Flatbread\" href=\"https://en.wikipedia.org/wiki/Flatbread\">flatbread</a> typically topped with <a title=\"Tomato sauce\" href=\"https://en.wikipedia.org/wiki/Tomato_sauce\">tomato sauce</a> and <a title=\"Cheese\" href=\"https://en.wikipedia.org/wiki/Cheese\">cheese</a>and baked in an oven. It can also be topped with additional vegetables, meats, and <a class=\"mw-redirect\" title=\"Condiments\" href=\"https://en.wikipedia.org/wiki/Condiments\">condiments</a>, and can be made without cheese.', 'Pizza', '', 'publish', 'closed', 'closed', '', 'pizza', '', '', '2018-03-08 21:59:20', '2018-03-08 21:59:20', '', 0, 'http://wordpressfromscratch/?post_type=menuitem&#038;p=23', 0, 'menuitem', '', 0),
(24, 1, '2018-03-08 21:55:23', '2018-03-08 21:55:23', 'This is our lunch menu served between 12-2:30pm.', 'Menu', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-08 21:55:23', '2018-03-08 21:55:23', '', 9, 'http://wordpressfromscratch/2018/03/08/9-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-03-08 22:04:53', '2018-03-08 22:04:53', '<b>Pizza</b> is a traditional <a title=\"Italian cuisine\" href=\"https://en.wikipedia.org/wiki/Italian_cuisine\">Italian</a> <a title=\"Dish (food)\" href=\"https://en.wikipedia.org/wiki/Dish_(food)\">dish</a> consisting of a yeasted <a title=\"Flatbread\" href=\"https://en.wikipedia.org/wiki/Flatbread\">flatbread</a> typically topped with <a title=\"Tomato sauce\" href=\"https://en.wikipedia.org/wiki/Tomato_sauce\">tomato sauce</a> and <a title=\"Cheese\" href=\"https://en.wikipedia.org/wiki/Cheese\">cheese</a>and baked in an oven. It can also be topped with additional vegetables, meats, and <a class=\"mw-redirect\" title=\"Condiments\" href=\"https://en.wikipedia.org/wiki/Condiments\">condiments</a>, and can be made without cheese.', 'Pizza', '', 'inherit', 'closed', 'closed', '', '23-autosave-v1', '', '', '2018-03-08 22:04:53', '2018-03-08 22:04:53', '', 23, 'http://wordpressfromscratch/2018/03/08/23-autosave-v1/', 0, 'revision', '', 0),
(26, 1, '2018-03-08 22:08:06', '2018-03-08 22:08:06', '<b>Pizza</b> is a traditional <a title=\"Italian cuisine\" href=\"https://en.wikipedia.org/wiki/Italian_cuisine\">Italian</a> <a title=\"Dish (food)\" href=\"https://en.wikipedia.org/wiki/Dish_(food)\">dish</a> consisting of a yeasted <a title=\"Flatbread\" href=\"https://en.wikipedia.org/wiki/Flatbread\">flatbread</a> typically topped with <a title=\"Tomato sauce\" href=\"https://en.wikipedia.org/wiki/Tomato_sauce\">tomato sauce</a> and <a title=\"Cheese\" href=\"https://en.wikipedia.org/wiki/Cheese\">cheese</a>and baked in an oven. It can also be topped with additional vegetables, meats, and <a class=\"mw-redirect\" title=\"Condiments\" href=\"https://en.wikipedia.org/wiki/Condiments\">condiments</a>, and can be made without cheese.', 'Pizza', '', 'publish', 'closed', 'closed', '', 'pizza', '', '', '2018-03-24 01:03:25', '2018-03-24 01:03:25', '', 0, 'http://wordpressfromscratch/?post_type=lunchmenuitem&#038;p=26', 0, 'lunchmenuitem', '', 0),
(27, 1, '2018-03-08 22:08:25', '2018-03-08 22:08:25', 'This is our lunch menu served between 12-2:30pm.', 'Lunch Menu', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-08 22:08:25', '2018-03-08 22:08:25', '', 9, 'http://wordpressfromscratch/2018/03/08/9-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-03-08 22:08:59', '2018-03-08 22:08:59', 'A <b>cheeseburger</b> is a <a title=\"Hamburger\" href=\"https://en.wikipedia.org/wiki/Hamburger\">hamburger</a> topped with <a title=\"Cheese\" href=\"https://en.wikipedia.org/wiki/Cheese\">cheese</a>. Traditionally, the slice of cheese is placed on top of the meat <a title=\"Patty\" href=\"https://en.wikipedia.org/wiki/Patty\">patty</a>, but the burger can include many variations in structure, ingredients, and composition. The cheese is normally added to the cooking hamburger patty shortly before serving, which allows the cheese to melt.', 'Cheeseburger', '', 'publish', 'closed', 'closed', '', 'cheeseburger', '', '', '2018-03-24 01:03:24', '2018-03-24 01:03:24', '', 0, 'http://wordpressfromscratch/?post_type=lunchmenuitem&#038;p=28', 0, 'lunchmenuitem', '', 0),
(29, 1, '2018-03-09 00:31:11', '2018-03-09 00:31:11', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2018-03-20 00:38:18', '2018-03-20 00:38:18', '', 0, 'http://wordpressfromscratch/?page_id=29', 0, 'page', '', 0),
(30, 1, '2018-03-09 00:31:11', '2018-03-09 00:31:11', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-03-09 00:31:11', '2018-03-09 00:31:11', '', 29, 'http://wordpressfromscratch/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-03-09 00:32:32', '2018-03-09 00:32:32', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-09 00:32:32\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-09 00:32:32\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"29\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-09 00:32:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '17d8ccd6-840c-411a-8a64-4135198e3771', '', '', '2018-03-09 00:32:32', '2018-03-09 00:32:32', '', 0, 'http://wordpressfromscratch/17d8ccd6-840c-411a-8a64-4135198e3771/', 0, 'customize_changeset', '', 0),
(32, 1, '2018-03-09 00:34:33', '2018-03-09 00:34:33', '', '20180127_151236 (1)', '', 'inherit', 'open', 'closed', '', '20180127_151236-1', '', '', '2018-03-09 00:34:33', '2018-03-09 00:34:33', '', 5, 'http://wordpressfromscratch/wp-content/uploads/2018/03/20180127_151236-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2018-03-09 00:34:42', '2018-03-09 00:34:42', '<img class=\"alignnone size-medium wp-image-32\" src=\"http://wordpressfromscratch/wp-content/uploads/2018/03/20180127_151236-1-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" />\r\n\r\nThis is not the biggest deal and you need to go to the gym.', 'Congratulations on your second post!', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-03-09 00:34:42', '2018-03-09 00:34:42', '', 5, 'http://wordpressfromscratch/5-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-03-09 00:46:24', '2018-03-09 00:46:24', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://wordpressfromscratch/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-03-09 00:46:24', '2018-03-09 00:46:24', '', 2, 'http://wordpressfromscratch/2-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-03-09 01:05:27', '2018-03-09 01:05:27', '', 'News', '', 'publish', 'closed', 'closed', '', '36', '', '', '2018-03-27 22:04:09', '2018-03-27 22:04:09', '', 0, 'http://wordpressfromscratch/?p=36', 15, 'nav_menu_item', '', 0),
(37, 1, '2018-03-09 01:05:27', '2018-03-09 01:05:27', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2018-03-27 22:04:09', '2018-03-27 22:04:09', '', 85, 'http://wordpressfromscratch/?p=37', 6, 'nav_menu_item', '', 0),
(38, 1, '2018-03-09 01:05:27', '2018-03-09 01:05:27', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2018-03-27 22:04:09', '2018-03-27 22:04:09', '', 0, 'http://wordpressfromscratch/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2018-03-09 02:13:38', '2018-03-09 02:13:38', 'Pizza is a traditional Italian dish consisting of a yeasted flatbread typically topped with tomato sauce and cheese and baked in an oven. It can also be topped with additional vegetables, meats, and condiments, and can be made without cheese.', 'Pizza', '', 'publish', 'open', 'closed', '', 'pizza', '', '', '2018-03-09 02:13:38', '2018-03-09 02:13:38', '', 0, 'http://wordpressfromscratch/?post_type=news&#038;p=39', 0, 'news', '', 0),
(40, 1, '2018-03-09 02:13:38', '2018-03-09 02:13:38', 'Pizza is a traditional Italian dish consisting of a yeasted flatbread typically topped with tomato sauce and cheese and baked in an oven. It can also be topped with additional vegetables, meats, and condiments, and can be made without cheese.', 'Pizza', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-03-09 02:13:38', '2018-03-09 02:13:38', '', 39, 'http://wordpressfromscratch/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-03-09 02:14:02', '2018-03-09 02:14:02', 'A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty, but the burger can include many variations in structure, ingredients, and composition. The cheese is normally added to the cooking hamburger patty shortly before serving, which allows the cheese to melt.', 'Cheeseburger', '', 'publish', 'open', 'closed', '', 'cheeseburger', '', '', '2018-03-09 02:14:02', '2018-03-09 02:14:02', '', 0, 'http://wordpressfromscratch/?post_type=news&#038;p=41', 0, 'news', '', 0),
(42, 1, '2018-03-09 02:14:02', '2018-03-09 02:14:02', 'A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty, but the burger can include many variations in structure, ingredients, and composition. The cheese is normally added to the cooking hamburger patty shortly before serving, which allows the cheese to melt.', 'Cheeseburger', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-03-09 02:14:02', '2018-03-09 02:14:02', '', 41, 'http://wordpressfromscratch/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-03-09 02:14:59', '2018-03-09 02:14:59', 'A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty, but the burger can include many variations in structure, ingredients, and composition. The cheese is normally added to the cooking hamburger patty shortly before serving, which allows the cheese to melt.', 'Cheeseburger', '', 'inherit', 'closed', 'closed', '', '41-autosave-v1', '', '', '2018-03-09 02:14:59', '2018-03-09 02:14:59', '', 41, 'http://wordpressfromscratch/41-autosave-v1/', 0, 'revision', '', 0),
(44, 1, '2018-03-09 02:15:31', '2018-03-09 02:15:31', '', 'Bacon Sandwich', '', 'publish', 'open', 'closed', '', 'bacon-sandwich', '', '', '2018-03-09 02:15:31', '2018-03-09 02:15:31', '', 0, 'http://wordpressfromscratch/?post_type=news&#038;p=44', 0, 'news', '', 0),
(45, 1, '2018-03-09 02:15:31', '2018-03-09 02:15:31', '', 'Bacon Sandwich', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-03-09 02:15:31', '2018-03-09 02:15:31', '', 44, 'http://wordpressfromscratch/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-03-09 02:20:15', '2018-03-09 02:20:15', 'hhhmmmmmm bacon', 'Bacon', '', 'publish', 'open', 'closed', '', 'bacon', '', '', '2018-03-29 23:50:06', '2018-03-29 23:50:06', '', 0, 'http://wordpressfromscratch/?post_type=lunchmenuitem&#038;p=46', 0, 'lunchmenuitem', '', 0),
(47, 1, '2018-03-09 02:20:15', '2018-03-09 02:20:15', 'hhhmmmmmm bacon', 'Bacon', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-03-09 02:20:15', '2018-03-09 02:20:15', '', 46, 'http://wordpressfromscratch/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-03-09 02:22:15', '2018-03-09 02:22:15', 'A <b>cheeseburger</b> is a <a title=\"Hamburger\" href=\"https://en.wikipedia.org/wiki/Hamburger\">hamburger</a> topped with <a title=\"Cheese\" href=\"https://en.wikipedia.org/wiki/Cheese\">cheese</a>. Traditionally, the slice of cheese is placed on top of the meat <a title=\"Patty\" href=\"https://en.wikipedia.org/wiki/Patty\">patty</a>, but the burger can include many variations in structure, ingredients, and composition. The cheese is normally added to the cooking hamburger patty shortly before serving, which allows the cheese to melt.', 'Cheeseburger', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-03-09 02:22:15', '2018-03-09 02:22:15', '', 28, 'http://wordpressfromscratch/28-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-03-09 02:37:04', '2018-03-09 02:37:04', '<b>Pizza</b> is a traditional <a title=\"Italian cuisine\" href=\"https://en.wikipedia.org/wiki/Italian_cuisine\">Italian</a> <a title=\"Dish (food)\" href=\"https://en.wikipedia.org/wiki/Dish_(food)\">dish</a> consisting of a yeasted <a title=\"Flatbread\" href=\"https://en.wikipedia.org/wiki/Flatbread\">flatbread</a> typically topped with <a title=\"Tomato sauce\" href=\"https://en.wikipedia.org/wiki/Tomato_sauce\">tomato sauce</a> and <a title=\"Cheese\" href=\"https://en.wikipedia.org/wiki/Cheese\">cheese</a>and baked in an oven. It can also be topped with additional vegetables, meats, and <a class=\"mw-redirect\" title=\"Condiments\" href=\"https://en.wikipedia.org/wiki/Condiments\">condiments</a>, and can be made without cheese.', 'Pizza', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-03-09 02:37:04', '2018-03-09 02:37:04', '', 26, 'http://wordpressfromscratch/26-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-03-09 05:29:09', '2018-03-09 05:29:09', '', 'zebras', '', 'inherit', 'open', 'closed', '', 'zebras', '', '', '2018-03-09 05:29:09', '2018-03-09 05:29:09', '', 0, 'http://wordpressfromscratch/wp-content/uploads/2018/03/zebras.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2018-03-09 05:29:27', '2018-03-09 05:29:27', 'http://wordpressfromscratch/wp-content/uploads/2018/03/cropped-zebras.png', 'cropped-zebras.png', '', 'inherit', 'open', 'closed', '', 'cropped-zebras-png', '', '', '2018-03-09 05:29:27', '2018-03-09 05:29:27', '', 0, 'http://wordpressfromscratch/wp-content/uploads/2018/03/cropped-zebras.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2018-03-09 05:29:32', '2018-03-09 05:29:32', '{\n    \"site_icon\": {\n        \"value\": 51,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-09 05:29:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '88a488d8-9f41-4522-b498-db2b3e0ee6ec', '', '', '2018-03-09 05:29:32', '2018-03-09 05:29:32', '', 0, 'http://wordpressfromscratch/88a488d8-9f41-4522-b498-db2b3e0ee6ec/', 0, 'customize_changeset', '', 0),
(53, 1, '2018-03-09 05:29:54', '2018-03-09 05:29:54', '{\n    \"blogdescription\": {\n        \"value\": \"This is better than another Wordpress site\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-09 05:29:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '64f1dedf-ecc2-497d-ae01-bc4eaebf48db', '', '', '2018-03-09 05:29:54', '2018-03-09 05:29:54', '', 0, 'http://wordpressfromscratch/64f1dedf-ecc2-497d-ae01-bc4eaebf48db/', 0, 'customize_changeset', '', 0),
(54, 1, '2018-03-09 05:30:10', '2018-03-09 05:30:10', '{\n    \"blogdescription\": {\n        \"value\": \"Better than Another Wordpress Site\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-09 05:30:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5bbd27c8-4f5d-4ab3-afbe-61c660f87426', '', '', '2018-03-09 05:30:10', '2018-03-09 05:30:10', '', 0, 'http://wordpressfromscratch/5bbd27c8-4f5d-4ab3-afbe-61c660f87426/', 0, 'customize_changeset', '', 0),
(55, 1, '2018-03-09 17:05:09', '2018-03-09 17:05:09', '', 'zebras-colors', '', 'inherit', 'open', 'closed', '', 'zebras-colors', '', '', '2018-03-09 17:05:09', '2018-03-09 17:05:09', '', 0, 'http://wordpressfromscratch/wp-content/uploads/2018/03/zebras-colors.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-03-09 17:05:14', '2018-03-09 17:05:14', 'http://wordpressfromscratch/wp-content/uploads/2018/03/cropped-zebras-colors.jpg', 'cropped-zebras-colors.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-zebras-colors-jpg', '', '', '2018-03-09 17:05:14', '2018-03-09 17:05:14', '', 0, 'http://wordpressfromscratch/wp-content/uploads/2018/03/cropped-zebras-colors.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-03-09 17:05:17', '2018-03-09 17:05:17', '{\n    \"site_icon\": {\n        \"value\": 56,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-09 17:05:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0ece4dbb-3700-4d10-8b50-21ffc48399b5', '', '', '2018-03-09 17:05:17', '2018-03-09 17:05:17', '', 0, 'http://wordpressfromscratch/0ece4dbb-3700-4d10-8b50-21ffc48399b5/', 0, 'customize_changeset', '', 0),
(58, 1, '2018-03-09 18:26:29', '2018-03-09 18:26:29', '{\n    \"blogdescription\": {\n        \"value\": \"Farm to Table\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-09 18:26:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1b636ea2-8e86-4cb5-970e-b9c228ec162d', '', '', '2018-03-09 18:26:29', '2018-03-09 18:26:29', '', 0, 'http://wordpressfromscratch/1b636ea2-8e86-4cb5-970e-b9c228ec162d/', 0, 'customize_changeset', '', 0),
(59, 1, '2018-03-09 19:34:39', '2018-03-09 19:34:39', '', 'Homepage Slider', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2018-03-28 18:54:28', '2018-03-28 18:54:28', '', 0, 'http://wordpressfromscratch/?post_type=ml-slider&#038;p=59', 0, 'ml-slider', '', 0),
(61, 1, '2018-03-09 19:36:06', '2018-03-09 19:36:06', '', 'Slider 59 - image', '', 'trash', 'closed', 'closed', '', 'slider-59-image__trashed', '', '', '2018-03-09 19:56:53', '2018-03-09 19:56:53', '', 0, 'http://wordpressfromscratch/?post_type=ml-slide&#038;p=61', 0, 'ml-slide', '', 0),
(62, 1, '2018-03-09 19:57:29', '2018-03-09 19:57:29', '', 'spices-bowls', '', 'inherit', 'open', 'closed', '', 'spices-bowls', '', '', '2018-03-09 19:57:29', '2018-03-09 19:57:29', '', 0, 'http://wordpressfromscratch/wp-content/uploads/2018/03/spices-bowls-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2018-03-09 19:57:30', '2018-03-09 19:57:30', '', 'spices-spoons', '', 'inherit', 'open', 'closed', '', 'spices-spoons-2', '', '', '2018-03-09 19:57:30', '2018-03-09 19:57:30', '', 0, 'http://wordpressfromscratch/wp-content/uploads/2018/03/spices-spoons-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-03-09 19:57:41', '2018-03-09 19:57:41', '', 'Slider 59 - image', '<h2>FRESH</h2>\r\nWe use a collection of unique and fresh ingredients\r\n<a class=\"button btn\" href=\"/about\">Learn More</a>', 'publish', 'closed', 'closed', '', 'slider-59-image', '', '', '2018-03-28 18:54:28', '2018-03-28 18:54:28', '', 0, 'http://wordpressfromscratch/?post_type=ml-slide&#038;p=64', 0, 'ml-slide', '', 0),
(65, 1, '2018-03-09 19:57:42', '2018-03-09 19:57:42', '', 'Slider 59 - image', '<h2>LOCAL</h2>\r\nOur ingredients are supplied by local purveyors in BC.\r\n<a class=\"button btn\" href=\"/menus\">View our Menus</a>', 'publish', 'closed', 'closed', '', 'slider-59-image-2', '', '', '2018-03-28 18:54:28', '2018-03-28 18:54:28', '', 0, 'http://wordpressfromscratch/?post_type=ml-slide&#038;p=65', 1, 'ml-slide', '', 0),
(66, 1, '2018-03-09 22:53:28', '2018-03-09 22:53:28', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://wordpressfromscratch/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Welcome to Zebra', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-03-09 22:53:28', '2018-03-09 22:53:28', '', 2, 'http://wordpressfromscratch/2-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-03-09 22:58:44', '2018-03-09 22:58:44', '{\n    \"site_icon\": {\n        \"value\": 68,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-09 22:58:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9b88c560-370e-4cb9-8809-45e9ccdb47c4', '', '', '2018-03-09 22:58:44', '2018-03-09 22:58:44', '', 0, 'http://wordpressfromscratch/9b88c560-370e-4cb9-8809-45e9ccdb47c4/', 0, 'customize_changeset', '', 0),
(70, 1, '2018-03-09 23:41:49', '2018-03-09 23:41:49', '{\n    \"zebra::custom_logo\": {\n        \"value\": 67,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-09 23:41:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3630dd11-d72c-4677-b249-1e704a5e6531', '', '', '2018-03-09 23:41:49', '2018-03-09 23:41:49', '', 0, 'http://wordpressfromscratch/3630dd11-d72c-4677-b249-1e704a5e6531/', 0, 'customize_changeset', '', 0),
(71, 1, '2018-03-09 23:46:12', '2018-03-09 23:46:12', '{\n    \"zebra::custom_logo\": {\n        \"value\": 67,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-09 23:46:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cca99b3f-49e2-41bc-9532-2a911f958d91', '', '', '2018-03-09 23:46:12', '2018-03-09 23:46:12', '', 0, 'http://wordpressfromscratch/cca99b3f-49e2-41bc-9532-2a911f958d91/', 0, 'customize_changeset', '', 0),
(72, 1, '2018-03-09 23:49:54', '2018-03-09 23:49:54', '{\n    \"zebra::custom_logo\": {\n        \"value\": 67,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-09 23:49:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9fd8de65-b6a5-481c-9bfe-b8e68354bbe4', '', '', '2018-03-09 23:49:54', '2018-03-09 23:49:54', '', 0, 'http://wordpressfromscratch/9fd8de65-b6a5-481c-9bfe-b8e68354bbe4/', 0, 'customize_changeset', '', 0),
(73, 1, '2018-03-09 23:56:55', '2018-03-09 23:56:55', '', 'zebras-colors-logo', '', 'inherit', 'open', 'closed', '', 'zebras-colors-logo-2', '', '', '2018-03-09 23:56:55', '2018-03-09 23:56:55', '', 0, 'http://wordpressfromscratch/wp-content/uploads/2018/03/zebras-colors-logo-2.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2018-03-09 23:57:19', '2018-03-09 23:57:19', '{\n    \"zebra::custom_logo\": {\n        \"value\": 73,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-09 23:57:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '18b53559-8397-4272-b347-ec5ddd786112', '', '', '2018-03-09 23:57:19', '2018-03-09 23:57:19', '', 0, 'http://wordpressfromscratch/18b53559-8397-4272-b347-ec5ddd786112/', 0, 'customize_changeset', '', 0),
(76, 1, '2018-03-09 23:59:20', '2018-03-09 23:59:20', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2018-03-28 17:18:44', '2018-03-28 17:18:44', '', 85, 'http://wordpressfromscratch/?p=76', 3, 'nav_menu_item', '', 0),
(77, 1, '2018-03-10 00:14:43', '2018-03-10 00:14:43', '&nbsp;\r\n<table class=\"infobox biota\">\r\n<tbody>\r\n<tr>\r\n<th colspan=\"2\">Zebra</th>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\"><a class=\"image\" href=\"https://en.wikipedia.org/wiki/File:Plains_Zebra_Equus_quagga.jpg\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Plains_Zebra_Equus_quagga.jpg/220px-Plains_Zebra_Equus_quagga.jpg\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Plains_Zebra_Equus_quagga.jpg/330px-Plains_Zebra_Equus_quagga.jpg 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Plains_Zebra_Equus_quagga.jpg/440px-Plains_Zebra_Equus_quagga.jpg 2x\" alt=\"Plains Zebra Equus quagga.jpg\" width=\"220\" height=\"330\" data-file-width=\"1273\" data-file-height=\"1910\" /></a></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">A herd of <a title=\"Plains zebra\" href=\"https://en.wikipedia.org/wiki/Plains_zebra\">plains zebra</a> (<i>Equus quagga</i>)</td>\r\n</tr>\r\n<tr>\r\n<th colspan=\"2\"><a title=\"Taxonomy (biology)\" href=\"https://en.wikipedia.org/wiki/Taxonomy_(biology)\">Scientific classification</a></th>\r\n</tr>\r\n<tr>\r\n<td>Kingdom:</td>\r\n<td><span class=\"kingdom\"><a title=\"Animal\" href=\"https://en.wikipedia.org/wiki/Animal\">Animalia</a></span></td>\r\n</tr>\r\n<tr>\r\n<td>Phylum:</td>\r\n<td><span class=\"phylum\"><a class=\"mw-redirect\" title=\"Chordata\" href=\"https://en.wikipedia.org/wiki/Chordata\">Chordata</a></span></td>\r\n</tr>\r\n<tr>\r\n<td>Class:</td>\r\n<td><span class=\"class\"><a title=\"Mammal\" href=\"https://en.wikipedia.org/wiki/Mammal\">Mammalia</a></span></td>\r\n</tr>\r\n<tr>\r\n<td>Order:</td>\r\n<td><span class=\"order\"><a class=\"mw-redirect\" title=\"Perissodactyla\" href=\"https://en.wikipedia.org/wiki/Perissodactyla\">Perissodactyla</a></span></td>\r\n</tr>\r\n<tr>\r\n<td>Family:</td>\r\n<td><span class=\"family\"><a title=\"Equidae\" href=\"https://en.wikipedia.org/wiki/Equidae\">Equidae</a></span></td>\r\n</tr>\r\n<tr>\r\n<td>Genus:</td>\r\n<td><span class=\"genus\"><i><a title=\"Equus (genus)\" href=\"https://en.wikipedia.org/wiki/Equus_(genus)\">Equus</a></i></span></td>\r\n</tr>\r\n<tr>\r\n<td>Subgenus:</td>\r\n<td><span class=\"subgenus\"><i><b>Hippotigris</b></i> and\r\n<i><b><a title=\"Grévy\'s zebra\" href=\"https://en.wikipedia.org/wiki/Gr%C3%A9vy%27s_zebra\">Dolichohippus</a></b></i></span></td>\r\n</tr>\r\n<tr>\r\n<th colspan=\"2\"><a title=\"Species\" href=\"https://en.wikipedia.org/wiki/Species\">Species</a></th>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<div class=\"plainlist\">\r\n<ul>\r\n 	<li><i><a title=\"Mountain zebra\" href=\"https://en.wikipedia.org/wiki/Mountain_zebra\">Equus zebra</a></i></li>\r\n 	<li><i><a title=\"Plains zebra\" href=\"https://en.wikipedia.org/wiki/Plains_zebra\">Equus quagga</a></i></li>\r\n 	<li><i><a title=\"Grévy\'s zebra\" href=\"https://en.wikipedia.org/wiki/Gr%C3%A9vy%27s_zebra\">Equus grevyi</a></i></li>\r\n</ul>\r\n</div>\r\nSee <a href=\"https://en.wikipedia.org/wiki/Zebra#Classification\">§ Classification</a> for subspecies.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<b>Zebras</b> (<span class=\"nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"\'z\' in \'zoom\'\">z</span><span title=\"/ɛ/: \'e\' in \'dress\'\">ɛ</span><span title=\"\'b\' in \'buy\'\">b</span><span title=\"\'r\' in \'rye\'\">r</span><span title=\"/ə/: \'a\' in \'about\'\">ə</span>/</a></span></span> <a title=\"Help:Pronunciation respelling key\" href=\"https://en.wikipedia.org/wiki/Help:Pronunciation_respelling_key\"><i title=\"English pronunciation respelling\">ZEB-rə</i></a> or <span class=\"nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"\'z\' in \'zoom\'\">z</span><span title=\"/iː/: \'ee\' in \'fleece\'\">iː</span><span title=\"\'b\' in \'buy\'\">b</span><span title=\"\'r\' in \'rye\'\">r</span><span title=\"/ə/: \'a\' in \'about\'\">ə</span>/</a></span></span> <a title=\"Help:Pronunciation respelling key\" href=\"https://en.wikipedia.org/wiki/Help:Pronunciation_respelling_key\"><i title=\"English pronunciation respelling\">ZEE-brə</i></a>)<sup id=\"cite_ref-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Zebra#cite_note-1\">[1]</a></sup> are several species of <a title=\"Fauna of Africa\" href=\"https://en.wikipedia.org/wiki/Fauna_of_Africa\">African</a> <a title=\"Equidae\" href=\"https://en.wikipedia.org/wiki/Equidae\">equids</a> (horse family) united by their distinctive black and white striped coats. Their stripes come in different patterns, unique to each individual. They are generally social animals that live in small <a title=\"Harem (zoology)\" href=\"https://en.wikipedia.org/wiki/Harem_(zoology)\">harems</a> to large <a class=\"mw-redirect\" title=\"Herds\" href=\"https://en.wikipedia.org/wiki/Herds\">herds</a>. Unlike their closest relatives, <a title=\"Horse\" href=\"https://en.wikipedia.org/wiki/Horse\">horses</a> and <a title=\"Donkey\" href=\"https://en.wikipedia.org/wiki/Donkey\">donkeys</a>, zebras have never been truly <a class=\"mw-redirect\" title=\"Domesticated\" href=\"https://en.wikipedia.org/wiki/Domesticated\">domesticated</a>.\r\n\r\nThere are three species of zebras: the <a title=\"Plains zebra\" href=\"https://en.wikipedia.org/wiki/Plains_zebra\">plains zebra</a>, the <a title=\"Mountain zebra\" href=\"https://en.wikipedia.org/wiki/Mountain_zebra\">mountain zebra</a> and the <a title=\"Grévy\'s zebra\" href=\"https://en.wikipedia.org/wiki/Gr%C3%A9vy%27s_zebra\">Grévy\'s zebra</a>. The plains zebra and the mountain zebra belong to the subgenus <i><a class=\"mw-redirect\" title=\"Hippotigris\" href=\"https://en.wikipedia.org/wiki/Hippotigris\">Hippotigris</a></i>, but Grévy\'s zebra is the sole species of subgenus <i>Dolichohippus</i>. The latter resembles an <a title=\"Asinus\" href=\"https://en.wikipedia.org/wiki/Asinus\">ass</a>, to which zebras are closely related, while the former two look more horse-like. All three belong to the genus <i>Equus</i>, along with other living equids.\r\n\r\nThe unique stripes of zebras make them one of the animals most familiar to people. They occur in a variety of habitats, such as <a class=\"mw-redirect\" title=\"Grasslands\" href=\"https://en.wikipedia.org/wiki/Grasslands\">grasslands</a>, <a title=\"Savanna\" href=\"https://en.wikipedia.org/wiki/Savanna\">savannas</a>, <a title=\"Woodland\" href=\"https://en.wikipedia.org/wiki/Woodland\">woodlands</a>, thorny <a class=\"mw-redirect\" title=\"Scrubland\" href=\"https://en.wikipedia.org/wiki/Scrubland\">scrublands</a>, <a title=\"Mountain\" href=\"https://en.wikipedia.org/wiki/Mountain\">mountains</a>, and coastal <a title=\"Hill\" href=\"https://en.wikipedia.org/wiki/Hill\">hills</a>. However, various anthropogenic factors have had a severe impact on zebra populations, in particular hunting for skins and habitat destruction. Grévy\'s zebra and the mountain zebra are endangered. While plains zebras are much more plentiful, one subspecies, the <a title=\"Quagga\" href=\"https://en.wikipedia.org/wiki/Quagga\">quagga</a>, became extinct in the late 19th century – though there is currently a plan, called the <a title=\"Quagga Project\" href=\"https://en.wikipedia.org/wiki/Quagga_Project\">Quagga Project</a>, that aims to breed zebras that are phenotypically similar to the quagga in a process called <a title=\"Breeding back\" href=\"https://en.wikipedia.org/wiki/Breeding_back\">breeding back</a>.', 'About Zebras', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-03-10 00:14:43', '2018-03-10 00:14:43', '', 5, 'http://wordpressfromscratch/5-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(78, 1, '2018-03-10 00:40:01', '2018-03-10 00:40:01', '&nbsp;\n<table class=\"infobox biota\">\n<tbody>\n<tr>\n<th colspan=\"2\">Zebra</th>\n</tr>\n<tr>\n<td colspan=\"2\"></td>\n</tr>\n<tr>\n<td colspan=\"2\">A herd of <a title=\"Plains zebra\" href=\"https://en.wikipedia.org/wiki/Plains_zebra\">plains zebra</a> (<i>Equus quagga</i>)</td>\n</tr>\n<tr>\n<th colspan=\"2\"><a title=\"Taxonomy (biology)\" href=\"https://en.wikipedia.org/wiki/Taxonomy_(biology)\">Scientific classification</a></th>\n</tr>\n<tr>\n<td>Kingdom:</td>\n<td><span class=\"kingdom\"><a title=\"Animal\" href=\"https://en.wikipedia.org/wiki/Animal\">Animalia</a></span></td>\n</tr>\n<tr>\n<td>Phylum:</td>\n<td><span class=\"phylum\"><a class=\"mw-redirect\" title=\"Chordata\" href=\"https://en.wikipedia.org/wiki/Chordata\">Chordata</a></span></td>\n</tr>\n<tr>\n<td>Class:</td>\n<td><span class=\"class\"><a title=\"Mammal\" href=\"https://en.wikipedia.org/wiki/Mammal\">Mammalia</a></span></td>\n</tr>\n<tr>\n<td>Order:</td>\n<td><span class=\"order\"><a class=\"mw-redirect\" title=\"Perissodactyla\" href=\"https://en.wikipedia.org/wiki/Perissodactyla\">Perissodactyla</a></span></td>\n</tr>\n<tr>\n<td>Family:</td>\n<td><span class=\"family\"><a title=\"Equidae\" href=\"https://en.wikipedia.org/wiki/Equidae\">Equidae</a></span></td>\n</tr>\n<tr>\n<td>Genus:</td>\n<td><span class=\"genus\"><i><a title=\"Equus (genus)\" href=\"https://en.wikipedia.org/wiki/Equus_(genus)\">Equus</a></i></span></td>\n</tr>\n<tr>\n<td>Subgenus:</td>\n<td><span class=\"subgenus\"><i><b>Hippotigris</b></i> and\n<i><b><a title=\"Grévy\'s zebra\" href=\"https://en.wikipedia.org/wiki/Gr%C3%A9vy%27s_zebra\">Dolichohippus</a></b></i></span></td>\n</tr>\n<tr>\n<th colspan=\"2\"><a title=\"Species\" href=\"https://en.wikipedia.org/wiki/Species\">Species</a></th>\n</tr>\n<tr>\n<td colspan=\"2\">\n<div class=\"plainlist\">\n<ul>\n 	<li><i><a title=\"Mountain zebra\" href=\"https://en.wikipedia.org/wiki/Mountain_zebra\">Equus zebra</a></i></li>\n 	<li><i><a title=\"Plains zebra\" href=\"https://en.wikipedia.org/wiki/Plains_zebra\">Equus quagga</a></i></li>\n 	<li><i><a title=\"Grévy\'s zebra\" href=\"https://en.wikipedia.org/wiki/Gr%C3%A9vy%27s_zebra\">Equus grevyi</a></i></li>\n</ul>\n</div>\nSee <a href=\"https://en.wikipedia.org/wiki/Zebra#Classification\">§ Classification</a> for subspecies.</td>\n</tr>\n</tbody>\n</table>\n<b>Zebras</b> (<span class=\"nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"\'z\' in \'zoom\'\">z</span><span title=\"/ɛ/: \'e\' in \'dress\'\">ɛ</span><span title=\"\'b\' in \'buy\'\">b</span><span title=\"\'r\' in \'rye\'\">r</span><span title=\"/ə/: \'a\' in \'about\'\">ə</span>/</a></span></span> <a title=\"Help:Pronunciation respelling key\" href=\"https://en.wikipedia.org/wiki/Help:Pronunciation_respelling_key\"><i title=\"English pronunciation respelling\">ZEB-rə</i></a> or <span class=\"nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"\'z\' in \'zoom\'\">z</span><span title=\"/iː/: \'ee\' in \'fleece\'\">iː</span><span title=\"\'b\' in \'buy\'\">b</span><span title=\"\'r\' in \'rye\'\">r</span><span title=\"/ə/: \'a\' in \'about\'\">ə</span>/</a></span></span> <a title=\"Help:Pronunciation respelling key\" href=\"https://en.wikipedia.org/wiki/Help:Pronunciation_respelling_key\"><i title=\"English pronunciation respelling\">ZEE-brə</i></a>)<sup id=\"cite_ref-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Zebra#cite_note-1\">[1]</a></sup> are several species of <a title=\"Fauna of Africa\" href=\"https://en.wikipedia.org/wiki/Fauna_of_Africa\">African</a> <a title=\"Equidae\" href=\"https://en.wikipedia.org/wiki/Equidae\">equids</a> (horse family) united by their distinctive black and white striped coats. Their stripes come in different patterns, unique to each individual. They are generally social animals that live in small <a title=\"Harem (zoology)\" href=\"https://en.wikipedia.org/wiki/Harem_(zoology)\">harems</a> to large <a class=\"mw-redirect\" title=\"Herds\" href=\"https://en.wikipedia.org/wiki/Herds\">herds</a>. Unlike their closest relatives, <a title=\"Horse\" href=\"https://en.wikipedia.org/wiki/Horse\">horses</a> and <a title=\"Donkey\" href=\"https://en.wikipedia.org/wiki/Donkey\">donkeys</a>, zebras have never been truly <a class=\"mw-redirect\" title=\"Domesticated\" href=\"https://en.wikipedia.org/wiki/Domesticated\">domesticated</a>.\n\nThere are three species of zebras: the <a title=\"Plains zebra\" href=\"https://en.wikipedia.org/wiki/Plains_zebra\">plains zebra</a>, the <a title=\"Mountain zebra\" href=\"https://en.wikipedia.org/wiki/Mountain_zebra\">mountain zebra</a> and the <a title=\"Grévy\'s zebra\" href=\"https://en.wikipedia.org/wiki/Gr%C3%A9vy%27s_zebra\">Grévy\'s zebra</a>. The plains zebra and the mountain zebra belong to the subgenus <i><a class=\"mw-redirect\" title=\"Hippotigris\" href=\"https://en.wikipedia.org/wiki/Hippotigris\">Hippotigris</a></i>, but Grévy\'s zebra is the sole species of subgenus <i>Dolichohippus</i>. The latter resembles an <a title=\"Asinus\" href=\"https://en.wikipedia.org/wiki/Asinus\">ass</a>, to which zebras are closely related, while the former two look more horse-like. All three belong to the genus <i>Equus</i>, along with other living equids.\n\nThe unique stripes of zebras make them one of the animals most familiar to people. They occur in a variety of habitats, such as <a class=\"mw-redirect\" title=\"Grasslands\" href=\"https://en.wikipedia.org/wiki/Grasslands\">grasslands</a>, <a title=\"Savanna\" href=\"https://en.wikipedia.org/wiki/Savanna\">savannas</a>, <a title=\"Woodland\" href=\"https://en.wikipedia.org/wiki/Woodland\">woodlands</a>, thorny <a class=\"mw-redirect\" title=\"Scrubland\" href=\"https://en.wikipedia.org/wiki/Scrubland\">scrublands</a>, <a title=\"Mountain\" href=\"https://en.wikipedia.org/wiki/Mountain\">mountains</a>, and coastal <a title=\"Hill\" href=\"https://en.wikipedia.org/wiki/Hill\">hills</a>. However, various anthropogenic factors have had a severe impact on zebra populations, in particular hunting for skins and habitat destruction. Grévy\'s zebra and the mountain zebra are endangered. While plains zebras are much more plentiful, one subspecies, the <a title=\"Quagga\" href=\"https://en.wikipedia.org/wiki/Quagga\">quagga</a>, became extinct in the late 19th century – though there is currently a plan, called the <a title=\"Quagga Project\" href=\"https://en.wikipedia.org/wiki/Quagga_Project\">Quagga Project</a>, that aims to breed zebras that are phenotypically similar to the quagga in a process called <a title=\"Breeding back\" href=\"https://en.wikipedia.org/wiki/Breeding_back\">breeding back</a>.', 'About Zebras', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2018-03-10 00:40:01', '2018-03-10 00:40:01', '', 5, 'http://wordpressfromscratch/5-autosave-v1/', 0, 'revision', '', 0),
(79, 1, '2018-03-10 00:40:22', '2018-03-10 00:40:22', '', '220px-Plains_Zebra_Equus_quagga', '', 'inherit', 'open', 'closed', '', '220px-plains_zebra_equus_quagga', '', '', '2018-03-10 00:40:22', '2018-03-10 00:40:22', '', 5, 'http://wordpressfromscratch/wp-content/uploads/2018/03/220px-Plains_Zebra_Equus_quagga-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2018-03-10 00:40:28', '2018-03-10 00:40:28', '<b>Zebras</b> (<span class=\"nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"\'z\' in \'zoom\'\">z</span><span title=\"/ɛ/: \'e\' in \'dress\'\">ɛ</span><span title=\"\'b\' in \'buy\'\">b</span><span title=\"\'r\' in \'rye\'\">r</span><span title=\"/ə/: \'a\' in \'about\'\">ə</span>/</a></span></span> <a title=\"Help:Pronunciation respelling key\" href=\"https://en.wikipedia.org/wiki/Help:Pronunciation_respelling_key\"><i title=\"English pronunciation respelling\">ZEB-rə</i></a> or <span class=\"nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"\'z\' in \'zoom\'\">z</span><span title=\"/iː/: \'ee\' in \'fleece\'\">iː</span><span title=\"\'b\' in \'buy\'\">b</span><span title=\"\'r\' in \'rye\'\">r</span><span title=\"/ə/: \'a\' in \'about\'\">ə</span>/</a></span></span> <a title=\"Help:Pronunciation respelling key\" href=\"https://en.wikipedia.org/wiki/Help:Pronunciation_respelling_key\"><i title=\"English pronunciation respelling\">ZEE-brə</i></a>)<sup id=\"cite_ref-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Zebra#cite_note-1\">[1]</a></sup> are several species of <a title=\"Fauna of Africa\" href=\"https://en.wikipedia.org/wiki/Fauna_of_Africa\">African</a> <a title=\"Equidae\" href=\"https://en.wikipedia.org/wiki/Equidae\">equids</a> (horse family) united by their distinctive black and white striped coats. Their stripes come in different patterns, unique to each individual. They are generally social animals that live in small <a title=\"Harem (zoology)\" href=\"https://en.wikipedia.org/wiki/Harem_(zoology)\">harems</a> to large <a class=\"mw-redirect\" title=\"Herds\" href=\"https://en.wikipedia.org/wiki/Herds\">herds</a>. Unlike their closest relatives, <a title=\"Horse\" href=\"https://en.wikipedia.org/wiki/Horse\">horses</a> and <a title=\"Donkey\" href=\"https://en.wikipedia.org/wiki/Donkey\">donkeys</a>, zebras have never been truly <a class=\"mw-redirect\" title=\"Domesticated\" href=\"https://en.wikipedia.org/wiki/Domesticated\">domesticated</a>.\r\n\r\nThere are three species of zebras: the <a title=\"Plains zebra\" href=\"https://en.wikipedia.org/wiki/Plains_zebra\">plains zebra</a>, the <a title=\"Mountain zebra\" href=\"https://en.wikipedia.org/wiki/Mountain_zebra\">mountain zebra</a> and the <a title=\"Grévy\'s zebra\" href=\"https://en.wikipedia.org/wiki/Gr%C3%A9vy%27s_zebra\">Grévy\'s zebra</a>. The plains zebra and the mountain zebra belong to the subgenus <i><a class=\"mw-redirect\" title=\"Hippotigris\" href=\"https://en.wikipedia.org/wiki/Hippotigris\">Hippotigris</a></i>, but Grévy\'s zebra is the sole species of subgenus <i>Dolichohippus</i>. The latter resembles an <a title=\"Asinus\" href=\"https://en.wikipedia.org/wiki/Asinus\">ass</a>, to which zebras are closely related, while the former two look more horse-like. All three belong to the genus <i>Equus</i>, along with other living equids.\r\n\r\nThe unique stripes of zebras make them one of the animals most familiar to people. They occur in a variety of habitats, such as <a class=\"mw-redirect\" title=\"Grasslands\" href=\"https://en.wikipedia.org/wiki/Grasslands\">grasslands</a>, <a title=\"Savanna\" href=\"https://en.wikipedia.org/wiki/Savanna\">savannas</a>, <a title=\"Woodland\" href=\"https://en.wikipedia.org/wiki/Woodland\">woodlands</a>, thorny <a class=\"mw-redirect\" title=\"Scrubland\" href=\"https://en.wikipedia.org/wiki/Scrubland\">scrublands</a>, <a title=\"Mountain\" href=\"https://en.wikipedia.org/wiki/Mountain\">mountains</a>, and coastal <a title=\"Hill\" href=\"https://en.wikipedia.org/wiki/Hill\">hills</a>. However, various anthropogenic factors have had a severe impact on zebra populations, in particular hunting for skins and habitat destruction. Grévy\'s zebra and the mountain zebra are endangered. While plains zebras are much more plentiful, one subspecies, the <a title=\"Quagga\" href=\"https://en.wikipedia.org/wiki/Quagga\">quagga</a>, became extinct in the late 19th century – though there is currently a plan, called the <a title=\"Quagga Project\" href=\"https://en.wikipedia.org/wiki/Quagga_Project\">Quagga Project</a>, that aims to breed zebras that are phenotypically similar to the quagga in a process called <a title=\"Breeding back\" href=\"https://en.wikipedia.org/wiki/Breeding_back\">breeding back</a>.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<table class=\"infobox biota\">\r\n<tbody>\r\n<tr>\r\n<th colspan=\"2\">Zebra</th>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\"></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">A herd of <a title=\"Plains zebra\" href=\"https://en.wikipedia.org/wiki/Plains_zebra\">plains zebra</a> (<i>Equus quagga</i>)</td>\r\n</tr>\r\n<tr>\r\n<th colspan=\"2\"><a title=\"Taxonomy (biology)\" href=\"https://en.wikipedia.org/wiki/Taxonomy_(biology)\">Scientific classification</a></th>\r\n</tr>\r\n<tr>\r\n<td>Kingdom:</td>\r\n<td><span class=\"kingdom\"><a title=\"Animal\" href=\"https://en.wikipedia.org/wiki/Animal\">Animalia</a></span></td>\r\n</tr>\r\n<tr>\r\n<td>Phylum:</td>\r\n<td><span class=\"phylum\"><a class=\"mw-redirect\" title=\"Chordata\" href=\"https://en.wikipedia.org/wiki/Chordata\">Chordata</a></span></td>\r\n</tr>\r\n<tr>\r\n<td>Class:</td>\r\n<td><span class=\"class\"><a title=\"Mammal\" href=\"https://en.wikipedia.org/wiki/Mammal\">Mammalia</a></span></td>\r\n</tr>\r\n<tr>\r\n<td>Order:</td>\r\n<td><span class=\"order\"><a class=\"mw-redirect\" title=\"Perissodactyla\" href=\"https://en.wikipedia.org/wiki/Perissodactyla\">Perissodactyla</a></span></td>\r\n</tr>\r\n<tr>\r\n<td>Family:</td>\r\n<td><span class=\"family\"><a title=\"Equidae\" href=\"https://en.wikipedia.org/wiki/Equidae\">Equidae</a></span></td>\r\n</tr>\r\n<tr>\r\n<td>Genus:</td>\r\n<td><span class=\"genus\"><i><a title=\"Equus (genus)\" href=\"https://en.wikipedia.org/wiki/Equus_(genus)\">Equus</a></i></span></td>\r\n</tr>\r\n<tr>\r\n<td>Subgenus:</td>\r\n<td><span class=\"subgenus\"><i><b>Hippotigris</b></i> and\r\n<i><b><a title=\"Grévy\'s zebra\" href=\"https://en.wikipedia.org/wiki/Gr%C3%A9vy%27s_zebra\">Dolichohippus</a></b></i></span></td>\r\n</tr>\r\n<tr>\r\n<th colspan=\"2\"><a title=\"Species\" href=\"https://en.wikipedia.org/wiki/Species\">Species</a></th>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<div class=\"plainlist\">\r\n<ul>\r\n 	<li><i><a title=\"Mountain zebra\" href=\"https://en.wikipedia.org/wiki/Mountain_zebra\">Equus zebra</a></i></li>\r\n 	<li><i><a title=\"Plains zebra\" href=\"https://en.wikipedia.org/wiki/Plains_zebra\">Equus quagga</a></i></li>\r\n 	<li><i><a title=\"Grévy\'s zebra\" href=\"https://en.wikipedia.org/wiki/Gr%C3%A9vy%27s_zebra\">Equus grevyi</a></i></li>\r\n</ul>\r\n</div>\r\nSee <a href=\"https://en.wikipedia.org/wiki/Zebra#Classification\">§ Classification</a> for subspecies.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'About Zebras', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-03-10 00:40:28', '2018-03-10 00:40:28', '', 5, 'http://wordpressfromscratch/5-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-03-10 00:59:14', '2018-03-10 00:59:14', 'The <a title=\"Plains zebra\" href=\"https://en.wikipedia.org/wiki/Plains_zebra\">plains zebra</a> (<i>Equus quagga</i>, formerly <i>Equus burchelli</i>) is the most common, and has or had about six subspecies distributed across much of southern and eastern Africa. It, or particular subspecies of it, have also been known as the common zebra, the <a class=\"mw-redirect\" title=\"Dauw\" href=\"https://en.wikipedia.org/wiki/Dauw\">dauw</a>, <a title=\"Burchell\'s zebra\" href=\"https://en.wikipedia.org/wiki/Burchell%27s_zebra\">Burchell\'s zebra</a> (actually the subspecies <i>Equus quagga burchellii</i>), Chapman\'s zebra, <a title=\"Johan August Wahlberg\" href=\"https://en.wikipedia.org/wiki/Johan_August_Wahlberg\">Wahlberg</a>\'s zebra, <a title=\"Frederick Selous\" href=\"https://en.wikipedia.org/wiki/Frederick_Selous\">Selous</a>\' zebra, <a title=\"Grant\'s zebra\" href=\"https://en.wikipedia.org/wiki/Grant%27s_zebra\">Grant\'s zebra</a>, Boehm\'s zebra and the <a title=\"Quagga\" href=\"https://en.wikipedia.org/wiki/Quagga\">quagga</a> (another <a title=\"Extinction\" href=\"https://en.wikipedia.org/wiki/Extinction\">extinct</a> subspecies, <i>Equus quagga quagga</i>).\r\n\r\nThe <a title=\"Mountain zebra\" href=\"https://en.wikipedia.org/wiki/Mountain_zebra\">mountain zebra</a> (<i>Equus zebra</i>) of southwest Africa tends to have a sleek coat with a white belly and narrower stripes than the plains zebra. It has two subspecies and is classified as <a title=\"Vulnerable species\" href=\"https://en.wikipedia.org/wiki/Vulnerable_species\">vulnerable</a>.\r\n\r\n<a title=\"Grévy\'s zebra\" href=\"https://en.wikipedia.org/wiki/Gr%C3%A9vy%27s_zebra\">Grévy\'s zebra</a> (<i>Equus grevyi</i>) is the largest type, with a long, narrow head, making it appear rather <a title=\"Mule\" href=\"https://en.wikipedia.org/wiki/Mule\">mule</a>-like. It is an inhabitant of the semi-arid <a title=\"Grassland\" href=\"https://en.wikipedia.org/wiki/Grassland\">grasslands</a> of <a title=\"Ethiopia\" href=\"https://en.wikipedia.org/wiki/Ethiopia\">Ethiopia</a> and northern <a title=\"Kenya\" href=\"https://en.wikipedia.org/wiki/Kenya\">Kenya</a>. Grévy\'s zebra is the rarest species, and is classified as <a title=\"Endangered species\" href=\"https://en.wikipedia.org/wiki/Endangered_species\">endangered</a>.\r\n\r\nAlthough zebra species may have overlapping ranges, they do not interbreed. In captivity, plains zebras have been crossed with mountain zebras. The hybrid foals lacked a <a title=\"Dewlap\" href=\"https://en.wikipedia.org/wiki/Dewlap\">dewlap</a> and resembled the plains zebra apart from their larger ears and their hindquarters pattern. Attempts to breed a Grévy\'s zebra stallion to mountain zebra mares resulted in a high rate of miscarriage. In captivity, crosses between zebras and other (non-zebra) <a class=\"mw-redirect\" title=\"Equine\" href=\"https://en.wikipedia.org/wiki/Equine\">equines</a> have produced several distinct <a title=\"Hybrid (biology)\" href=\"https://en.wikipedia.org/wiki/Hybrid_(biology)\">hybrids</a>, including the <a title=\"Zebroid\" href=\"https://en.wikipedia.org/wiki/Zebroid\">zebroid</a>, zeedonk, zony, and zorse. In certain regions of Kenya, plains zebras and Grévy\'s zebra coexist, and fertile hybrids occur.<sup id=\"cite_ref-8\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Zebra#cite_note-8\">[8]</a></sup>\r\n\r\nThe <a title=\"Hagerman horse\" href=\"https://en.wikipedia.org/wiki/Hagerman_horse\">Hagerman horse</a> (<i>Equus simplicidens</i>) is sometimes referred to as the <b>American zebra</b> due to perceived similarities to the plains zebra, and sometimes depicted as striped. However, consensus appears to be that it wasn\'t particularly closely related to either <i>Hippotigiris</i> nor <i>Dolichohippus</i>, nor is there unambiguous evidence that it had stripes.<sup id=\"cite_ref-9\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Zebra#cite_note-9\">[9]</a></sup>', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-03-28 18:47:32', '2018-03-28 18:47:32', '', 0, 'http://wordpressfromscratch/?page_id=81', 0, 'page', '', 0),
(82, 1, '2018-03-10 00:59:14', '2018-03-10 00:59:14', '', 'About', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-03-10 00:59:14', '2018-03-10 00:59:14', '', 81, 'http://wordpressfromscratch/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-03-10 01:04:35', '2018-03-10 01:04:35', 'The <a title=\"Plains zebra\" href=\"https://en.wikipedia.org/wiki/Plains_zebra\">plains zebra</a> (<i>Equus quagga</i>, formerly <i>Equus burchelli</i>) is the most common, and has or had about six subspecies distributed across much of southern and eastern Africa. It, or particular subspecies of it, have also been known as the common zebra, the <a class=\"mw-redirect\" title=\"Dauw\" href=\"https://en.wikipedia.org/wiki/Dauw\">dauw</a>, <a title=\"Burchell\'s zebra\" href=\"https://en.wikipedia.org/wiki/Burchell%27s_zebra\">Burchell\'s zebra</a> (actually the subspecies <i>Equus quagga burchellii</i>), Chapman\'s zebra, <a title=\"Johan August Wahlberg\" href=\"https://en.wikipedia.org/wiki/Johan_August_Wahlberg\">Wahlberg</a>\'s zebra, <a title=\"Frederick Selous\" href=\"https://en.wikipedia.org/wiki/Frederick_Selous\">Selous</a>\' zebra, <a title=\"Grant\'s zebra\" href=\"https://en.wikipedia.org/wiki/Grant%27s_zebra\">Grant\'s zebra</a>, Boehm\'s zebra and the <a title=\"Quagga\" href=\"https://en.wikipedia.org/wiki/Quagga\">quagga</a> (another <a title=\"Extinction\" href=\"https://en.wikipedia.org/wiki/Extinction\">extinct</a> subspecies, <i>Equus quagga quagga</i>).\r\n\r\nThe <a title=\"Mountain zebra\" href=\"https://en.wikipedia.org/wiki/Mountain_zebra\">mountain zebra</a> (<i>Equus zebra</i>) of southwest Africa tends to have a sleek coat with a white belly and narrower stripes than the plains zebra. It has two subspecies and is classified as <a title=\"Vulnerable species\" href=\"https://en.wikipedia.org/wiki/Vulnerable_species\">vulnerable</a>.\r\n\r\n<a title=\"Grévy\'s zebra\" href=\"https://en.wikipedia.org/wiki/Gr%C3%A9vy%27s_zebra\">Grévy\'s zebra</a> (<i>Equus grevyi</i>) is the largest type, with a long, narrow head, making it appear rather <a title=\"Mule\" href=\"https://en.wikipedia.org/wiki/Mule\">mule</a>-like. It is an inhabitant of the semi-arid <a title=\"Grassland\" href=\"https://en.wikipedia.org/wiki/Grassland\">grasslands</a> of <a title=\"Ethiopia\" href=\"https://en.wikipedia.org/wiki/Ethiopia\">Ethiopia</a> and northern <a title=\"Kenya\" href=\"https://en.wikipedia.org/wiki/Kenya\">Kenya</a>. Grévy\'s zebra is the rarest species, and is classified as <a title=\"Endangered species\" href=\"https://en.wikipedia.org/wiki/Endangered_species\">endangered</a>.\r\n\r\nAlthough zebra species may have overlapping ranges, they do not interbreed. In captivity, plains zebras have been crossed with mountain zebras. The hybrid foals lacked a <a title=\"Dewlap\" href=\"https://en.wikipedia.org/wiki/Dewlap\">dewlap</a> and resembled the plains zebra apart from their larger ears and their hindquarters pattern. Attempts to breed a Grévy\'s zebra stallion to mountain zebra mares resulted in a high rate of miscarriage. In captivity, crosses between zebras and other (non-zebra) <a class=\"mw-redirect\" title=\"Equine\" href=\"https://en.wikipedia.org/wiki/Equine\">equines</a> have produced several distinct <a title=\"Hybrid (biology)\" href=\"https://en.wikipedia.org/wiki/Hybrid_(biology)\">hybrids</a>, including the <a title=\"Zebroid\" href=\"https://en.wikipedia.org/wiki/Zebroid\">zebroid</a>, zeedonk, zony, and zorse. In certain regions of Kenya, plains zebras and Grévy\'s zebra coexist, and fertile hybrids occur.<sup id=\"cite_ref-8\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Zebra#cite_note-8\">[8]</a></sup>\r\n\r\nThe <a title=\"Hagerman horse\" href=\"https://en.wikipedia.org/wiki/Hagerman_horse\">Hagerman horse</a> (<i>Equus simplicidens</i>) is sometimes referred to as the <b>American zebra</b> due to perceived similarities to the plains zebra, and sometimes depicted as striped. However, consensus appears to be that it wasn\'t particularly closely related to either <i>Hippotigiris</i> nor <i>Dolichohippus</i>, nor is there unambiguous evidence that it had stripes.<sup id=\"cite_ref-9\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Zebra#cite_note-9\">[9]</a></sup>', 'About', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-03-10 01:04:35', '2018-03-10 01:04:35', '', 81, 'http://wordpressfromscratch/81-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-03-10 01:08:10', '2018-03-10 01:08:10', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2018-03-27 22:04:09', '2018-03-27 22:04:09', '', 0, 'http://wordpressfromscratch/?p=84', 14, 'nav_menu_item', '', 0),
(85, 1, '2018-03-10 01:08:38', '2018-03-10 01:08:38', '', 'Menus', '', 'publish', 'closed', 'closed', '', 'menus', '', '', '2018-03-28 21:01:07', '2018-03-28 21:01:07', '', 0, 'http://wordpressfromscratch/?page_id=85', 0, 'page', '', 0),
(86, 1, '2018-03-10 01:08:38', '2018-03-10 01:08:38', '', 'Menus', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-03-10 01:08:38', '2018-03-10 01:08:38', '', 85, 'http://wordpressfromscratch/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-03-10 01:16:15', '2018-03-10 01:16:15', 'Sooo good when it\'s 100% grass fed.', 'Steak', '', 'publish', 'open', 'closed', '', 'steak', '', '', '2018-03-30 01:41:31', '2018-03-30 01:41:31', '', 0, 'http://wordpressfromscratch/?post_type=dinnermenuitem&#038;p=87', 0, 'dinnermenuitem', '', 0),
(88, 1, '2018-03-10 01:16:15', '2018-03-10 01:16:15', 'Sooo good when it\'s 100% grass fed.', 'Steak', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2018-03-10 01:16:15', '2018-03-10 01:16:15', '', 87, 'http://wordpressfromscratch/87-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-03-10 01:16:39', '2018-03-10 01:16:39', '<strong>Our dinner menu is served between 5-10PM. </strong>', 'Dinner Menu', '', 'publish', 'closed', 'closed', '', 'dinner-menu', '', '', '2018-03-29 21:20:01', '2018-03-29 21:20:01', '', 85, 'http://wordpressfromscratch/?page_id=89', 1, 'page', '', 0),
(90, 1, '2018-03-10 01:16:39', '2018-03-10 01:16:39', '', 'Dinner', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-03-10 01:16:39', '2018-03-10 01:16:39', '', 89, 'http://wordpressfromscratch/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-03-10 01:21:41', '2018-03-10 01:21:41', ' ', '', '', 'publish', 'closed', 'closed', '', 'dinner-menu', '', '', '2018-03-28 17:18:44', '2018-03-28 17:18:44', '', 85, 'http://wordpressfromscratch/?p=91', 4, 'nav_menu_item', '', 0),
(92, 1, '2018-03-10 01:22:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-10 01:22:06', '0000-00-00 00:00:00', '', 0, 'http://wordpressfromscratch/?p=92', 1, 'nav_menu_item', '', 0),
(93, 1, '2018-03-10 01:22:35', '2018-03-10 01:22:35', ' ', '', '', 'publish', 'closed', 'closed', '', 'dinner-menu-2', '', '', '2018-03-27 22:04:09', '2018-03-27 22:04:09', '', 85, 'http://wordpressfromscratch/?p=93', 7, 'nav_menu_item', '', 0),
(94, 1, '2018-03-10 01:27:17', '2018-03-10 01:27:17', '', 'Dinner Menu', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-03-10 01:27:17', '2018-03-10 01:27:17', '', 89, 'http://wordpressfromscratch/89-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-03-10 05:30:36', '2018-03-10 05:30:36', '', 'Food Menus', '', 'publish', 'closed', 'closed', '', '96', '', '', '2018-03-27 22:04:09', '2018-03-27 22:04:09', '', 0, 'http://wordpressfromscratch/?p=96', 3, 'nav_menu_item', '', 0),
(101, 1, '2018-03-11 02:58:53', '2018-03-11 02:58:53', 'This is a cheeseburger but with bacon. MMm bacon.', 'Bacon Cheeseburger', '', 'publish', 'open', 'closed', '', 'bacon-cheeseburger', '', '', '2018-03-24 01:03:24', '2018-03-24 01:03:24', '', 0, 'http://wordpressfromscratch/?post_type=lunchmenuitem&#038;p=101', 0, 'lunchmenuitem', '', 0),
(102, 1, '2018-03-11 02:58:53', '2018-03-11 02:58:53', 'This is a cheeseburger but with bacon. MMm bacon.', 'Bacon Cheeseburger', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-03-11 02:58:53', '2018-03-11 02:58:53', '', 101, 'http://wordpressfromscratch/101-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-03-11 18:31:23', '2018-03-11 18:31:23', 'Fresh halibut for limited time!', 'Fish & Chips - Halibut', '', 'publish', 'open', 'closed', '', 'fish-chips-halibut', '', '', '2018-03-24 01:03:25', '2018-03-24 01:03:25', '', 0, 'http://wordpressfromscratch/?post_type=lunchmenuitem&#038;p=106', 0, 'lunchmenuitem', '', 0),
(107, 1, '2018-03-11 18:31:23', '2018-03-11 18:31:23', 'Fresh halibut for limited time!', 'Fish & Chips - Halibut', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2018-03-11 18:31:23', '2018-03-11 18:31:23', '', 106, 'http://wordpressfromscratch/106-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-03-11 18:41:55', '2018-03-11 18:41:55', 'Special prices to celebrate healthy fish populations', 'Orange Roughy', '', 'publish', 'open', 'closed', '', 'orange-roughy', '', '', '2018-03-30 01:41:31', '2018-03-30 01:41:31', '', 0, 'http://wordpressfromscratch/?post_type=dinnermenuitem&#038;p=108', 0, 'dinnermenuitem', '', 0),
(109, 1, '2018-03-11 18:41:55', '2018-03-11 18:41:55', 'Special prices to celebrate healthy fish populations', 'Orange Roughy', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-03-11 18:41:55', '2018-03-11 18:41:55', '', 108, 'http://wordpressfromscratch/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-03-11 21:07:36', '2018-03-11 21:07:36', 'Why do people love pizza? We want to know.', 'Pizza Pizza!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-03-11 21:07:36', '2018-03-11 21:07:36', '', 1, 'http://wordpressfromscratch/1-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-03-12 18:58:38', '0000-00-00 00:00:00', '', 'new video', '', 'draft', 'open', 'closed', '', '', '', '', '2018-03-12 18:58:38', '2018-03-12 18:58:38', '', 0, 'http://wordpressfromscratch/?post_type=video&#038;p=111', 0, 'video', '', 0),
(112, 1, '2018-03-12 19:10:13', '2018-03-12 19:10:13', '<strong>Our beer selection features craft beers from local brewers as well as the Pacific Northwest and California.</strong>', 'Beer Menu', '', 'publish', 'closed', 'closed', '', 'beer-menu', '', '', '2018-03-13 19:38:19', '2018-03-13 19:38:19', '', 0, 'http://wordpressfromscratch/?page_id=112', 0, 'page', '', 0),
(113, 1, '2018-03-12 19:10:13', '2018-03-12 19:10:13', '', 'Beer Menu', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-03-12 19:10:13', '2018-03-12 19:10:13', '', 112, 'http://wordpressfromscratch/112-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-03-12 19:11:11', '2018-03-12 19:11:11', ' ', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2018-03-27 22:04:09', '2018-03-27 22:04:09', '', 0, 'http://wordpressfromscratch/?p=115', 10, 'nav_menu_item', '', 0),
(116, 1, '2018-03-13 02:00:37', '2018-03-13 02:00:37', 'This is the page description !!!!', 'Lunch Menu', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-13 02:00:37', '2018-03-13 02:00:37', '', 9, 'http://wordpressfromscratch/9-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-03-13 02:05:14', '2018-03-13 02:05:14', 'This is the page description !!!! Where am I?', 'Lunch Menu', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-13 02:05:14', '2018-03-13 02:05:14', '', 9, 'http://wordpressfromscratch/9-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2018-03-13 03:17:16', '2018-03-13 03:17:16', 'WEll WEll WEll', 'Dinner Menu', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-03-13 03:17:16', '2018-03-13 03:17:16', '', 89, 'http://wordpressfromscratch/89-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-03-13 03:24:47', '2018-03-13 03:24:47', '			<h3>Our dinner menu is served between 5-10pm.</h3>\r\n', 'Dinner Menu', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-03-13 03:24:47', '2018-03-13 03:24:47', '', 89, 'http://wordpressfromscratch/89-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-03-13 03:28:26', '2018-03-13 03:28:26', '			<strong>Our dinner menu is served between 5-10pm. </strong>\r\n', 'Dinner Menu', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-03-13 03:28:26', '2018-03-13 03:28:26', '', 89, 'http://wordpressfromscratch/89-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-03-13 04:12:31', '2018-03-13 04:12:31', '', 'Search', '', 'trash', 'closed', 'closed', '', 'search-s__trashed', '', '', '2018-03-16 03:28:28', '2018-03-16 03:28:28', '', 0, 'http://wordpressfromscratch/?page_id=121', 0, 'page', '', 0),
(122, 1, '2018-03-13 04:12:31', '2018-03-13 04:12:31', '', 'Search', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2018-03-13 04:12:31', '2018-03-13 04:12:31', '', 121, 'http://wordpressfromscratch/121-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-03-13 04:18:28', '2018-03-13 04:18:28', '<form class=\"search\" method=\"get\" action=\"<?php echo home_url(); ?>\" role=\"search\">\r\n  <input type=\"search\" class=\"search-field\" placeholder=\"<?php echo esc_attr_x( \'Search …\', \'placeholder\' ) ?>\" value=\"<?php echo get_search_query() ?>\" name=\"s\" title=\"<?php echo esc_attr_x( \'Search for:\', \'label\' ) ?>\" />\r\n  <button type=\"submit\" role=\"button\" class=\"btn btn-default right\"/><span class=\"glyphicon glyphicon-search white\"></span></button>\r\n</form>', 'Search', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2018-03-13 04:18:28', '2018-03-13 04:18:28', '', 121, 'http://wordpressfromscratch/121-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2018-03-13 04:19:42', '2018-03-13 04:19:42', '', 'Search', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2018-03-13 04:19:42', '2018-03-13 04:19:42', '', 121, 'http://wordpressfromscratch/121-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-03-13 04:51:08', '2018-03-13 04:51:08', '{\n    \"site_icon\": {\n        \"value\": 73,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-13 04:51:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '903bb99a-92d4-42fe-9a0c-6a66153a8a8f', '', '', '2018-03-13 04:51:08', '2018-03-13 04:51:08', '', 0, 'http://wordpressfromscratch/903bb99a-92d4-42fe-9a0c-6a66153a8a8f/', 0, 'customize_changeset', '', 0),
(126, 1, '2018-03-13 05:03:48', '2018-03-13 05:03:48', ' ', '', '', 'publish', 'closed', 'closed', '', '126', '', '', '2018-03-26 23:57:25', '2018-03-26 23:57:25', '', 0, 'http://wordpressfromscratch/?p=126', 1, 'nav_menu_item', '', 0),
(127, 1, '2018-03-13 05:08:15', '2018-03-13 05:08:15', '', 'Drink Menus', '', 'publish', 'closed', 'closed', '', 'drink-menus', '', '', '2018-03-15 20:53:15', '2018-03-15 20:53:15', '', 0, 'http://wordpressfromscratch/?page_id=127', 0, 'page', '', 0),
(128, 1, '2018-03-13 05:08:15', '2018-03-13 05:08:15', '', 'Drink Menus', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2018-03-13 05:08:15', '2018-03-13 05:08:15', '', 127, 'http://wordpressfromscratch/127-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2018-03-13 05:08:34', '2018-03-13 05:08:34', ' ', '', '', 'publish', 'closed', 'closed', '', '129', '', '', '2018-03-27 22:04:09', '2018-03-27 22:04:09', '', 0, 'http://wordpressfromscratch/?p=129', 9, 'nav_menu_item', '', 0),
(130, 1, '2018-03-13 19:38:07', '2018-03-13 19:38:07', '<strong>Our beer selection features craft beers from local brewers as well as the Pacific Northwest and California.</strong>', 'Beer Menu', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-03-13 19:38:07', '2018-03-13 19:38:07', '', 112, 'http://wordpressfromscratch/112-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2018-03-15 00:26:20', '2018-03-15 00:26:20', '', 'dreamstime_s_68294930', '', 'inherit', 'open', 'closed', '', 'dreamstime_s_68294930', '', '', '2018-03-15 00:26:20', '2018-03-15 00:26:20', '', 9, 'http://wordpressfromscratch/wp-content/uploads/2018/03/dreamstime_s_68294930.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2018-03-15 20:47:27', '2018-03-15 20:47:27', '', 'lunch-menu', '', 'inherit', 'open', 'closed', '', 'lunch-menu-2', '', '', '2018-03-15 20:47:27', '2018-03-15 20:47:27', '', 9, 'http://wordpressfromscratch/wp-content/uploads/2018/03/lunch-menu.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2018-03-15 20:48:01', '2018-03-15 20:48:01', '<strong>Our lunch menu is served between 12-2:30pm.</strong> \r\n', 'Lunch Menu', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-15 20:48:01', '2018-03-15 20:48:01', '', 9, 'http://wordpressfromscratch/9-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2018-03-15 20:52:41', '2018-03-15 20:52:41', '', 'dinner-menu', '', 'inherit', 'open', 'closed', '', 'dinner-menu-3', '', '', '2018-03-15 20:52:41', '2018-03-15 20:52:41', '', 127, 'http://wordpressfromscratch/wp-content/uploads/2018/03/dinner-menu.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2018-03-16 03:25:02', '2018-03-16 03:25:02', '', 'Search', '', 'publish', 'closed', 'closed', '', 'search', '', '', '2018-03-16 03:38:42', '2018-03-16 03:38:42', '', 0, 'http://wordpressfromscratch/?page_id=136', 0, 'page', '', 0),
(137, 1, '2018-03-16 03:25:02', '2018-03-16 03:25:02', '', 'Search', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2018-03-16 03:25:02', '2018-03-16 03:25:02', '', 136, 'http://wordpressfromscratch/136-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2018-03-20 00:55:52', '2018-03-20 00:55:52', '<ul>	\r\n  	 <?php wp_nav_menu( array(\r\n        \'menu\' => \'menus\'\r\n    ) ); ?>\r\n    </ul>', 'Menus', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-03-20 00:55:52', '2018-03-20 00:55:52', '', 85, 'http://wordpressfromscratch/85-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2018-03-20 00:59:12', '2018-03-20 00:59:12', '', 'Menus', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-03-20 00:59:12', '2018-03-20 00:59:12', '', 85, 'http://wordpressfromscratch/85-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2018-03-20 01:12:54', '2018-03-20 01:12:54', '[wpb_childpages]', 'Menus', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-03-20 01:12:54', '2018-03-20 01:12:54', '', 85, 'http://wordpressfromscratch/85-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2018-03-20 01:49:24', '2018-03-20 01:49:24', '[menu name=\'Food Menus\' ]', 'Menus', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-03-20 01:49:24', '2018-03-20 01:49:24', '', 85, 'http://wordpressfromscratch/85-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2018-03-24 01:07:00', '2018-03-24 01:07:00', '', 'Menus', '', 'inherit', 'closed', 'closed', '', '85-autosave-v1', '', '', '2018-03-24 01:07:00', '2018-03-24 01:07:00', '', 85, 'http://wordpressfromscratch/85-autosave-v1/', 0, 'revision', '', 0),
(146, 1, '2018-03-23 21:12:08', '2018-03-23 21:12:08', '', 'CB - All menus for menus page', '', 'publish', 'closed', 'closed', '', 'cb-all-menus-for-menus-page', '', '', '2018-03-23 21:13:08', '2018-03-23 21:13:08', '', 0, 'http://wordpressfromscratch/?post_type=dev_content_block&#038;p=146', 0, 'dev_content_block', '', 0),
(147, 1, '2018-03-23 21:12:08', '2018-03-23 21:12:08', '', 'CB - All menus for menus page', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2018-03-23 21:12:08', '2018-03-23 21:12:08', '', 146, 'http://wordpressfromscratch/146-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2018-03-23 21:12:25', '2018-03-23 21:12:25', '[dcb id=146]', 'Menus', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-03-23 21:12:25', '2018-03-23 21:12:25', '', 85, 'http://wordpressfromscratch/85-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2018-03-23 21:13:08', '2018-03-23 21:13:08', '', 'CB - All menus for menus page', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2018-03-23 21:13:08', '2018-03-23 21:13:08', '', 146, 'http://wordpressfromscratch/146-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2018-03-23 22:14:25', '2018-03-23 22:14:25', '', 'menu-background', '', 'inherit', 'open', 'closed', '', 'menu-background', '', '', '2018-03-23 22:14:25', '2018-03-23 22:14:25', '', 9, 'http://wordpressfromscratch/wp-content/uploads/2018/03/menu-background.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2018-03-24 01:26:11', '2018-03-24 01:26:11', '', 'Menus', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-03-24 01:26:11', '2018-03-24 01:26:11', '', 85, 'http://wordpressfromscratch/85-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2018-03-26 23:45:49', '2018-03-26 23:45:49', '<strong>Breakfast is served all day.</strong>', 'Breakfast Menu', '', 'publish', 'closed', 'closed', '', 'breakfast-menu', '', '', '2018-03-29 21:18:44', '2018-03-29 21:18:44', '', 85, 'http://wordpressfromscratch/?page_id=156', 0, 'page', '', 0),
(157, 1, '2018-03-26 23:45:49', '2018-03-26 23:45:49', '', 'Breakfast Menu', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2018-03-26 23:45:49', '2018-03-26 23:45:49', '', 156, 'http://wordpressfromscratch/156-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2018-03-26 23:46:51', '2018-03-26 23:46:51', ' ', '', '', 'publish', 'closed', 'closed', '', '158', '', '', '2018-03-27 22:04:09', '2018-03-27 22:04:09', '', 85, 'http://wordpressfromscratch/?p=158', 4, 'nav_menu_item', '', 0),
(159, 1, '2018-03-26 23:47:21', '2018-03-26 23:47:21', ' ', '', '', 'publish', 'closed', 'closed', '', '159', '', '', '2018-03-28 17:18:44', '2018-03-28 17:18:44', '', 85, 'http://wordpressfromscratch/?p=159', 1, 'nav_menu_item', '', 0),
(160, 1, '2018-03-26 23:53:37', '2018-03-26 23:53:37', '', 'Wine Menu', '', 'publish', 'closed', 'closed', '', 'wine-menu', '', '', '2018-03-28 18:12:21', '2018-03-28 18:12:21', '', 0, 'http://wordpressfromscratch/?page_id=160', 0, 'page', '', 0),
(162, 1, '2018-03-26 23:53:37', '2018-03-26 23:53:37', '', 'Wine Menu', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2018-03-26 23:53:37', '2018-03-26 23:53:37', '', 160, 'http://wordpressfromscratch/160-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2018-03-26 23:53:48', '2018-03-26 23:53:48', '<strong>Brunch is served on Saturday and Sunday from 10AM-2PM.</strong>', 'Brunch Menu', '', 'publish', 'closed', 'closed', '', 'brunch-menu', '', '', '2018-03-29 21:19:26', '2018-03-29 21:19:26', '', 85, 'http://wordpressfromscratch/?page_id=163', 0, 'page', '', 0),
(164, 1, '2018-03-26 23:53:49', '2018-03-26 23:53:49', ' ', '', '', 'publish', 'closed', 'closed', '', '164', '', '', '2018-03-28 17:18:44', '2018-03-28 17:18:44', '', 0, 'http://wordpressfromscratch/164/', 2, 'nav_menu_item', '', 0),
(165, 1, '2018-03-26 23:53:48', '2018-03-26 23:53:48', '', 'Brunch Menu', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2018-03-26 23:53:48', '2018-03-26 23:53:48', '', 163, 'http://wordpressfromscratch/163-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2018-03-26 23:54:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-26 23:54:03', '0000-00-00 00:00:00', '', 0, 'http://wordpressfromscratch/?p=166', 1, 'nav_menu_item', '', 0),
(167, 1, '2018-03-26 23:54:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-26 23:54:03', '0000-00-00 00:00:00', '', 0, 'http://wordpressfromscratch/?p=167', 1, 'nav_menu_item', '', 0),
(168, 1, '2018-03-26 23:54:40', '2018-03-26 23:54:40', ' ', '', '', 'publish', 'closed', 'closed', '', '168', '', '', '2018-03-26 23:57:25', '2018-03-26 23:57:25', '', 0, 'http://wordpressfromscratch/?p=168', 4, 'nav_menu_item', '', 0),
(169, 1, '2018-03-26 23:54:58', '2018-03-26 23:54:58', ' ', '', '', 'publish', 'closed', 'closed', '', '169', '', '', '2018-03-27 22:04:09', '2018-03-27 22:04:09', '', 0, 'http://wordpressfromscratch/?p=169', 5, 'nav_menu_item', '', 0),
(170, 1, '2018-03-26 23:54:58', '2018-03-26 23:54:58', ' ', '', '', 'publish', 'closed', 'closed', '', '170', '', '', '2018-03-27 22:04:09', '2018-03-27 22:04:09', '', 0, 'http://wordpressfromscratch/?p=170', 13, 'nav_menu_item', '', 0),
(172, 1, '2018-03-26 23:55:28', '2018-03-26 23:55:28', '', 'Cocktail Menu', '', 'publish', 'closed', 'closed', '', 'cocktail-menu', '', '', '2018-03-28 18:11:50', '2018-03-28 18:11:50', '', 0, 'http://wordpressfromscratch/?page_id=172', 0, 'page', '', 0),
(174, 1, '2018-03-26 23:55:28', '2018-03-26 23:55:28', '', 'Cocktail Menu', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2018-03-26 23:55:28', '2018-03-26 23:55:28', '', 172, 'http://wordpressfromscratch/172-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2018-03-26 23:55:39', '2018-03-26 23:55:39', '', 'Liquor Menu', '', 'publish', 'closed', 'closed', '', 'liquor-menu', '', '', '2018-03-28 18:12:08', '2018-03-28 18:12:08', '', 0, 'http://wordpressfromscratch/?page_id=175', 0, 'page', '', 0),
(177, 1, '2018-03-26 23:55:39', '2018-03-26 23:55:39', '', 'Liquor Menu', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2018-03-26 23:55:39', '2018-03-26 23:55:39', '', 175, 'http://wordpressfromscratch/175-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2018-03-26 23:55:47', '2018-03-26 23:55:47', '', 'Dessert Menu', '', 'private', 'closed', 'closed', '', 'dessert-menu', '', '', '2018-03-28 18:39:24', '2018-03-28 18:39:24', '', 0, 'http://wordpressfromscratch/?page_id=178', 0, 'page', '', 0),
(180, 1, '2018-03-26 23:55:47', '2018-03-26 23:55:47', '', 'Dessert Menu', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2018-03-26 23:55:47', '2018-03-26 23:55:47', '', 178, 'http://wordpressfromscratch/178-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2018-03-26 23:57:05', '2018-03-26 23:57:05', ' ', '', '', 'publish', 'closed', 'closed', '', '181', '', '', '2018-03-28 17:18:44', '2018-03-28 17:18:44', '', 0, 'http://wordpressfromscratch/?p=181', 5, 'nav_menu_item', '', 0),
(182, 1, '2018-03-26 23:57:25', '2018-03-26 23:57:25', ' ', '', '', 'publish', 'closed', 'closed', '', '182', '', '', '2018-03-26 23:57:25', '2018-03-26 23:57:25', '', 0, 'http://wordpressfromscratch/?p=182', 3, 'nav_menu_item', '', 0),
(183, 1, '2018-03-26 23:57:25', '2018-03-26 23:57:25', ' ', '', '', 'publish', 'closed', 'closed', '', '183', '', '', '2018-03-26 23:57:25', '2018-03-26 23:57:25', '', 0, 'http://wordpressfromscratch/?p=183', 2, 'nav_menu_item', '', 0),
(184, 1, '2018-03-26 23:57:52', '2018-03-26 23:57:52', ' ', '', '', 'publish', 'closed', 'closed', '', '184', '', '', '2018-03-27 22:04:09', '2018-03-27 22:04:09', '', 0, 'http://wordpressfromscratch/?p=184', 8, 'nav_menu_item', '', 0),
(185, 1, '2018-03-26 23:57:52', '2018-03-26 23:57:52', ' ', '', '', 'publish', 'closed', 'closed', '', '185', '', '', '2018-03-27 22:04:09', '2018-03-27 22:04:09', '', 0, 'http://wordpressfromscratch/?p=185', 12, 'nav_menu_item', '', 0),
(186, 1, '2018-03-26 23:57:52', '2018-03-26 23:57:52', ' ', '', '', 'publish', 'closed', 'closed', '', '186', '', '', '2018-03-27 22:04:09', '2018-03-27 22:04:09', '', 0, 'http://wordpressfromscratch/?p=186', 11, 'nav_menu_item', '', 0),
(187, 1, '2018-03-27 16:48:41', '2018-03-27 16:48:41', '{\n    \"widget_null-instagram-feed[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo2OntzOjU6InRpdGxlIjtzOjk6Ikluc3RhZ3JhbSI7czo4OiJ1c2VybmFtZSI7czo3OiJ0cmVzYV9kIjtzOjY6Im51bWJlciI7czoxOiI5IjtzOjQ6InNpemUiO3M6OToidGh1bWJuYWlsIjtzOjY6InRhcmdldCI7czo2OiJfYmxhbmsiO3M6NDoibGluayI7czoxMDoiRm9sbG93IE1lISI7fQ==\",\n            \"title\": \"Instagram\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a80fde4bbfaf0eb48b190b95852b1e28\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 16:48:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '25f42b6f-22d2-4a3e-a2fc-9096d7b3dae6', '', '', '2018-03-27 16:48:41', '2018-03-27 16:48:41', '', 0, 'http://wordpressfromscratch/25f42b6f-22d2-4a3e-a2fc-9096d7b3dae6/', 0, 'customize_changeset', '', 0),
(188, 1, '2018-03-27 17:29:00', '2018-03-27 17:29:00', '', 'facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2018-03-27 20:35:55', '2018-03-27 20:35:55', '', 0, 'http://wordpressfromscratch/?p=188', 2, 'nav_menu_item', '', 0),
(190, 1, '2018-03-27 17:30:17', '2018-03-27 17:30:17', '', 'instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2018-03-27 20:35:55', '2018-03-27 20:35:55', '', 0, 'http://wordpressfromscratch/?p=190', 1, 'nav_menu_item', '', 0),
(191, 1, '2018-03-27 18:00:16', '2018-03-27 18:00:16', '', 'twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2018-03-27 20:35:55', '2018-03-27 20:35:55', '', 0, 'http://wordpressfromscratch/?p=191', 3, 'nav_menu_item', '', 0),
(192, 1, '2018-03-27 20:04:33', '2018-03-27 20:04:33', '', 'google +', '', 'publish', 'closed', 'closed', '', '192', '', '', '2018-03-27 20:35:55', '2018-03-27 20:35:55', '', 0, 'http://wordpressfromscratch/?p=192', 4, 'nav_menu_item', '', 0),
(193, 1, '2018-03-27 22:02:58', '2018-03-27 22:02:58', '[wpforms id=\"203\" title=\"false\" description=\"false\"]', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-03-28 00:05:58', '2018-03-28 00:05:58', '', 0, 'http://wordpressfromscratch/?page_id=193', 0, 'page', '', 0),
(195, 1, '2018-03-27 22:02:58', '2018-03-27 22:02:58', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2018-03-27 22:02:58', '2018-03-27 22:02:58', '', 193, 'http://wordpressfromscratch/193-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(197, 1, '2018-03-27 22:03:24', '2018-03-27 22:03:24', ' 	       \r\n            <script>\r\n                jQuery(function($){\r\n                    $(\'.otw-wrapper select\').selectric();\r\n                });\r\n            </script>\r\n        \r\n        <div id=\"otw_widget-2\" class=\"otw-shadow-light-style widget-container open-table-widget col-sm-6 col-center\">\r\n<h3 class=\"otw-widget-title widget-title\">Make your reservation</h3>\r\n        <div class=\"otw-shadow-dark\">\r\n\r\n            \r\n<div class=\"otw-widget-form-wrap\">\r\n		<form method=\"get\" class=\"otw-widget-form\" action=\"//www.opentable.com/restaurant-search.aspx\" target=\"_blank\">\r\n		<div class=\"otw-wrapper\">\r\n\r\n			<div class=\"otw-date-li otw-input-wrap\">\r\n									<label for=\"date-otw_widget-2\">Date</label>\r\n								<input id=\"date-otw_widget-2\" name=\"startDate\" class=\"otw-reservation-date\" type=\"text\" value=\"\" autocomplete=\"off\" readonly=\"readonly\">\r\n			</div>\r\n			<div class=\"otw-time-wrap otw-input-wrap\">\r\n									<label for=\"time-otw_widget-2\">Time</label>\r\n								<select id=\"time-otw_widget-2\" name=\"ResTime\" class=\"otw-reservation-time otw-selectpicker\">\r\n					<option value=\"8:00am\">8:00 am</option>\r\n<option value=\"8:30am\">8:30 am</option>\r\n<option value=\"9:00am\">9:00 am</option>\r\n<option value=\"9:30am\">9:30 am</option>\r\n<option value=\"10:00am\">10:00 am</option>\r\n<option value=\"10:30am\">10:30 am</option>\r\n<option value=\"11:00am\">11:00 am</option>\r\n<option value=\"11:30am\">11:30 am</option>\r\n<option value=\"12:00pm\">12:00 pm</option>\r\n<option value=\"12:30pm\">12:30 pm</option>\r\n<option value=\"1:00pm\">1:00 pm</option>\r\n<option value=\"1:30pm\">1:30 pm</option>\r\n<option value=\"2:00pm\">2:00 pm</option>\r\n<option value=\"2:30pm\">2:30 pm</option>\r\n<option value=\"3:00pm\">3:00 pm</option>\r\n<option value=\"3:30pm\">3:30 pm</option>\r\n<option value=\"4:00pm\">4:00 pm</option>\r\n<option value=\"4:30pm\">4:30 pm</option>\r\n<option value=\"5:00pm\">5:00 pm</option>\r\n<option value=\"5:30pm\">5:30 pm</option>\r\n<option value=\"6:00pm\">6:00 pm</option>\r\n<option value=\"6:30pm\">6:30 pm</option>\r\n<option value=\"7:00pm\" selected=\"selected\">7:00 pm</option>\r\n<option value=\"7:30pm\">7:30 pm</option>\r\n<option value=\"8:00pm\">8:00 pm</option>\r\n<option value=\"8:30pm\">8:30 pm</option>\r\n<option value=\"9:00pm\">9:00 pm</option>\r\n<option value=\"9:30pm\">9:30 pm</option>\r\n<option value=\"10:00pm\">10:00 pm</option>\r\n<option value=\"10:30pm\">10:30 pm</option>\r\n<option value=\"11:00pm\">11:00 pm</option>\r\n<option value=\"11:30pm\">11:30 pm</option>\r\n				</select>\r\n\r\n			</div>\r\n			<div class=\"otw-party-size-wrap otw-input-wrap\">\r\n									<label for=\"party-otw_widget-2\">Party Size</label>\r\n								<select id=\"party-otw_widget-2\" name=\"partySize\" class=\"otw-party-size-select selectpicker\">\r\n					<option value=\"1\">1 Person</option>\r\n					<option value=\"2\" selected=\"selected\">2 People</option>\r\n					<option value=\"3\">3 People</option>\r\n					<option value=\"4\">4 People</option>\r\n					<option value=\"5\">5 People</option>\r\n					<option value=\"6\">6 People</option>\r\n					<option value=\"7\">7 People</option>\r\n					<option value=\"8\">8 People</option>\r\n					<option value=\"9\">9 People</option>\r\n					<option value=\"10\">10 People</option>\r\n				</select>\r\n\r\n			</div>\r\n\r\n			<div class=\"otw-button-wrap\">\r\n				<input type=\"submit\" class=\"otw-submit-btn\" value=\"Find a Table\">\r\n			</div>\r\n			<input type=\"hidden\" name=\"RestaurantID\" class=\"RestaurantID\" value=\"\">\r\n			<input type=\"hidden\" name=\"rid\" class=\"rid\" value=\"\">\r\n			<input type=\"hidden\" name=\"GeoID\" class=\"GeoID\" value=\"15\">\r\n			<input type=\"hidden\" name=\"txtDateFormat\" class=\"txtDateFormat\" value=\"MM/dd/yyyy\">\r\n			<input type=\"hidden\" name=\"RestaurantReferralID\" class=\"RestaurantReferralID\" value=\"\">\r\n		</div>\r\n	</form>\r\n		<div class=\"powered-by-open-table\"><span class=\"powered-by-text\">Powered By:</span></div>\r\n</div><!-- /.otw-widget-form-wrap -->\r\n        ', 'Reservations', '', 'publish', 'closed', 'closed', '', 'reservations', '', '', '2018-03-28 18:44:47', '2018-03-28 18:44:47', '', 0, 'http://wordpressfromscratch/?page_id=197', 0, 'page', '', 0),
(199, 1, '2018-03-27 22:03:24', '2018-03-27 22:03:24', '', 'Reservations', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2018-03-27 22:03:24', '2018-03-27 22:03:24', '', 197, 'http://wordpressfromscratch/197-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2018-03-27 22:04:09', '2018-03-27 22:04:09', ' ', '', '', 'publish', 'closed', 'closed', '', '200', '', '', '2018-03-27 22:04:09', '2018-03-27 22:04:09', '', 0, 'http://wordpressfromscratch/?p=200', 2, 'nav_menu_item', '', 0),
(201, 1, '2018-03-27 22:04:09', '2018-03-27 22:04:09', ' ', '', '', 'publish', 'closed', 'closed', '', '201', '', '', '2018-03-27 22:04:09', '2018-03-27 22:04:09', '', 0, 'http://wordpressfromscratch/?p=201', 16, 'nav_menu_item', '', 0),
(202, 1, '2018-03-28 00:02:32', '2018-03-28 00:02:32', '<p>This is the WPForms preview page. All your form previews will be handled on this page.</p><p>The page is set to private, so it is not publicly accessible. Please do not delete this page :) .</p>', 'WPForms Preview', '', 'private', 'closed', 'closed', '', 'wpforms-preview', '', '', '2018-03-28 00:02:32', '2018-03-28 00:02:32', '', 0, 'http://wordpressfromscratch/wpforms-preview/', 0, 'page', '', 0),
(203, 1, '2018-03-28 00:04:40', '2018-03-28 00:04:40', '{\"id\":\"203\",\"field_id\":3,\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"css\":\"\"}],\"settings\":{\"form_title\":\"Simple Contact Form\",\"form_desc\":\"\",\"form_class\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"submit_class\":\"\",\"honeypot\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form\",\"sender_name\":\"{field_id=\\\"0\\\"}\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmation_type\":\"message\",\"confirmation_message\":\"Thanks for contacting us! We will be in touch with you shortly.\",\"confirmation_message_scroll\":\"1\",\"confirmation_page\":\"81\",\"confirmation_redirect\":\"\"},\"meta\":{\"template\":\"contact\"}}', 'Simple Contact Form', '', 'publish', 'closed', 'closed', '', 'simple-contact-form', '', '', '2018-03-28 00:04:46', '2018-03-28 00:04:46', '', 0, 'http://wordpressfromscratch/?post_type=wpforms&#038;p=203', 0, 'wpforms', '', 0),
(204, 1, '2018-03-28 00:05:58', '2018-03-28 00:05:58', '[wpforms id=\"203\" title=\"false\" description=\"false\"]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2018-03-28 00:05:58', '2018-03-28 00:05:58', '', 193, 'http://wordpressfromscratch/193-revision-v1/', 0, 'revision', '', 0),
(205, 1, '2018-03-28 17:14:38', '2018-03-28 17:14:38', 'Fish fingers or fish sticks, are a processed food made using a whitefish, such as cod, hake, haddock or pollock, which has been battered or breaded. They are commonly available in the frozen food section of supermarkets.', 'Fish Sticks', '', 'publish', 'open', 'closed', '', 'fish-sticks', '', '', '2018-03-28 17:14:53', '2018-03-28 17:14:53', '', 0, 'http://wordpressfromscratch/?post_type=lunchmenuitem&#038;p=205', 0, 'lunchmenuitem', '', 0),
(206, 1, '2018-03-28 17:14:38', '2018-03-28 17:14:38', 'Fish fingers or fish sticks, are a processed food made using a whitefish, such as cod, hake, haddock or pollock, which has been battered or breaded. They are commonly available in the frozen food section of supermarkets.', 'Fish Sticks', '', 'inherit', 'closed', 'closed', '', '205-revision-v1', '', '', '2018-03-28 17:14:38', '2018-03-28 17:14:38', '', 205, 'http://wordpressfromscratch/205-revision-v1/', 0, 'revision', '', 0),
(207, 1, '2018-03-28 17:20:24', '2018-03-28 17:20:24', 'Eggs Benedict is a traditional American breakfast or brunch dish that consists of two halves of an English muffin each of which is topped with Canadian bacon, ham or sometimes bacon, a poached egg, and hollandaise sauce.', 'Eggs Benedict', '', 'publish', 'open', 'closed', '', 'eggs-benedict', '', '', '2018-03-28 17:24:13', '2018-03-28 17:24:13', '', 0, 'http://wordpressfromscratch/?post_type=brunchmenuitem&#038;p=207', 0, 'brunchmenuitem', '', 0),
(208, 1, '2018-03-28 17:20:24', '2018-03-28 17:20:24', 'Eggs Benedict is a traditional American breakfast or brunch dish that consists of two halves of an English muffin each of which is topped with Canadian bacon, ham or sometimes bacon, a poached egg, and hollandaise sauce.', 'Eggs Benedict', '', 'inherit', 'closed', 'closed', '', '207-revision-v1', '', '', '2018-03-28 17:20:24', '2018-03-28 17:20:24', '', 207, 'http://wordpressfromscratch/207-revision-v1/', 0, 'revision', '', 0),
(209, 1, '2018-03-28 17:32:51', '2018-03-28 17:32:51', 'A pancake is a flat cake, often thin and round, prepared from a starch-based batter that may contain eggs, milk and butter and cooked on a hot surface such as a griddle or frying pan, often frying with oil or butter.', 'Pancakes', '', 'publish', 'open', 'closed', '', 'pancakes', '', '', '2018-03-28 18:07:31', '2018-03-28 18:07:31', '', 0, 'http://wordpressfromscratch/?post_type=breakfastmenuitem&#038;p=209', 0, 'breakfastmenuitem', '', 0),
(210, 1, '2018-03-28 17:32:51', '2018-03-28 17:32:51', '', 'Pancakes', '', 'inherit', 'closed', 'closed', '', '209-revision-v1', '', '', '2018-03-28 17:32:51', '2018-03-28 17:32:51', '', 209, 'http://wordpressfromscratch/209-revision-v1/', 0, 'revision', '', 0),
(211, 1, '2018-03-28 17:33:27', '2018-03-28 17:33:27', 'A pancake is a flat cake, often thin and round, prepared from a starch-based batter that may contain eggs, milk and butter and cooked on a hot surface such as a griddle or frying pan, often frying with oil or butter.', 'Pancakes', '', 'inherit', 'closed', 'closed', '', '209-revision-v1', '', '', '2018-03-28 17:33:27', '2018-03-28 17:33:27', '', 209, 'http://wordpressfromscratch/209-revision-v1/', 0, 'revision', '', 0),
(212, 1, '2018-03-28 17:48:23', '2018-03-28 17:48:23', '<div class=\"col-sm-4 widget-area\">\r\n	        <div id=\"custom_html-6\" class=\"widget_text widget-container widget_custom_html\"><h3 class=\"widget-title\">Visit Us</h3><div class=\"textwidget custom-html-widget\"><p>\r\nVisit us: 1 Main Street Portland, OR 97211\r\n</p></div></div><div id=\"wpgmza_map_widget-2\" class=\"widget-container wpgmza_widget\">\r\n                \r\n            <div id=\"wpgmza_map\" style=\"display: block; overflow: hidden; width: 300px; height: 300px; margin-right: auto; margin-left: auto !important; position: relative;\"><div style=\"height: 100%; width: 100%; position: absolute; top: 0px; left: 0px; background-color: rgb(229, 227, 223);\"><div class=\"gm-style\" style=\"position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px;\"><div tabindex=\"0\" style=\"position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; cursor: url(&quot;http://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;), default; touch-action: none;\"><div style=\"z-index: 1; position: absolute; left: 50%; top: 50%; transform: translate(0px, 0px);\"><div style=\"position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;\"><div style=\"position: absolute; left: 0px; top: 0px; z-index: 0;\"><div style=\"position: absolute; z-index: 1; transform: matrix(1, 0, 0, 1, -98, -200);\"><div style=\"position: absolute; left: 0px; top: 256px; width: 256px; height: 256px;\"><div style=\"width: 256px; height: 256px;\"></div></div><div style=\"position: absolute; left: -256px; top: 256px; width: 256px; height: 256px;\"><div style=\"width: 256px; height: 256px;\"></div></div><div style=\"position: absolute; left: -256px; top: 0px; width: 256px; height: 256px;\"><div style=\"width: 256px; height: 256px;\"></div></div><div style=\"position: absolute; left: 0px; top: 0px; width: 256px; height: 256px;\"><div style=\"width: 256px; height: 256px;\"></div></div></div></div></div><div style=\"position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;\"></div><div style=\"position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;\"></div><div style=\"position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;\"><div style=\"position: absolute; left: 0px; top: 0px; z-index: -1;\"><div style=\"position: absolute; z-index: 1; transform: matrix(1, 0, 0, 1, -98, -200);\"><div style=\"width: 256px; height: 256px; overflow: hidden; position: absolute; left: 0px; top: 256px;\"></div><div style=\"width: 256px; height: 256px; overflow: hidden; position: absolute; left: -256px; top: 256px;\"></div><div style=\"width: 256px; height: 256px; overflow: hidden; position: absolute; left: -256px; top: 0px;\"></div><div style=\"width: 256px; height: 256px; overflow: hidden; position: absolute; left: 0px; top: 0px;\"></div></div></div><div style=\"width: 27px; height: 43px; overflow: hidden; position: absolute; left: -14px; top: -43px; z-index: 0; animation-duration: 500ms; animation-iteration-count: 1; animation-name: _gm3604;\"><img alt=\"\" src=\"http://maps.gstatic.com/mapfiles/api-3/images/spotlight-poi2.png\" draggable=\"false\" style=\"position: absolute; left: 0px; top: 0px; width: 27px; height: 43px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div></div><div style=\"position: absolute; left: 0px; top: 0px; z-index: 0;\"><div style=\"position: absolute; z-index: 1; transform: matrix(1, 0, 0, 1, -98, -200);\"><div style=\"position: absolute; left: 0px; top: 256px; width: 256px; height: 256px;\"><img draggable=\"false\" alt=\"\" src=\"http://maps.google.com/maps/vt?pb=!1m5!1m4!1i7!2i20!3i46!4i256!2m3!1e0!2sm!3i416115521!3m9!2sen!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0!23i1301875&amp;token=51187\" style=\"width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div><div style=\"position: absolute; left: -256px; top: 256px; width: 256px; height: 256px;\"><img draggable=\"false\" alt=\"\" src=\"http://maps.google.com/maps/vt?pb=!1m5!1m4!1i7!2i19!3i46!4i256!2m3!1e0!2sm!3i416115521!3m9!2sen!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0!23i1301875&amp;token=76622\" style=\"width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div><div style=\"position: absolute; left: -256px; top: 0px; width: 256px; height: 256px;\"><img draggable=\"false\" alt=\"\" src=\"http://maps.google.com/maps/vt?pb=!1m5!1m4!1i7!2i19!3i45!4i256!2m3!1e0!2sm!3i416115521!3m9!2sen!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0!23i1301875&amp;token=116343\" style=\"width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div><div style=\"position: absolute; left: 0px; top: 0px; width: 256px; height: 256px;\"><img draggable=\"false\" alt=\"\" src=\"http://maps.google.com/maps/vt?pb=!1m5!1m4!1i7!2i20!3i45!4i256!2m3!1e0!2sm!3i416115521!3m9!2sen!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0!23i1301875&amp;token=90908\" style=\"width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div></div></div></div><div class=\"gm-style-pbc\" style=\"z-index: 2; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; opacity: 0;\"><p class=\"gm-style-pbt\"></p></div><div style=\"z-index: 3; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; touch-action: pan-x pan-y;\"><div style=\"z-index: 1; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px;\"></div><div style=\"z-index: 4; position: absolute; left: 50%; top: 50%; transform: translate(0px, 0px);\"><div style=\"position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;\"></div><div style=\"position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;\"></div><div style=\"position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;\"><div class=\"gmnoprint\" style=\"width: 27px; height: 43px; overflow: hidden; position: absolute; opacity: 0.01; left: -14px; top: -43px; z-index: 0;\"><img alt=\"\" src=\"http://maps.gstatic.com/mapfiles/api-3/images/spotlight-poi2.png\" draggable=\"false\" usemap=\"#gmimap0\" style=\"position: absolute; left: 0px; top: 0px; width: 27px; height: 43px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"><map name=\"gmimap0\" id=\"gmimap0\"><area href=\"javascript:void(0)\" log=\"miw\" coords=\"13.5,0,4,3.75,0,13.5,13.5,43,27,13.5,23,3.75\" shape=\"poly\" title=\"\" style=\"cursor: pointer; touch-action: none;\"></map></div></div><div style=\"position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;\"></div></div></div></div><iframe frameborder=\"0\" src=\"about:blank\" style=\"z-index: -1; position: absolute; width: 100%; height: 100%; top: 0px; left: 0px; border: none;\"></iframe><div style=\"margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;\"><a target=\"_blank\" href=\"https://maps.google.com/maps?ll=45.523062,-122.676482&amp;z=7&amp;t=m&amp;hl=en&amp;gl=US&amp;mapclient=apiv3\" title=\"Click to see this area on Google Maps\" style=\"position: static; overflow: visible; float: none; display: inline;\"><div style=\"width: 66px; height: 26px; cursor: pointer;\"><img alt=\"\" src=\"http://maps.gstatic.com/mapfiles/api-3/images/google4.png\" draggable=\"false\" style=\"position: absolute; left: 0px; top: 0px; width: 66px; height: 26px; user-select: none; border: 0px; padding: 0px; margin: 0px;\"></div></a></div><div style=\"background-color: white; padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 238px; height: 148px; position: absolute; left: 5px; top: 56px;\"><div style=\"padding: 0px 0px 10px; font-size: 16px;\">Map Data</div><div style=\"font-size: 13px;\">Map data ©2018 Google</div><div style=\"width: 13px; height: 13px; overflow: hidden; position: absolute; opacity: 0.7; right: 12px; top: 12px; z-index: 10000; cursor: pointer;\"><img alt=\"\" src=\"http://maps.gstatic.com/mapfiles/api-3/images/mapcnt6.png\" draggable=\"false\" style=\"position: absolute; left: -2px; top: -336px; width: 59px; height: 492px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div></div><div class=\"gmnoprint\" style=\"z-index: 1000001; position: absolute; right: 71px; bottom: 0px; width: 121px;\"><div draggable=\"false\" class=\"gm-style-cc\" style=\"user-select: none; height: 14px; line-height: 14px;\"><div style=\"opacity: 0.7; width: 100%; height: 100%; position: absolute;\"><div style=\"width: 1px;\"></div><div style=\"background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;\"></div></div><div style=\"position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;\"><a style=\"text-decoration: none; cursor: pointer; display: none;\">Map Data</a><span>Map data ©2018 Google</span></div></div></div><div class=\"gmnoscreen\" style=\"position: absolute; right: 0px; bottom: 0px;\"><div style=\"font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);\">Map data ©2018 Google</div></div><div class=\"gmnoprint gm-style-cc\" draggable=\"false\" style=\"z-index: 1000001; user-select: none; height: 14px; line-height: 14px; position: absolute; right: 0px; bottom: 0px;\"><div style=\"opacity: 0.7; width: 100%; height: 100%; position: absolute;\"><div style=\"width: 1px;\"></div><div style=\"background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;\"></div></div><div style=\"position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;\"><a href=\"https://www.google.com/intl/en_US/help/terms_maps.html\" target=\"_blank\" style=\"text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);\">Terms of Use</a></div></div><button draggable=\"false\" title=\"Toggle fullscreen view\" aria-label=\"Toggle fullscreen view\" type=\"button\" style=\"background: none; border: 0px; margin: 10px 14px; padding: 0px; position: absolute; cursor: pointer; user-select: none; width: 25px; height: 25px; overflow: hidden; top: 0px; right: 0px;\"><img alt=\"\" src=\"http://maps.gstatic.com/mapfiles/api-3/images/sv9.png\" draggable=\"false\" class=\"gm-fullscreen-control\" style=\"position: absolute; left: -52px; top: -86px; width: 164px; height: 175px; user-select: none; border: 0px; padding: 0px; margin: 0px;\"></button><div draggable=\"false\" class=\"gm-style-cc\" style=\"user-select: none; height: 14px; line-height: 14px; display: none; position: absolute; right: 0px; bottom: 0px;\"><div style=\"opacity: 0.7; width: 100%; height: 100%; position: absolute;\"><div style=\"width: 1px;\"></div><div style=\"background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;\"></div></div><div style=\"position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;\"><a target=\"_blank\" rel=\"noopener\" title=\"Report errors in the road map or imagery to Google\" href=\"https://www.google.com/maps/@45.523062,-122.676482,7z/data=!10m1!1e1!12b1?source=apiv3&amp;rapsrc=apiv3\" style=\"font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;\">Report a map error</a></div></div><div class=\"gmnoprint gm-bundled-control gm-bundled-control-on-bottom\" draggable=\"false\" controlwidth=\"28\" controlheight=\"93\" style=\"margin: 10px; user-select: none; position: absolute; bottom: 107px; right: 28px;\"><div class=\"gmnoprint\" controlwidth=\"28\" controlheight=\"55\" style=\"position: absolute; left: 0px; top: 38px;\"><div draggable=\"false\" style=\"user-select: none; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px; cursor: pointer; background-color: rgb(255, 255, 255); width: 28px; height: 55px;\"><button draggable=\"false\" title=\"Zoom in\" aria-label=\"Zoom in\" type=\"button\" style=\"background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; width: 28px; height: 27px; top: 0px; left: 0px;\"><div style=\"overflow: hidden; position: absolute; width: 15px; height: 15px; left: 7px; top: 6px;\"><img alt=\"\" src=\"http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl.png\" draggable=\"false\" style=\"position: absolute; left: 0px; top: 0px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none; width: 120px; height: 54px;\"></div></button><div style=\"position: relative; overflow: hidden; width: 67%; height: 1px; left: 16%; background-color: rgb(230, 230, 230); top: 0px;\"></div><button draggable=\"false\" title=\"Zoom out\" aria-label=\"Zoom out\" type=\"button\" style=\"background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; width: 28px; height: 27px; top: 0px; left: 0px;\"><div style=\"overflow: hidden; position: absolute; width: 15px; height: 15px; left: 7px; top: 6px;\"><img alt=\"\" src=\"http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl.png\" draggable=\"false\" style=\"position: absolute; left: 0px; top: -15px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none; width: 120px; height: 54px;\"></div></button></div></div><div class=\"gm-svpc\" controlwidth=\"28\" controlheight=\"28\" style=\"background-color: rgb(255, 255, 255); box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px; width: 28px; height: 28px; cursor: url(&quot;http://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;), default; touch-action: none; position: absolute; left: 0px; top: 0px;\"><div style=\"position: absolute; left: 1px; top: 1px;\"></div><div style=\"position: absolute; left: 1px; top: 1px;\"><div aria-label=\"Street View Pegman Control\" style=\"width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px;\"><img alt=\"\" src=\"http://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png\" draggable=\"false\" style=\"position: absolute; left: -147px; top: -26px; width: 215px; height: 835px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div><div aria-label=\"Pegman is on top of the Map\" style=\"width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;\"><img alt=\"\" src=\"http://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png\" draggable=\"false\" style=\"position: absolute; left: -147px; top: -52px; width: 215px; height: 835px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div><div aria-label=\"Street View Pegman Control\" style=\"width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;\"><img alt=\"\" src=\"http://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png\" draggable=\"false\" style=\"position: absolute; left: -147px; top: -78px; width: 215px; height: 835px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div></div></div><div class=\"gmnoprint\" controlwidth=\"28\" controlheight=\"0\" style=\"display: none; position: absolute;\"><div title=\"Rotate map 90 degrees\" style=\"width: 28px; height: 28px; overflow: hidden; position: absolute; background-color: rgb(255, 255, 255); box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px; cursor: pointer; display: none;\"><img alt=\"\" src=\"http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl4.png\" draggable=\"false\" style=\"position: absolute; left: -141px; top: 6px; width: 170px; height: 54px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div><div class=\"gm-tilt\" style=\"width: 28px; height: 28px; overflow: hidden; position: absolute; background-color: rgb(255, 255, 255); box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px; top: 0px; cursor: pointer;\"><img alt=\"\" src=\"http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl4.png\" draggable=\"false\" style=\"position: absolute; left: -141px; top: -13px; width: 170px; height: 54px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;\"></div></div></div><div class=\"gmnoprint\" style=\"margin: 10px; z-index: 0; position: absolute; cursor: pointer; left: 0px; top: 0px;\"><div class=\"gm-style-mtc\" style=\"float: left; position: relative;\"><div role=\"button\" tabindex=\"0\" title=\"Show street map\" aria-label=\"Show street map\" aria-pressed=\"true\" draggable=\"false\" style=\"direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 8px; border-bottom-left-radius: 2px; border-top-left-radius: 2px; background-clip: padding-box; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; min-width: 21px; font-weight: 500;\">Map</div><div style=\"background-color: white; z-index: -1; padding: 2px; border-bottom-left-radius: 2px; border-bottom-right-radius: 2px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; position: absolute; left: 0px; top: 29px; text-align: left; display: none;\"><div draggable=\"false\" title=\"Show street map with terrain\" style=\"color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 6px 8px 6px 6px; direction: ltr; text-align: left; white-space: nowrap;\"><span role=\"checkbox\" style=\"box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; background-color: rgb(255, 255, 255); border: 1px solid rgb(198, 198, 198); border-radius: 1px; width: 13px; height: 13px; vertical-align: middle;\"><div style=\"position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;\"><img alt=\"\" src=\"http://maps.gstatic.com/mapfiles/mv/imgs8.png\" draggable=\"false\" style=\"position: absolute; left: -52px; top: -44px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none; width: 68px; height: 67px;\"></div></span><label style=\"vertical-align: middle; cursor: pointer;\">Terrain</label></div></div></div><div class=\"gm-style-mtc\" style=\"float: left; position: relative;\"><div role=\"button\" tabindex=\"0\" title=\"Show satellite imagery\" aria-label=\"Show satellite imagery\" aria-pressed=\"false\" draggable=\"false\" style=\"direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(86, 86, 86); font-family: Roboto, Arial, sans-serif; user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 8px; border-bottom-right-radius: 2px; border-top-right-radius: 2px; background-clip: padding-box; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; min-width: 39px; border-left: 0px;\">Satellite</div><div style=\"background-color: white; z-index: -1; padding: 2px; border-bottom-left-radius: 2px; border-bottom-right-radius: 2px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; position: absolute; right: 0px; top: 29px; text-align: left; display: none;\"><div draggable=\"false\" title=\"Show imagery with street names\" style=\"color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 6px 8px 6px 6px; direction: ltr; text-align: left; white-space: nowrap;\"><span role=\"checkbox\" style=\"box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; background-color: rgb(255, 255, 255); border: 1px solid rgb(198, 198, 198); border-radius: 1px; width: 13px; height: 13px; vertical-align: middle;\"><div style=\"position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden;\"><img alt=\"\" src=\"http://maps.gstatic.com/mapfiles/mv/imgs8.png\" draggable=\"false\" style=\"position: absolute; left: -52px; top: -44px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none; width: 68px; height: 67px;\"></div></span><label style=\"vertical-align: middle; cursor: pointer;\">Labels</label></div></div></div></div></div></div></div>\r\n        </div>\r\n            <script>\r\n                jQuery(function($){\r\n                    $(\'.otw-wrapper select\').selectric();\r\n                });\r\n            </script>\r\n        \r\n        <div id=\"otw_widget-2\" class=\"otw-shadow-dark-style widget-container open-table-widget\"><h3 class=\"otw-widget-title widget-title\">Make your reservation</h3>\r\n        <div class=\"otw-shadow-dark\">\r\n\r\n            \r\n<div class=\"otw-widget-form-wrap\">\r\n		<form method=\"get\" class=\"otw-widget-form\" action=\"//www.opentable.com/restaurant-search.aspx\" target=\"_blank\">\r\n		<div class=\"otw-wrapper\">\r\n\r\n			<div class=\"otw-date-li otw-input-wrap\">\r\n									<label for=\"date-otw_widget-2\">Date</label>\r\n								<input id=\"date-otw_widget-2\" name=\"startDate\" class=\"otw-reservation-date\" type=\"text\" value=\"\" autocomplete=\"off\" readonly=\"readonly\">\r\n			</div>\r\n			<div class=\"otw-time-wrap otw-input-wrap\">\r\n									<label for=\"time-otw_widget-2\">Time</label>\r\n								<select id=\"time-otw_widget-2\" name=\"ResTime\" class=\"otw-reservation-time otw-selectpicker\">\r\n					<option value=\"8:00am\">8:00 am</option>\r\n<option value=\"8:30am\">8:30 am</option>\r\n<option value=\"9:00am\">9:00 am</option>\r\n<option value=\"9:30am\">9:30 am</option>\r\n<option value=\"10:00am\">10:00 am</option>\r\n<option value=\"10:30am\">10:30 am</option>\r\n<option value=\"11:00am\">11:00 am</option>\r\n<option value=\"11:30am\">11:30 am</option>\r\n<option value=\"12:00pm\">12:00 pm</option>\r\n<option value=\"12:30pm\">12:30 pm</option>\r\n<option value=\"1:00pm\">1:00 pm</option>\r\n<option value=\"1:30pm\">1:30 pm</option>\r\n<option value=\"2:00pm\">2:00 pm</option>\r\n<option value=\"2:30pm\">2:30 pm</option>\r\n<option value=\"3:00pm\">3:00 pm</option>\r\n<option value=\"3:30pm\">3:30 pm</option>\r\n<option value=\"4:00pm\">4:00 pm</option>\r\n<option value=\"4:30pm\">4:30 pm</option>\r\n<option value=\"5:00pm\">5:00 pm</option>\r\n<option value=\"5:30pm\">5:30 pm</option>\r\n<option value=\"6:00pm\">6:00 pm</option>\r\n<option value=\"6:30pm\">6:30 pm</option>\r\n<option value=\"7:00pm\" selected=\"selected\">7:00 pm</option>\r\n<option value=\"7:30pm\">7:30 pm</option>\r\n<option value=\"8:00pm\">8:00 pm</option>\r\n<option value=\"8:30pm\">8:30 pm</option>\r\n<option value=\"9:00pm\">9:00 pm</option>\r\n<option value=\"9:30pm\">9:30 pm</option>\r\n<option value=\"10:00pm\">10:00 pm</option>\r\n<option value=\"10:30pm\">10:30 pm</option>\r\n<option value=\"11:00pm\">11:00 pm</option>\r\n<option value=\"11:30pm\">11:30 pm</option>\r\n				</select>\r\n\r\n			</div>\r\n			<div class=\"otw-party-size-wrap otw-input-wrap\">\r\n									<label for=\"party-otw_widget-2\">Party Size</label>\r\n								<select id=\"party-otw_widget-2\" name=\"partySize\" class=\"otw-party-size-select selectpicker\">\r\n					<option value=\"1\">1 Person</option>\r\n					<option value=\"2\" selected=\"selected\">2 People</option>\r\n					<option value=\"3\">3 People</option>\r\n					<option value=\"4\">4 People</option>\r\n					<option value=\"5\">5 People</option>\r\n					<option value=\"6\">6 People</option>\r\n					<option value=\"7\">7 People</option>\r\n					<option value=\"8\">8 People</option>\r\n					<option value=\"9\">9 People</option>\r\n					<option value=\"10\">10 People</option>\r\n				</select>\r\n\r\n			</div>\r\n\r\n			<div class=\"otw-button-wrap\">\r\n				<input type=\"submit\" class=\"otw-submit-btn\" value=\"Find a Table\">\r\n			</div>\r\n			<input type=\"hidden\" name=\"RestaurantID\" class=\"RestaurantID\" value=\"\">\r\n			<input type=\"hidden\" name=\"rid\" class=\"rid\" value=\"\">\r\n			<input type=\"hidden\" name=\"GeoID\" class=\"GeoID\" value=\"15\">\r\n			<input type=\"hidden\" name=\"txtDateFormat\" class=\"txtDateFormat\" value=\"MM/dd/yyyy\">\r\n			<input type=\"hidden\" name=\"RestaurantReferralID\" class=\"RestaurantReferralID\" value=\"\">\r\n		</div>\r\n	</form>\r\n		<div class=\"powered-by-open-table\"><span class=\"powered-by-text\">Powered By:</span></div>\r\n</div><!-- /.otw-widget-form-wrap -->\r\n        </div>\r\n        </div>	    </div>', 'Reservations', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2018-03-28 17:48:23', '2018-03-28 17:48:23', '', 197, 'http://wordpressfromscratch/197-revision-v1/', 0, 'revision', '', 0),
(213, 1, '2018-03-28 17:52:30', '2018-03-28 17:52:30', ' 	       \n            <script>\n                jQuery(function($){\n                    $(\'.otw-wrapper select\').selectric();\n                });\n            </script>\n        \n        <div id=\"otw_widget-2\" class=\"otw-shadow-light-style widget-container open-table-widget col-sm-6\" style=\"margin:auto;display:block;\">\n<h3 class=\"otw-widget-title widget-title\">Make your reservation</h3>\n        <div class=\"otw-shadow-dark\">\n\n            \n<div class=\"otw-widget-form-wrap\">\n		<form method=\"get\" class=\"otw-widget-form\" action=\"//www.opentable.com/restaurant-search.aspx\" target=\"_blank\">\n		<div class=\"otw-wrapper\">\n\n			<div class=\"otw-date-li otw-input-wrap\">\n									<label for=\"date-otw_widget-2\">Date</label>\n								<input id=\"date-otw_widget-2\" name=\"startDate\" class=\"otw-reservation-date\" type=\"text\" value=\"\" autocomplete=\"off\" readonly=\"readonly\">\n			</div>\n			<div class=\"otw-time-wrap otw-input-wrap\">\n									<label for=\"time-otw_widget-2\">Time</label>\n								<select id=\"time-otw_widget-2\" name=\"ResTime\" class=\"otw-reservation-time otw-selectpicker\">\n					<option value=\"8:00am\">8:00 am</option>\n<option value=\"8:30am\">8:30 am</option>\n<option value=\"9:00am\">9:00 am</option>\n<option value=\"9:30am\">9:30 am</option>\n<option value=\"10:00am\">10:00 am</option>\n<option value=\"10:30am\">10:30 am</option>\n<option value=\"11:00am\">11:00 am</option>\n<option value=\"11:30am\">11:30 am</option>\n<option value=\"12:00pm\">12:00 pm</option>\n<option value=\"12:30pm\">12:30 pm</option>\n<option value=\"1:00pm\">1:00 pm</option>\n<option value=\"1:30pm\">1:30 pm</option>\n<option value=\"2:00pm\">2:00 pm</option>\n<option value=\"2:30pm\">2:30 pm</option>\n<option value=\"3:00pm\">3:00 pm</option>\n<option value=\"3:30pm\">3:30 pm</option>\n<option value=\"4:00pm\">4:00 pm</option>\n<option value=\"4:30pm\">4:30 pm</option>\n<option value=\"5:00pm\">5:00 pm</option>\n<option value=\"5:30pm\">5:30 pm</option>\n<option value=\"6:00pm\">6:00 pm</option>\n<option value=\"6:30pm\">6:30 pm</option>\n<option value=\"7:00pm\" selected=\"selected\">7:00 pm</option>\n<option value=\"7:30pm\">7:30 pm</option>\n<option value=\"8:00pm\">8:00 pm</option>\n<option value=\"8:30pm\">8:30 pm</option>\n<option value=\"9:00pm\">9:00 pm</option>\n<option value=\"9:30pm\">9:30 pm</option>\n<option value=\"10:00pm\">10:00 pm</option>\n<option value=\"10:30pm\">10:30 pm</option>\n<option value=\"11:00pm\">11:00 pm</option>\n<option value=\"11:30pm\">11:30 pm</option>\n				</select>\n\n			</div>\n			<div class=\"otw-party-size-wrap otw-input-wrap\">\n									<label for=\"party-otw_widget-2\">Party Size</label>\n								<select id=\"party-otw_widget-2\" name=\"partySize\" class=\"otw-party-size-select selectpicker\">\n					<option value=\"1\">1 Person</option>\n					<option value=\"2\" selected=\"selected\">2 People</option>\n					<option value=\"3\">3 People</option>\n					<option value=\"4\">4 People</option>\n					<option value=\"5\">5 People</option>\n					<option value=\"6\">6 People</option>\n					<option value=\"7\">7 People</option>\n					<option value=\"8\">8 People</option>\n					<option value=\"9\">9 People</option>\n					<option value=\"10\">10 People</option>\n				</select>\n\n			</div>\n\n			<div class=\"otw-button-wrap\">\n				<input type=\"submit\" class=\"otw-submit-btn\" value=\"Find a Table\">\n			</div>\n			<input type=\"hidden\" name=\"RestaurantID\" class=\"RestaurantID\" value=\"\">\n			<input type=\"hidden\" name=\"rid\" class=\"rid\" value=\"\">\n			<input type=\"hidden\" name=\"GeoID\" class=\"GeoID\" value=\"15\">\n			<input type=\"hidden\" name=\"txtDateFormat\" class=\"txtDateFormat\" value=\"MM/dd/yyyy\">\n			<input type=\"hidden\" name=\"RestaurantReferralID\" class=\"RestaurantReferralID\" value=\"\">\n		</div>\n	</form>\n		<div class=\"powered-by-open-table\"><span class=\"powered-by-text\">Powered By:</span></div>\n</div><!-- /.otw-widget-form-wrap -->\n        ', 'Reservations', '', 'inherit', 'closed', 'closed', '', '197-autosave-v1', '', '', '2018-03-28 17:52:30', '2018-03-28 17:52:30', '', 197, 'http://wordpressfromscratch/197-autosave-v1/', 0, 'revision', '', 0),
(214, 1, '2018-03-28 17:49:30', '2018-03-28 17:49:30', ' 	       \r\n            <script>\r\n                jQuery(function($){\r\n                    $(\'.otw-wrapper select\').selectric();\r\n                });\r\n            </script>\r\n        \r\n        <div id=\"otw_widget-2\" class=\"otw-shadow-dark-style widget-container open-table-widget\"><h3 class=\"otw-widget-title widget-title\">Make your reservation</h3>\r\n        <div class=\"otw-shadow-dark\">\r\n\r\n            \r\n<div class=\"otw-widget-form-wrap\">\r\n		<form method=\"get\" class=\"otw-widget-form\" action=\"//www.opentable.com/restaurant-search.aspx\" target=\"_blank\">\r\n		<div class=\"otw-wrapper\">\r\n\r\n			<div class=\"otw-date-li otw-input-wrap\">\r\n									<label for=\"date-otw_widget-2\">Date</label>\r\n								<input id=\"date-otw_widget-2\" name=\"startDate\" class=\"otw-reservation-date\" type=\"text\" value=\"\" autocomplete=\"off\" readonly=\"readonly\">\r\n			</div>\r\n			<div class=\"otw-time-wrap otw-input-wrap\">\r\n									<label for=\"time-otw_widget-2\">Time</label>\r\n								<select id=\"time-otw_widget-2\" name=\"ResTime\" class=\"otw-reservation-time otw-selectpicker\">\r\n					<option value=\"8:00am\">8:00 am</option>\r\n<option value=\"8:30am\">8:30 am</option>\r\n<option value=\"9:00am\">9:00 am</option>\r\n<option value=\"9:30am\">9:30 am</option>\r\n<option value=\"10:00am\">10:00 am</option>\r\n<option value=\"10:30am\">10:30 am</option>\r\n<option value=\"11:00am\">11:00 am</option>\r\n<option value=\"11:30am\">11:30 am</option>\r\n<option value=\"12:00pm\">12:00 pm</option>\r\n<option value=\"12:30pm\">12:30 pm</option>\r\n<option value=\"1:00pm\">1:00 pm</option>\r\n<option value=\"1:30pm\">1:30 pm</option>\r\n<option value=\"2:00pm\">2:00 pm</option>\r\n<option value=\"2:30pm\">2:30 pm</option>\r\n<option value=\"3:00pm\">3:00 pm</option>\r\n<option value=\"3:30pm\">3:30 pm</option>\r\n<option value=\"4:00pm\">4:00 pm</option>\r\n<option value=\"4:30pm\">4:30 pm</option>\r\n<option value=\"5:00pm\">5:00 pm</option>\r\n<option value=\"5:30pm\">5:30 pm</option>\r\n<option value=\"6:00pm\">6:00 pm</option>\r\n<option value=\"6:30pm\">6:30 pm</option>\r\n<option value=\"7:00pm\" selected=\"selected\">7:00 pm</option>\r\n<option value=\"7:30pm\">7:30 pm</option>\r\n<option value=\"8:00pm\">8:00 pm</option>\r\n<option value=\"8:30pm\">8:30 pm</option>\r\n<option value=\"9:00pm\">9:00 pm</option>\r\n<option value=\"9:30pm\">9:30 pm</option>\r\n<option value=\"10:00pm\">10:00 pm</option>\r\n<option value=\"10:30pm\">10:30 pm</option>\r\n<option value=\"11:00pm\">11:00 pm</option>\r\n<option value=\"11:30pm\">11:30 pm</option>\r\n				</select>\r\n\r\n			</div>\r\n			<div class=\"otw-party-size-wrap otw-input-wrap\">\r\n									<label for=\"party-otw_widget-2\">Party Size</label>\r\n								<select id=\"party-otw_widget-2\" name=\"partySize\" class=\"otw-party-size-select selectpicker\">\r\n					<option value=\"1\">1 Person</option>\r\n					<option value=\"2\" selected=\"selected\">2 People</option>\r\n					<option value=\"3\">3 People</option>\r\n					<option value=\"4\">4 People</option>\r\n					<option value=\"5\">5 People</option>\r\n					<option value=\"6\">6 People</option>\r\n					<option value=\"7\">7 People</option>\r\n					<option value=\"8\">8 People</option>\r\n					<option value=\"9\">9 People</option>\r\n					<option value=\"10\">10 People</option>\r\n				</select>\r\n\r\n			</div>\r\n\r\n			<div class=\"otw-button-wrap\">\r\n				<input type=\"submit\" class=\"otw-submit-btn\" value=\"Find a Table\">\r\n			</div>\r\n			<input type=\"hidden\" name=\"RestaurantID\" class=\"RestaurantID\" value=\"\">\r\n			<input type=\"hidden\" name=\"rid\" class=\"rid\" value=\"\">\r\n			<input type=\"hidden\" name=\"GeoID\" class=\"GeoID\" value=\"15\">\r\n			<input type=\"hidden\" name=\"txtDateFormat\" class=\"txtDateFormat\" value=\"MM/dd/yyyy\">\r\n			<input type=\"hidden\" name=\"RestaurantReferralID\" class=\"RestaurantReferralID\" value=\"\">\r\n		</div>\r\n	</form>\r\n		<div class=\"powered-by-open-table\"><span class=\"powered-by-text\">Powered By:</span></div>\r\n</div><!-- /.otw-widget-form-wrap -->\r\n        ', 'Reservations', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2018-03-28 17:49:30', '2018-03-28 17:49:30', '', 197, 'http://wordpressfromscratch/197-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(215, 1, '2018-03-28 17:50:30', '2018-03-28 17:50:30', ' 	       \r\n            <script>\r\n                jQuery(function($){\r\n                    $(\'.otw-wrapper select\').selectric();\r\n                });\r\n            </script>\r\n        \r\n        <div id=\"otw_widget-2\" class=\"otw-shadow-light-style widget-container open-table-widget col-sm-12\"><h3 class=\"otw-widget-title widget-title\">Make your reservation</h3>\r\n        <div class=\"otw-shadow-dark\">\r\n\r\n            \r\n<div class=\"otw-widget-form-wrap\">\r\n		<form method=\"get\" class=\"otw-widget-form\" action=\"//www.opentable.com/restaurant-search.aspx\" target=\"_blank\">\r\n		<div class=\"otw-wrapper\">\r\n\r\n			<div class=\"otw-date-li otw-input-wrap\">\r\n									<label for=\"date-otw_widget-2\">Date</label>\r\n								<input id=\"date-otw_widget-2\" name=\"startDate\" class=\"otw-reservation-date\" type=\"text\" value=\"\" autocomplete=\"off\" readonly=\"readonly\">\r\n			</div>\r\n			<div class=\"otw-time-wrap otw-input-wrap\">\r\n									<label for=\"time-otw_widget-2\">Time</label>\r\n								<select id=\"time-otw_widget-2\" name=\"ResTime\" class=\"otw-reservation-time otw-selectpicker\">\r\n					<option value=\"8:00am\">8:00 am</option>\r\n<option value=\"8:30am\">8:30 am</option>\r\n<option value=\"9:00am\">9:00 am</option>\r\n<option value=\"9:30am\">9:30 am</option>\r\n<option value=\"10:00am\">10:00 am</option>\r\n<option value=\"10:30am\">10:30 am</option>\r\n<option value=\"11:00am\">11:00 am</option>\r\n<option value=\"11:30am\">11:30 am</option>\r\n<option value=\"12:00pm\">12:00 pm</option>\r\n<option value=\"12:30pm\">12:30 pm</option>\r\n<option value=\"1:00pm\">1:00 pm</option>\r\n<option value=\"1:30pm\">1:30 pm</option>\r\n<option value=\"2:00pm\">2:00 pm</option>\r\n<option value=\"2:30pm\">2:30 pm</option>\r\n<option value=\"3:00pm\">3:00 pm</option>\r\n<option value=\"3:30pm\">3:30 pm</option>\r\n<option value=\"4:00pm\">4:00 pm</option>\r\n<option value=\"4:30pm\">4:30 pm</option>\r\n<option value=\"5:00pm\">5:00 pm</option>\r\n<option value=\"5:30pm\">5:30 pm</option>\r\n<option value=\"6:00pm\">6:00 pm</option>\r\n<option value=\"6:30pm\">6:30 pm</option>\r\n<option value=\"7:00pm\" selected=\"selected\">7:00 pm</option>\r\n<option value=\"7:30pm\">7:30 pm</option>\r\n<option value=\"8:00pm\">8:00 pm</option>\r\n<option value=\"8:30pm\">8:30 pm</option>\r\n<option value=\"9:00pm\">9:00 pm</option>\r\n<option value=\"9:30pm\">9:30 pm</option>\r\n<option value=\"10:00pm\">10:00 pm</option>\r\n<option value=\"10:30pm\">10:30 pm</option>\r\n<option value=\"11:00pm\">11:00 pm</option>\r\n<option value=\"11:30pm\">11:30 pm</option>\r\n				</select>\r\n\r\n			</div>\r\n			<div class=\"otw-party-size-wrap otw-input-wrap\">\r\n									<label for=\"party-otw_widget-2\">Party Size</label>\r\n								<select id=\"party-otw_widget-2\" name=\"partySize\" class=\"otw-party-size-select selectpicker\">\r\n					<option value=\"1\">1 Person</option>\r\n					<option value=\"2\" selected=\"selected\">2 People</option>\r\n					<option value=\"3\">3 People</option>\r\n					<option value=\"4\">4 People</option>\r\n					<option value=\"5\">5 People</option>\r\n					<option value=\"6\">6 People</option>\r\n					<option value=\"7\">7 People</option>\r\n					<option value=\"8\">8 People</option>\r\n					<option value=\"9\">9 People</option>\r\n					<option value=\"10\">10 People</option>\r\n				</select>\r\n\r\n			</div>\r\n\r\n			<div class=\"otw-button-wrap\">\r\n				<input type=\"submit\" class=\"otw-submit-btn\" value=\"Find a Table\">\r\n			</div>\r\n			<input type=\"hidden\" name=\"RestaurantID\" class=\"RestaurantID\" value=\"\">\r\n			<input type=\"hidden\" name=\"rid\" class=\"rid\" value=\"\">\r\n			<input type=\"hidden\" name=\"GeoID\" class=\"GeoID\" value=\"15\">\r\n			<input type=\"hidden\" name=\"txtDateFormat\" class=\"txtDateFormat\" value=\"MM/dd/yyyy\">\r\n			<input type=\"hidden\" name=\"RestaurantReferralID\" class=\"RestaurantReferralID\" value=\"\">\r\n		</div>\r\n	</form>\r\n		<div class=\"powered-by-open-table\"><span class=\"powered-by-text\">Powered By:</span></div>\r\n</div><!-- /.otw-widget-form-wrap -->\r\n        ', 'Reservations', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2018-03-28 17:50:30', '2018-03-28 17:50:30', '', 197, 'http://wordpressfromscratch/197-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2018-03-28 17:50:45', '2018-03-28 17:50:45', ' 	       \r\n            <script>\r\n                jQuery(function($){\r\n                    $(\'.otw-wrapper select\').selectric();\r\n                });\r\n            </script>\r\n        \r\n        <div id=\"otw_widget-2\" class=\"otw-shadow-light-style widget-container open-table-widget col-sm-6\"><h3 class=\"otw-widget-title widget-title\">Make your reservation</h3>\r\n        <div class=\"otw-shadow-dark\">\r\n\r\n            \r\n<div class=\"otw-widget-form-wrap\">\r\n		<form method=\"get\" class=\"otw-widget-form\" action=\"//www.opentable.com/restaurant-search.aspx\" target=\"_blank\">\r\n		<div class=\"otw-wrapper\">\r\n\r\n			<div class=\"otw-date-li otw-input-wrap\">\r\n									<label for=\"date-otw_widget-2\">Date</label>\r\n								<input id=\"date-otw_widget-2\" name=\"startDate\" class=\"otw-reservation-date\" type=\"text\" value=\"\" autocomplete=\"off\" readonly=\"readonly\">\r\n			</div>\r\n			<div class=\"otw-time-wrap otw-input-wrap\">\r\n									<label for=\"time-otw_widget-2\">Time</label>\r\n								<select id=\"time-otw_widget-2\" name=\"ResTime\" class=\"otw-reservation-time otw-selectpicker\">\r\n					<option value=\"8:00am\">8:00 am</option>\r\n<option value=\"8:30am\">8:30 am</option>\r\n<option value=\"9:00am\">9:00 am</option>\r\n<option value=\"9:30am\">9:30 am</option>\r\n<option value=\"10:00am\">10:00 am</option>\r\n<option value=\"10:30am\">10:30 am</option>\r\n<option value=\"11:00am\">11:00 am</option>\r\n<option value=\"11:30am\">11:30 am</option>\r\n<option value=\"12:00pm\">12:00 pm</option>\r\n<option value=\"12:30pm\">12:30 pm</option>\r\n<option value=\"1:00pm\">1:00 pm</option>\r\n<option value=\"1:30pm\">1:30 pm</option>\r\n<option value=\"2:00pm\">2:00 pm</option>\r\n<option value=\"2:30pm\">2:30 pm</option>\r\n<option value=\"3:00pm\">3:00 pm</option>\r\n<option value=\"3:30pm\">3:30 pm</option>\r\n<option value=\"4:00pm\">4:00 pm</option>\r\n<option value=\"4:30pm\">4:30 pm</option>\r\n<option value=\"5:00pm\">5:00 pm</option>\r\n<option value=\"5:30pm\">5:30 pm</option>\r\n<option value=\"6:00pm\">6:00 pm</option>\r\n<option value=\"6:30pm\">6:30 pm</option>\r\n<option value=\"7:00pm\" selected=\"selected\">7:00 pm</option>\r\n<option value=\"7:30pm\">7:30 pm</option>\r\n<option value=\"8:00pm\">8:00 pm</option>\r\n<option value=\"8:30pm\">8:30 pm</option>\r\n<option value=\"9:00pm\">9:00 pm</option>\r\n<option value=\"9:30pm\">9:30 pm</option>\r\n<option value=\"10:00pm\">10:00 pm</option>\r\n<option value=\"10:30pm\">10:30 pm</option>\r\n<option value=\"11:00pm\">11:00 pm</option>\r\n<option value=\"11:30pm\">11:30 pm</option>\r\n				</select>\r\n\r\n			</div>\r\n			<div class=\"otw-party-size-wrap otw-input-wrap\">\r\n									<label for=\"party-otw_widget-2\">Party Size</label>\r\n								<select id=\"party-otw_widget-2\" name=\"partySize\" class=\"otw-party-size-select selectpicker\">\r\n					<option value=\"1\">1 Person</option>\r\n					<option value=\"2\" selected=\"selected\">2 People</option>\r\n					<option value=\"3\">3 People</option>\r\n					<option value=\"4\">4 People</option>\r\n					<option value=\"5\">5 People</option>\r\n					<option value=\"6\">6 People</option>\r\n					<option value=\"7\">7 People</option>\r\n					<option value=\"8\">8 People</option>\r\n					<option value=\"9\">9 People</option>\r\n					<option value=\"10\">10 People</option>\r\n				</select>\r\n\r\n			</div>\r\n\r\n			<div class=\"otw-button-wrap\">\r\n				<input type=\"submit\" class=\"otw-submit-btn\" value=\"Find a Table\">\r\n			</div>\r\n			<input type=\"hidden\" name=\"RestaurantID\" class=\"RestaurantID\" value=\"\">\r\n			<input type=\"hidden\" name=\"rid\" class=\"rid\" value=\"\">\r\n			<input type=\"hidden\" name=\"GeoID\" class=\"GeoID\" value=\"15\">\r\n			<input type=\"hidden\" name=\"txtDateFormat\" class=\"txtDateFormat\" value=\"MM/dd/yyyy\">\r\n			<input type=\"hidden\" name=\"RestaurantReferralID\" class=\"RestaurantReferralID\" value=\"\">\r\n		</div>\r\n	</form>\r\n		<div class=\"powered-by-open-table\"><span class=\"powered-by-text\">Powered By:</span></div>\r\n</div><!-- /.otw-widget-form-wrap -->\r\n        ', 'Reservations', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2018-03-28 17:50:45', '2018-03-28 17:50:45', '', 197, 'http://wordpressfromscratch/197-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2018-03-28 17:51:22', '2018-03-28 17:51:22', ' 	       \r\n            <script>\r\n                jQuery(function($){\r\n                    $(\'.otw-wrapper select\').selectric();\r\n                });\r\n            </script>\r\n        \r\n        <div id=\"otw_widget-2\" class=\"otw-shadow-light-style widget-container open-table-widget col-sm-6\" style=\"margin:auto;display:block;\"><h3 class=\"otw-widget-title widget-title\">Make your reservation</h3>\r\n        <div class=\"otw-shadow-dark\">\r\n\r\n            \r\n<div class=\"otw-widget-form-wrap\">\r\n		<form method=\"get\" class=\"otw-widget-form\" action=\"//www.opentable.com/restaurant-search.aspx\" target=\"_blank\">\r\n		<div class=\"otw-wrapper\">\r\n\r\n			<div class=\"otw-date-li otw-input-wrap\">\r\n									<label for=\"date-otw_widget-2\">Date</label>\r\n								<input id=\"date-otw_widget-2\" name=\"startDate\" class=\"otw-reservation-date\" type=\"text\" value=\"\" autocomplete=\"off\" readonly=\"readonly\">\r\n			</div>\r\n			<div class=\"otw-time-wrap otw-input-wrap\">\r\n									<label for=\"time-otw_widget-2\">Time</label>\r\n								<select id=\"time-otw_widget-2\" name=\"ResTime\" class=\"otw-reservation-time otw-selectpicker\">\r\n					<option value=\"8:00am\">8:00 am</option>\r\n<option value=\"8:30am\">8:30 am</option>\r\n<option value=\"9:00am\">9:00 am</option>\r\n<option value=\"9:30am\">9:30 am</option>\r\n<option value=\"10:00am\">10:00 am</option>\r\n<option value=\"10:30am\">10:30 am</option>\r\n<option value=\"11:00am\">11:00 am</option>\r\n<option value=\"11:30am\">11:30 am</option>\r\n<option value=\"12:00pm\">12:00 pm</option>\r\n<option value=\"12:30pm\">12:30 pm</option>\r\n<option value=\"1:00pm\">1:00 pm</option>\r\n<option value=\"1:30pm\">1:30 pm</option>\r\n<option value=\"2:00pm\">2:00 pm</option>\r\n<option value=\"2:30pm\">2:30 pm</option>\r\n<option value=\"3:00pm\">3:00 pm</option>\r\n<option value=\"3:30pm\">3:30 pm</option>\r\n<option value=\"4:00pm\">4:00 pm</option>\r\n<option value=\"4:30pm\">4:30 pm</option>\r\n<option value=\"5:00pm\">5:00 pm</option>\r\n<option value=\"5:30pm\">5:30 pm</option>\r\n<option value=\"6:00pm\">6:00 pm</option>\r\n<option value=\"6:30pm\">6:30 pm</option>\r\n<option value=\"7:00pm\" selected=\"selected\">7:00 pm</option>\r\n<option value=\"7:30pm\">7:30 pm</option>\r\n<option value=\"8:00pm\">8:00 pm</option>\r\n<option value=\"8:30pm\">8:30 pm</option>\r\n<option value=\"9:00pm\">9:00 pm</option>\r\n<option value=\"9:30pm\">9:30 pm</option>\r\n<option value=\"10:00pm\">10:00 pm</option>\r\n<option value=\"10:30pm\">10:30 pm</option>\r\n<option value=\"11:00pm\">11:00 pm</option>\r\n<option value=\"11:30pm\">11:30 pm</option>\r\n				</select>\r\n\r\n			</div>\r\n			<div class=\"otw-party-size-wrap otw-input-wrap\">\r\n									<label for=\"party-otw_widget-2\">Party Size</label>\r\n								<select id=\"party-otw_widget-2\" name=\"partySize\" class=\"otw-party-size-select selectpicker\">\r\n					<option value=\"1\">1 Person</option>\r\n					<option value=\"2\" selected=\"selected\">2 People</option>\r\n					<option value=\"3\">3 People</option>\r\n					<option value=\"4\">4 People</option>\r\n					<option value=\"5\">5 People</option>\r\n					<option value=\"6\">6 People</option>\r\n					<option value=\"7\">7 People</option>\r\n					<option value=\"8\">8 People</option>\r\n					<option value=\"9\">9 People</option>\r\n					<option value=\"10\">10 People</option>\r\n				</select>\r\n\r\n			</div>\r\n\r\n			<div class=\"otw-button-wrap\">\r\n				<input type=\"submit\" class=\"otw-submit-btn\" value=\"Find a Table\">\r\n			</div>\r\n			<input type=\"hidden\" name=\"RestaurantID\" class=\"RestaurantID\" value=\"\">\r\n			<input type=\"hidden\" name=\"rid\" class=\"rid\" value=\"\">\r\n			<input type=\"hidden\" name=\"GeoID\" class=\"GeoID\" value=\"15\">\r\n			<input type=\"hidden\" name=\"txtDateFormat\" class=\"txtDateFormat\" value=\"MM/dd/yyyy\">\r\n			<input type=\"hidden\" name=\"RestaurantReferralID\" class=\"RestaurantReferralID\" value=\"\">\r\n		</div>\r\n	</form>\r\n		<div class=\"powered-by-open-table\"><span class=\"powered-by-text\">Powered By:</span></div>\r\n</div><!-- /.otw-widget-form-wrap -->\r\n        ', 'Reservations', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2018-03-28 17:51:22', '2018-03-28 17:51:22', '', 197, 'http://wordpressfromscratch/197-revision-v1/', 0, 'revision', '', 0),
(218, 1, '2018-03-28 17:52:38', '2018-03-28 17:52:38', ' 	       \r\n            <script>\r\n                jQuery(function($){\r\n                    $(\'.otw-wrapper select\').selectric();\r\n                });\r\n            </script>\r\n        \r\n        <div id=\"otw_widget-2\" class=\"otw-shadow-light-style widget-container open-table-widget col-sm-6 col-center\">\r\n<h3 class=\"otw-widget-title widget-title\">Make your reservation</h3>\r\n        <div class=\"otw-shadow-dark\">\r\n\r\n            \r\n<div class=\"otw-widget-form-wrap\">\r\n		<form method=\"get\" class=\"otw-widget-form\" action=\"//www.opentable.com/restaurant-search.aspx\" target=\"_blank\">\r\n		<div class=\"otw-wrapper\">\r\n\r\n			<div class=\"otw-date-li otw-input-wrap\">\r\n									<label for=\"date-otw_widget-2\">Date</label>\r\n								<input id=\"date-otw_widget-2\" name=\"startDate\" class=\"otw-reservation-date\" type=\"text\" value=\"\" autocomplete=\"off\" readonly=\"readonly\">\r\n			</div>\r\n			<div class=\"otw-time-wrap otw-input-wrap\">\r\n									<label for=\"time-otw_widget-2\">Time</label>\r\n								<select id=\"time-otw_widget-2\" name=\"ResTime\" class=\"otw-reservation-time otw-selectpicker\">\r\n					<option value=\"8:00am\">8:00 am</option>\r\n<option value=\"8:30am\">8:30 am</option>\r\n<option value=\"9:00am\">9:00 am</option>\r\n<option value=\"9:30am\">9:30 am</option>\r\n<option value=\"10:00am\">10:00 am</option>\r\n<option value=\"10:30am\">10:30 am</option>\r\n<option value=\"11:00am\">11:00 am</option>\r\n<option value=\"11:30am\">11:30 am</option>\r\n<option value=\"12:00pm\">12:00 pm</option>\r\n<option value=\"12:30pm\">12:30 pm</option>\r\n<option value=\"1:00pm\">1:00 pm</option>\r\n<option value=\"1:30pm\">1:30 pm</option>\r\n<option value=\"2:00pm\">2:00 pm</option>\r\n<option value=\"2:30pm\">2:30 pm</option>\r\n<option value=\"3:00pm\">3:00 pm</option>\r\n<option value=\"3:30pm\">3:30 pm</option>\r\n<option value=\"4:00pm\">4:00 pm</option>\r\n<option value=\"4:30pm\">4:30 pm</option>\r\n<option value=\"5:00pm\">5:00 pm</option>\r\n<option value=\"5:30pm\">5:30 pm</option>\r\n<option value=\"6:00pm\">6:00 pm</option>\r\n<option value=\"6:30pm\">6:30 pm</option>\r\n<option value=\"7:00pm\" selected=\"selected\">7:00 pm</option>\r\n<option value=\"7:30pm\">7:30 pm</option>\r\n<option value=\"8:00pm\">8:00 pm</option>\r\n<option value=\"8:30pm\">8:30 pm</option>\r\n<option value=\"9:00pm\">9:00 pm</option>\r\n<option value=\"9:30pm\">9:30 pm</option>\r\n<option value=\"10:00pm\">10:00 pm</option>\r\n<option value=\"10:30pm\">10:30 pm</option>\r\n<option value=\"11:00pm\">11:00 pm</option>\r\n<option value=\"11:30pm\">11:30 pm</option>\r\n				</select>\r\n\r\n			</div>\r\n			<div class=\"otw-party-size-wrap otw-input-wrap\">\r\n									<label for=\"party-otw_widget-2\">Party Size</label>\r\n								<select id=\"party-otw_widget-2\" name=\"partySize\" class=\"otw-party-size-select selectpicker\">\r\n					<option value=\"1\">1 Person</option>\r\n					<option value=\"2\" selected=\"selected\">2 People</option>\r\n					<option value=\"3\">3 People</option>\r\n					<option value=\"4\">4 People</option>\r\n					<option value=\"5\">5 People</option>\r\n					<option value=\"6\">6 People</option>\r\n					<option value=\"7\">7 People</option>\r\n					<option value=\"8\">8 People</option>\r\n					<option value=\"9\">9 People</option>\r\n					<option value=\"10\">10 People</option>\r\n				</select>\r\n\r\n			</div>\r\n\r\n			<div class=\"otw-button-wrap\">\r\n				<input type=\"submit\" class=\"otw-submit-btn\" value=\"Find a Table\">\r\n			</div>\r\n			<input type=\"hidden\" name=\"RestaurantID\" class=\"RestaurantID\" value=\"\">\r\n			<input type=\"hidden\" name=\"rid\" class=\"rid\" value=\"\">\r\n			<input type=\"hidden\" name=\"GeoID\" class=\"GeoID\" value=\"15\">\r\n			<input type=\"hidden\" name=\"txtDateFormat\" class=\"txtDateFormat\" value=\"MM/dd/yyyy\">\r\n			<input type=\"hidden\" name=\"RestaurantReferralID\" class=\"RestaurantReferralID\" value=\"\">\r\n		</div>\r\n	</form>\r\n		<div class=\"powered-by-open-table\"><span class=\"powered-by-text\">Powered By:</span></div>\r\n</div><!-- /.otw-widget-form-wrap -->\r\n        ', 'Reservations', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2018-03-28 17:52:38', '2018-03-28 17:52:38', '', 197, 'http://wordpressfromscratch/197-revision-v1/', 0, 'revision', '', 0),
(219, 1, '2018-03-28 18:13:51', '2018-03-28 18:13:51', 'Breakfast is served all day.', 'Breakfast Menu', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2018-03-28 18:13:51', '2018-03-28 18:13:51', '', 156, 'http://wordpressfromscratch/156-revision-v1/', 0, 'revision', '', 0),
(220, 1, '2018-03-28 18:29:34', '2018-03-28 18:29:34', '<strong>Breakfast is served all day.</strong>', 'Breakfast Menu', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2018-03-28 18:29:34', '2018-03-28 18:29:34', '', 156, 'http://wordpressfromscratch/156-revision-v1/', 0, 'revision', '', 0),
(221, 1, '2018-03-28 18:30:08', '2018-03-28 18:30:08', '<strong>Brunch is served on Saturday and Sunday from 10AM-2PM.</strong>', 'Brunch Menu', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2018-03-28 18:30:08', '2018-03-28 18:30:08', '', 163, 'http://wordpressfromscratch/163-revision-v1/', 0, 'revision', '', 0),
(222, 1, '2018-03-28 18:31:16', '2018-03-28 18:31:16', '<strong>Our lunch menu is served between 12-2:30PM.</strong>', 'Lunch Menu', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-28 18:31:16', '2018-03-28 18:31:16', '', 9, 'http://wordpressfromscratch/9-revision-v1/', 0, 'revision', '', 0),
(223, 1, '2018-03-28 18:31:33', '2018-03-28 18:31:33', '<strong>Our dinner menu is served between 5-10PM. </strong>', 'Dinner Menu', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-03-28 18:31:33', '2018-03-28 18:31:33', '', 89, 'http://wordpressfromscratch/89-revision-v1/', 0, 'revision', '', 0),
(224, 1, '2018-03-29 21:05:09', '0000-00-00 00:00:00', '<p>\n<strong>Help us improve WPForms</strong><br />\nWe&#8217;re celebrating WPForms&#8217; 2nd birthday. Since the launch of WPForms two years ago, it is now being used by over 900,000 websites. As we plan for the next three years, we need your feedback &#8211; it&#8217;ll take less than 90 seconds.\n</p>\n<p><a href=\"https://wpforms.com/wpforms-nps-survey-2018/?utm_source=wpdashboard&#038;utm_medium=amnotification&#038;utm_campaign=npssurvey\" target=\"_blank\" class=\"button button-primary\">Share your feedback and help improve WPForms &raquo;</a> <a href=\"https://wpforms.com/wpforms-turns-2-years-old-whats-new-whats-coming-next/?utm_source=wpdashboard&#038;utm_medium=amnotification&#038;utm_campaign=npssurvey\" class=\"button button-secondary\" target=\"_blank\">Read our Annual Recap to See What&#8217;s New in WPForms</a></p>\n<p>Thanks as always for your continuous support of WPForms!<br />\nSyed Balkhi<br />\nFounder of WPForms<br />\nP.S. there&#8217;s a limited time 30% off coupon at the end of the survey :)</p>\n', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-29 21:05:09', '0000-00-00 00:00:00', '', 0, 'http://wordpressfromscratch/?post_type=amn_wpforms-lite&p=224', 0, 'amn_wpforms-lite', '', 0),
(225, 1, '2018-03-29 21:05:38', '2018-03-29 21:05:38', '', 'bacon-bowl-bread-660282', '', 'inherit', 'open', 'closed', '', 'bacon-bowl-bread-660282', '', '', '2018-03-29 21:05:38', '2018-03-29 21:05:38', '', 9, 'http://wordpressfromscratch/wp-content/uploads/2018/03/bacon-bowl-bread-660282.jpg', 0, 'attachment', 'image/jpeg', 0),
(226, 1, '2018-03-29 21:18:39', '2018-03-29 21:18:39', '', 'black-background-boiled-egg-boiled-eggs-824635', '', 'inherit', 'open', 'closed', '', 'black-background-boiled-egg-boiled-eggs-824635', '', '', '2018-03-29 21:18:39', '2018-03-29 21:18:39', '', 156, 'http://wordpressfromscratch/wp-content/uploads/2018/03/black-background-boiled-egg-boiled-eggs-824635.jpg', 0, 'attachment', 'image/jpeg', 0),
(227, 1, '2018-03-29 21:19:13', '2018-03-29 21:19:13', '', 'bar-bottle-brunch-755329', '', 'inherit', 'open', 'closed', '', 'bar-bottle-brunch-755329', '', '', '2018-03-29 21:19:13', '2018-03-29 21:19:13', '', 163, 'http://wordpressfromscratch/wp-content/uploads/2018/03/bar-bottle-brunch-755329.jpg', 0, 'attachment', 'image/jpeg', 0),
(228, 1, '2018-03-29 21:19:55', '2018-03-29 21:19:55', '', 'basil-dinner-dish-64208', '', 'inherit', 'open', 'closed', '', 'basil-dinner-dish-64208', '', '', '2018-03-29 21:19:55', '2018-03-29 21:19:55', '', 89, 'http://wordpressfromscratch/wp-content/uploads/2018/03/basil-dinner-dish-64208.jpg', 0, 'attachment', 'image/jpeg', 0),
(229, 1, '2018-03-30 01:07:29', '2018-03-30 01:07:29', 'for your belly', 'oatmeal', '', 'trash', 'closed', 'closed', '', 'oatmeal__trashed', '', '', '2018-03-30 01:24:25', '2018-03-30 01:24:25', '', 0, 'http://wordpressfromscratch/?post_type=fdm-menu&#038;p=229', 0, 'fdm-menu', '', 0),
(230, 1, '2018-03-30 01:07:29', '2018-03-30 01:07:29', 'for your belly', 'oatmeal', '', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2018-03-30 01:07:29', '2018-03-30 01:07:29', '', 229, 'http://wordpressfromscratch/229-revision-v1/', 0, 'revision', '', 0),
(231, 1, '2018-03-30 01:10:06', '2018-03-30 01:10:06', 'noon', 'Lunch', '', 'publish', 'closed', 'closed', '', 'oatmeal-2', '', '', '2018-03-30 01:23:40', '2018-03-30 01:23:40', '', 0, 'http://wordpressfromscratch/?post_type=fdm-menu&#038;p=231', 0, 'fdm-menu', '', 0),
(232, 1, '2018-03-30 01:10:06', '2018-03-30 01:10:06', 'adfadf;ljafkj;lkdfj;asdf', 'oatmeal', '', 'inherit', 'closed', 'closed', '', '231-revision-v1', '', '', '2018-03-30 01:10:06', '2018-03-30 01:10:06', '', 231, 'http://wordpressfromscratch/231-revision-v1/', 0, 'revision', '', 0),
(233, 1, '2018-03-30 01:23:40', '2018-03-30 01:23:40', 'noon', 'Lunch', '', 'inherit', 'closed', 'closed', '', '231-revision-v1', '', '', '2018-03-30 01:23:40', '2018-03-30 01:23:40', '', 231, 'http://wordpressfromscratch/231-revision-v1/', 0, 'revision', '', 0),
(234, 1, '2018-03-30 01:24:01', '2018-03-30 01:24:01', 'sandwich', 'pbj', '', 'publish', 'closed', 'closed', '', 'pbj', '', '', '2018-03-30 01:24:01', '2018-03-30 01:24:01', '', 0, 'http://wordpressfromscratch/?post_type=fdm-menu-item&#038;p=234', 0, 'fdm-menu-item', '', 0),
(235, 1, '2018-03-30 01:24:01', '2018-03-30 01:24:01', 'sandwich', 'pbj', '', 'inherit', 'closed', 'closed', '', '234-revision-v1', '', '', '2018-03-30 01:24:01', '2018-03-30 01:24:01', '', 234, 'http://wordpressfromscratch/234-revision-v1/', 0, 'revision', '', 0),
(236, 1, '2018-03-30 01:28:55', '2018-03-30 01:28:55', '[fdm-menu id=231]', 'test', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-03-30 01:28:55', '2018-03-30 01:28:55', '', 0, 'http://wordpressfromscratch/?page_id=236', 0, 'page', '', 0),
(237, 1, '2018-03-30 01:28:42', '2018-03-30 01:28:42', '[fdm-menu id=231]', 'test', '', 'inherit', 'closed', 'closed', '', '236-revision-v1', '', '', '2018-03-30 01:28:42', '2018-03-30 01:28:42', '', 236, 'http://wordpressfromscratch/236-revision-v1/', 0, 'revision', '', 0),
(238, 1, '2018-03-30 01:41:08', '2018-03-30 01:41:08', '', 'Caesar Salad', '', 'publish', 'open', 'closed', '', 'caesar-salad', '', '', '2018-03-30 01:41:08', '2018-03-30 01:41:08', '', 0, 'http://wordpressfromscratch/?post_type=dinnermenuitem&#038;p=238', 0, 'dinnermenuitem', '', 0),
(239, 1, '2018-03-30 01:41:08', '2018-03-30 01:41:08', '', 'Caesar Salad', '', 'inherit', 'closed', 'closed', '', '238-revision-v1', '', '', '2018-03-30 01:41:08', '2018-03-30 01:41:08', '', 238, 'http://wordpressfromscratch/238-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Other', 'other', 0),
(2, 'primary', 'primary', 0),
(3, '59', '59', 0),
(4, 'Food Menus', 'food-menus', 0),
(5, 'Bacon Lovers', 'bacon-lovers', 0),
(10, 'All Things Bacon', 'bacon-lover', 0),
(12, 'Pizza Lover', 'pizza-lover', 0),
(13, 'Bacon Lover', 'bacon-lover', 0),
(14, 'Bacon Lover', 'bacon-lover', 0),
(15, 'Bison', 'bison', 0),
(16, 'Lunch', 'lunch', 0),
(17, 'Lunch Specials', 'lunch-specials', 0),
(18, 'Dinner Specials', 'dinner-specials', 0),
(19, 'All Specials', 'all-specials', 0),
(20, 'Cheese', 'cheese', 0),
(21, 'Burgers', 'burgers', 0),
(22, 'All Food Types', 'all-food-types', 0),
(23, 'pause', 'pause', 0),
(24, '100% Grassfed', '100-grassfed', 0),
(25, 'For the Fish Lovers', 'fish-lover', 0),
(26, 'Drink Menus', 'drink-menus', 0),
(30, 'Social Media', 'social-media', 0),
(31, 'Seafood', 'seafood', 0),
(32, 'Eggs', 'eggs', 0),
(33, 'Eggless', 'eggless', 0),
(34, 'apps', 'apps', 0),
(35, 'Salads', 'salads', 0),
(36, 'Appetizers', 'appetizers', 0),
(37, 'Starters', 'starters', 0),
(38, 'Main', 'main', 0),
(39, 'Entrees', 'entrees', 0),
(40, 'Desserts', 'desserts', 0),
(41, 'Soups', 'soups', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 12, 0),
(5, 1, 0),
(26, 12, 0),
(26, 20, 0),
(28, 15, 0),
(28, 21, 0),
(28, 24, 0),
(36, 2, 0),
(37, 2, 0),
(38, 2, 0),
(46, 1, 0),
(46, 5, 0),
(46, 10, 0),
(46, 13, 0),
(46, 14, 0),
(61, 3, 0),
(64, 3, 0),
(65, 3, 0),
(76, 4, 0),
(84, 2, 0),
(87, 24, 0),
(87, 38, 0),
(87, 39, 0),
(91, 4, 0),
(93, 2, 0),
(96, 2, 0),
(101, 10, 0),
(101, 13, 0),
(101, 16, 0),
(101, 20, 0),
(101, 21, 0),
(101, 24, 0),
(106, 17, 0),
(106, 25, 0),
(108, 18, 0),
(108, 19, 0),
(108, 25, 0),
(108, 38, 0),
(108, 39, 0),
(115, 2, 0),
(126, 26, 0),
(129, 2, 0),
(158, 2, 0),
(159, 4, 0),
(164, 4, 0),
(168, 26, 0),
(169, 2, 0),
(170, 2, 0),
(181, 4, 0),
(182, 26, 0),
(183, 26, 0),
(184, 2, 0),
(185, 2, 0),
(186, 2, 0),
(188, 30, 0),
(190, 30, 0),
(191, 30, 0),
(192, 30, 0),
(200, 2, 0),
(201, 2, 0),
(205, 25, 0),
(205, 31, 0),
(207, 32, 0),
(209, 33, 0),
(238, 35, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 16),
(3, 3, 'ml-slider', '', 0, 2),
(4, 4, 'nav_menu', '', 0, 5),
(5, 5, 'menus-categories', '', 0, 1),
(10, 10, 'category', 'Bacon is a type of salt-cured pork. Bacon is prepared from several different cuts of meat, typically from the pork belly or from back cuts, which have less fat than the belly.', 0, 2),
(12, 12, 'category', 'Why do people love pizza? Here\'s some reasons.', 0, 2),
(13, 13, 'menu_category', '', 0, 2),
(14, 14, 'lunch-menu', '', 0, 1),
(15, 15, 'post_tag', 'Bison are large, even-toed ungulates in the genus Bison within the subfamily Bovinae. Two extant and six extinct species are recognised. Of the six extinct species, five went extinct in the Quaternary extinction event. Bison palaeosinensis evolved in the Early Pleistocene in South Asia, and was the evolutionary ancestor of B.', 0, 1),
(16, 16, 'topics', '', 0, 1),
(17, 17, 'specials', '', 19, 1),
(18, 18, 'specials', '', 19, 1),
(19, 19, 'specials', '', 0, 1),
(20, 20, 'food_types', '', 22, 2),
(21, 21, 'food_types', '', 22, 2),
(22, 22, 'food_types', '', 0, 0),
(23, 23, 'topic', '', 0, 0),
(24, 24, 'category', 'All beef cattle are raised on pasture (grass) after they\'re weaned. Eventually, though, conventionally raised cattle are sent from pasture to feedlot, where they\'re \"finished\" on a concentrated grain diet (usually corn) in an effort to fatten them up quickly for market. (A small amount of grain-fed beef is raised on conventional farms rather than intensive feedlots.)\r\n\r\n100% grass-fed cattle, on the other hand, spend their entire lives eating only grass; they are not fed any grains. In the spring, summer and fall, cows graze on pasture, and in the winter, they eat hay (dried grasses) and haylage (fermented grasses).\r\n', 0, 3),
(25, 25, 'category', '', 0, 3),
(26, 26, 'nav_menu', '', 0, 4),
(30, 30, 'nav_menu', '', 0, 4),
(31, 31, 'food_types', '', 0, 1),
(32, 32, 'food_types', '', 22, 1),
(33, 33, 'category', '', 0, 1),
(34, 34, 'fdm-menu-section', '', 0, 0),
(35, 35, 'menu_sections', '', 0, 1),
(36, 36, 'menu_sections', '', 0, 0),
(37, 37, 'menu_sections', '', 0, 0),
(38, 38, 'menu_sections', '', 0, 2),
(39, 39, 'menu_sections', '', 0, 2),
(40, 40, 'menu_sections', '', 0, 0),
(41, 41, 'menu_sections', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Tresa'),
(2, 1, 'first_name', 'Tresa'),
(3, 1, 'last_name', ''),
(4, 1, 'description', 'Web developer in Vancouver, BC.'),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"4d3a0aee76e3684f6087e216c6df0fbdd5f42fbc09d9c1645857d82dd58dcb80\";a:4:{s:10:\"expiration\";i:1522530307;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1522357507;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '144'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(20, 1, 'wp_user-settings-time', '1522259299'),
(21, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:27:\"add-post-type-lunchmenuitem\";i:1;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '4'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:\"revisionsdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(26, 2, 'nickname', 'content manager'),
(27, 2, 'first_name', 'David'),
(28, 2, 'last_name', 'Bowie'),
(29, 2, 'description', ''),
(30, 2, 'rich_editing', 'true'),
(31, 2, 'syntax_highlighting', 'true'),
(32, 2, 'comment_shortcuts', 'false'),
(33, 2, 'admin_color', 'blue'),
(34, 2, 'use_ssl', '0'),
(35, 2, 'show_admin_bar_front', 'true'),
(36, 2, 'locale', ''),
(37, 2, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(38, 2, 'wp_user_level', '7'),
(39, 2, 'dismissed_wp_pointers', ''),
(40, 2, 'session_tokens', 'a:1:{s:64:\"c53d407e1daaac8e93c57495756f5e8ef71875b7ecabb154ca1217085d5ca596\";a:4:{s:10:\"expiration\";i:1522009154;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1521836354;}}'),
(41, 2, 'wp_dashboard_quick_press_last_post_id', '145'),
(42, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(43, 1, 'closedpostboxes_breakfastmenuitem', 'a:5:{i:0;s:11:\"categorydiv\";i:1;s:16:\"tagsdiv-post_tag\";i:2;s:11:\"specialsdiv\";i:3;s:13:\"food_typesdiv\";i:4;s:13:\"pageparentdiv\";}'),
(44, 1, 'metaboxhidden_breakfastmenuitem', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(45, 1, 'closedpostboxes_lunchmenuitem', 'a:0:{}'),
(46, 1, 'metaboxhidden_lunchmenuitem', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'random', '$P$BTxy30ADGqtrifQvWELNSsZSw2lDVH1', 'random', 'tresa@tresahorney.com', '', '2018-03-07 19:33:41', '', 0, 'Tresa'),
(2, 'content manager', '$P$BOXiKEzqa3pFFMxXUudunsheVUmaKD1', 'content-manager', 'tresa.e@gmail.com', '', '2018-03-23 20:18:15', '1521836295:$P$Bd8R3rjOaoGd.NjJfQuzRyKuep7JKE0', 0, 'David Bowie');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza`
--

DROP TABLE IF EXISTS `wp_wpgmza`;
CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `other_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza`
--

INSERT INTO `wp_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `other_data`) VALUES
(2, 1, 'Portland, OR, USA', '', '', '', '', '45.5230622', '-122.67648150000002', '2', '', '0', '', 1, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_categories`
--

DROP TABLE IF EXISTS `wp_wpgmza_categories`;
CREATE TABLE `wp_wpgmza_categories` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_category_maps`
--

DROP TABLE IF EXISTS `wp_wpgmza_category_maps`;
CREATE TABLE `wp_wpgmza_category_maps` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_maps`
--

DROP TABLE IF EXISTS `wp_wpgmza_maps`;
CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza_maps`
--

INSERT INTO `wp_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'My first map', '300', '300', '45.523062', '-122.676482', '45.5230622,-122.67648150000002', 7, '0', 1, 2, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', 'px', 'px', 1, 0, 1, 2, 0, '', 'a:12:{s:21:\"store_locator_enabled\";i:2;s:22:\"store_locator_distance\";i:2;s:28:\"store_locator_default_radius\";s:2:\"10\";s:31:\"store_locator_not_found_message\";s:52:\"No results found in this location. Please try again.\";s:20:\"store_locator_bounce\";i:1;s:26:\"store_locator_query_string\";s:14:\"ZIP / Address:\";s:29:\"store_locator_default_address\";s:0:\"\";s:29:\"wpgmza_store_locator_restrict\";s:0:\"\";s:12:\"map_max_zoom\";s:1:\"1\";s:15:\"transport_layer\";i:2;s:17:\"wpgmza_theme_data\";s:0:\"\";s:30:\"wpgmza_show_points_of_interest\";i:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polygon`
--

DROP TABLE IF EXISTS `wp_wpgmza_polygon`;
CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polylines`
--

DROP TABLE IF EXISTS `wp_wpgmza_polylines`;
CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=893;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=650;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;