<?php
	// Styles and Scripts
	add_action('wp_enqueue_scripts', 'hotmart_enqueue_scripts_styles');
	function hotmart_enqueue_scripts_styles() {
		// ## Scripts ##
		wp_register_script('hotmart-wp-public', HOTMART_PLUGIN_PATH . 'assets/scripts/public.min.js', 'jquery', time(), true);
		wp_localize_script('hotmart-wp-public', 'hotmart_wp', array('tracking_type' => HOTMART_LAUNCHER_TRACKING_TYPE, 'version' => HOTMART_PLUGIN_VERSION, 'ajaxurl' => admin_url('admin-ajax.php')));
	    wp_enqueue_script('hotmart-wp-public');

	    // ## Styles ##
	    wp_enqueue_style('hotmart-ad', HOTMART_PLUGIN_PATH . 'assets/styles/hotmart-ad.css', '', time());
	}

	// Ad Inject
	add_filter('the_content', 'hotmart_content_filter');
	function hotmart_content_filter($content) {
		global $wpdb;

		$table = $wpdb->prefix . HOTMART_ADS_TABLE;

		if (is_single()) {
			$ads = $wpdb->get_results($wpdb->prepare('SELECT id, title, image, hotlink FROM ' . $table . ' WHERE enabled = %d', 1));
			$ad_index = rand(0, sizeof($ads) - 1);

	  		$hotmart_ad .= '<a class="hotmart-ad" id="' . $ads[$ad_index]->id . '" href="' . $ads[$ad_index]->hotlink . '" target="_blank">';
	  		$hotmart_ad .= '<h3 class="hotmart-ad-title">' . $ads[$ad_index]->title . '</h3>';
	  		$hotmart_ad .= '<img class="hotmart-ad-image" src="' . $ads[$ad_index]->image . '">';
	  		$hotmart_ad .= '</a>';
	  		$content .= $hotmart_ad;
	  	}

  		return $content;
	}

	// Ad View
	add_action('wp_ajax_nopriv_hotmart_ad_view', 'hotmart_ad_view');
	function hotmart_ad_view() {
		global $wpdb;

		$table = $wpdb->prefix . HOTMART_ADS_TABLE;

		$id = intval($_POST['id']);

		if ($id) {
        	$sql = 'UPDATE ' . $table . ' SET views = views + %d WHERE id = %d';
        }

        $wpdb->query($wpdb->prepare($sql, 1, $id));

		die();
	}

	// Ad Click
	add_action('wp_ajax_nopriv_hotmart_ad_click', 'hotmart_ad_click');
	function hotmart_ad_click() {
		global $wpdb;

		$table = $wpdb->prefix . HOTMART_ADS_TABLE;

        $id = intval($_POST['id']);

        if ($id) {
        	$sql = 'UPDATE ' . $table . ' SET clicks = clicks + %d WHERE id = %d';
        }

        $wpdb->query($wpdb->prepare($sql, 1, $id));

		die();
	}
?>