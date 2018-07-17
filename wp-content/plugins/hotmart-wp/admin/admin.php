<?php
	// Scripts, Styles and Media
	add_action('admin_enqueue_scripts', 'hotmart_enqueue_admin_scripts_styles_media');
	function hotmart_enqueue_admin_scripts_styles_media() {
	    // ## Scripts ##
	    wp_register_script('hotmart-wp-admin', HOTMART_PLUGIN_PATH . 'assets/scripts/admin.min.js', 'jquery', time(), true);
	    wp_localize_script('hotmart-wp-admin', 'hotmart_wp', array('tracking_type' => HOTMART_LAUNCHER_TRACKING_TYPE, 'version' => HOTMART_PLUGIN_VERSION, 'ajaxurl' => admin_url('admin-ajax.php'), 'choose_image_text' => __("Choose image", 'hotmart-wp'), 'save_text' => __("Save", 'hotmart-wp'), 'alert_message' => __("CAUTION: The whole history of this ad will be lost! Are you sure you want to DELETE?", 'hotmart-wp')));
	    wp_enqueue_script('hotmart-wp-admin');

	    // ## Styles ##
	    wp_enqueue_style('hotmart-wp-admin', HOTMART_PLUGIN_PATH . 'assets/styles/admin.css', '', time());

	    // ## Media ##
	    wp_enqueue_media();
	}

	// Menu item
	add_action('admin_menu', 'hotmart_options_menu');
	function hotmart_options_menu() {
		$hotmart_icon = 'data:image/svg+xml;base64,PHN2ZyBpZD0iTGF5ZXJfMSIgZGF0YS1uYW1lPSJMYXllciAxIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA0Ni4yMyA2My44NSI+PGRlZnM+PHN0eWxlPi5jbHMtMXtmaWxsOiNlNDI7fTwvc3R5bGU+PC9kZWZzPjx0aXRsZT5IT1RNQVJUX2ljb25lPC90aXRsZT48cGF0aCBjbGFzcz0iY2xzLTEiIGQ9Ik01MDguMDksMzExLjgxYy4yOS01LjY5LTEuNjYtMTUtNi40NC0yMi42Mi0uMTItLjItLjM0LS4xMi0uMy4wOS4zMiwxLjE2LjQsMy4yNi0xLjQ1LDMuMTQtMy4yNy0uMjIuMTEtNy4yMi03LjA3LTEyLjA3bC0uMjMuMThjLjQ5Ljk0Ljc4LDMuODYtLjM1LDQuODUtLjkxLjgtMi41OS41OC00LjItMmExMS4zNiwxMS4zNiwwLDAsMSwuMTYtMTJjLjE0LS4yMiwwLS4zMS0uMjEtLjI2LTkuODcsMy4yNi0xMS44NSwxNC45LTE0LDE5LjE1LS4zNS43MS0uNjYsMS4wOC0xLjI2LDEtMS44LS4xMi0uNS00LC4xMi01LjI5bC0uMjUtLjE3YTQxLjksNDEuOSwwLDAsMC0xMC41NiwyMi43NmMwLS4yLS4wOC43LS4xNCwxLjM1aDBjMCwuMjYsMCwuNTEtLjA1Ljc3czAsLjYxLDAsLjkzYTIzLjEsMjMuMSwwLDAsMCw0Ni4yLjM4Wk00ODQuOSwzMjIuNTRhMTAuNzIsMTAuNzIsMCwxLDEsMTAuOC0xMC42MiwxMC43MiwxMC43MiwwLDAsMS0xMC44LDEwLjYyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNDYxLjg5IC0yNzEuMDgpIi8+PC9zdmc+';

	    add_menu_page('Hotmart WP', 'Hotmart WP', 'manage_options', 'hotmart-options', 'hotmart_options_page', $hotmart_icon);
	    add_submenu_page('hotmart-options', 'Product Ads', __('Product Ads', 'hotmart-wp'), 'manage_options', 'hotmart-ads', 'hotmart_ads_options_page');
	}

	// Options
	add_action('admin_init', 'hotmart_register_options');
	function hotmart_register_options() {
		register_setting('hotmart_options', 'hotmart_ad_image');
		register_setting('hotmart_options', 'hotmart_ad_title');
		register_setting('hotmart_options', 'hotmart_ad_hotlink');
	}

	// Menu page
	function hotmart_options_page() {
	    if (!current_user_can('manage_options')) {
	        wp_die(__("Ooops! You don't have permission to access this page!", 'hotmart-wp'));
	    }
	    require_once('admin_options_page.php');
	}

	// Submenu page
	function hotmart_ads_options_page() {
	    if (!current_user_can('manage_options')) {
	        wp_die(__("Ooops! You don't have permission to access this page!", 'hotmart-wp'));
	    }
	    require_once('admin_ads_options_page.php');
	}

	// Ad Save
	add_action('wp_ajax_hotmart_ad_insert_update', 'hotmart_ad_insert_update');
	function hotmart_ad_insert_update() {
		global $wpdb;

		$table = $wpdb->prefix . HOTMART_ADS_TABLE;

		$title = sanitize_text_field($_POST['title']);
		$image = esc_url(sanitize_text_field($_POST['image']));
		$hotlink = esc_url(sanitize_text_field($_POST['hotlink']));
		$enabled = intval($_POST['enabled']);

		$id = intval($_POST['id']);

		if($id) {
			$sql = 'UPDATE ' . $table . ' SET title = %s, image = %s, hotlink = %s, enabled = %d WHERE id = %d';

			$success = $wpdb->query($wpdb->prepare($sql, $title, $image, $hotlink, $enabled, $id));

			if($success) {
				$result['status'] = 'success';
				$result['message'] = __("Ad updated successfully!", 'hotmart-wp');
			} else {
				$result['status'] = 'error';
				$result['message'] = __("No change was made!", 'hotmart-wp');
			}
		} else {
			$sql = 'INSERT INTO ' . $table . ' (title, image, hotlink, enabled) VALUES (%s, %s, %s, %d)';

			$success = $wpdb->query($wpdb->prepare($sql, $title, $image, $hotlink, $enabled));

			if($success) {
				$result['status'] = 'success';
				$result['message'] = __("Advertisement created successfully!", 'hotmart-wp');
				$result['id'] = $wpdb->insert_id;
			} else {
				$result['status'] = 'error';
				$result['message'] = __("Oops! There was an error creating the ad!", 'hotmart-wp');
			}
		}

		die(json_encode($result));
	}

	// Ad Delete
	add_action('wp_ajax_hotmart_ad_delete', 'hotmart_ad_delete');
	function hotmart_ad_delete() {
		global $wpdb;

		$table = $wpdb->prefix . HOTMART_ADS_TABLE;

		$id = intval($_POST['id']);

		if ($id) {
        	$sql = 'DELETE FROM ' . $table . ' WHERE id = %d';
        }

        $wpdb->query($wpdb->prepare($sql, $id));

		die();
	}
?>