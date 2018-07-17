<?php
/**
 * @package Hotmart_WP
 * @version 0.3.3
 */
/*
Plugin Name: Hotmart WP
Plugin URI: https://wordpress.org/plugins/hotmart-wp/
Description: Hotmart's official plugin
Version: 0.3.3
Author: Hotmart
Author URI: https://www.hotmart.com/en/
Text Domain: hotmart-wp
Domain Path: /languages/
*/

define('HOTMART_PLUGIN_PATH', plugin_dir_url(__FILE__));
define('HOTMART_PLUGIN_VERSION', '0.3.3');

define('HOTMART_LAUNCHER_TRACKING_TYPE', 'hotmart_wp');

define('HOTMART_ADS_TABLE', 'hotmart_ads');

// Include Launcher Script
add_action('wp_enqueue_scripts', 'hotmart_enqueue_launcher_script');
add_action('admin_enqueue_scripts', 'hotmart_enqueue_launcher_script');
function hotmart_enqueue_launcher_script() {
	wp_register_script('launcher', HOTMART_PLUGIN_PATH . 'assets/scripts/vendor/launcher.js', false, '20161201', true);
	wp_enqueue_script('launcher');
}

// Activation Hook
register_activation_hook(__FILE__, 'hotmart_install');
function hotmart_install() {
	global $wpdb;

	$table = $wpdb->prefix . HOTMART_ADS_TABLE;
	$charset_collate = $wpdb->get_charset_collate();

	$sql = '
		CREATE TABLE IF NOT EXISTS ' . $table .' (
			id INT(11) NOT NULL AUTO_INCREMENT,
			title VARCHAR(255),
			image VARCHAR(255),
			hotlink VARCHAR(255),
			enabled BOOLEAN NOT NULL DEFAULT 1,
			views INT(11) NOT NULL DEFAULT 0,
			clicks INT(11) NOT NULL DEFAULT 0,
			PRIMARY KEY (id)
		) ' . $charset_collate;

	require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
	dbDelta($sql);
}

// Deactivation Hook
register_deactivation_hook(__FILE__, 'hotmart_disable');
function hotmart_disable() {
	global $wpdb;
	$table = $wpdb->prefix . HOTMART_ADS_TABLE;
	$sql = 'UPDATE ' . $table . ' SET enabled = %d';
	
	$wpdb->query($wpdb->prepare($sql, 0));
}

// Uninstall Hook
register_uninstall_hook(__FILE__, 'hotmart_uninstall');
function hotmart_uninstall() {
	global $wpdb;

	$table = $wpdb->prefix . HOTMART_ADS_TABLE;

	$sql = 'DROP TABLE IF EXISTS ' . $table;
	$wpdb->query($sql);

	// Drop permission denied
	if($wpdb->last_error !== '') {
		$sql = 'DELETE FROM ' . $table;
		$wpdb->query($sql);

		$sql = 'ALTER TABLE ' . $table .' AUTO_INCREMENT = 1';
		$wpdb->query($sql);
	}
}

// Admin
require_once('admin/admin.php');

// Hotmart Ad
require_once('public/hotmart-ad.php');

// Translations
function hotmart_load_plugin_textdomain() {
    load_plugin_textdomain('hotmart-wp', FALSE, basename(dirname(__FILE__)) . '/languages/');
}
add_action('plugins_loaded', 'hotmart_load_plugin_textdomain');
?>