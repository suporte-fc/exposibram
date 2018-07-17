<div class="hotmart-options">
    <h1 class="hotmart-options-title">Hotmart Ads</h1>
    <?php 
        global $wpdb;

        $table = $wpdb->prefix . HOTMART_ADS_TABLE;
        
        $ads = $wpdb->get_results('SELECT id, title, image, hotlink, enabled, views, clicks FROM ' . $table);

        if (empty($ads)) {
            include('template_ad_container.php');
        } else {
            foreach ($ads as $key => $ad) {
                include('template_ad_container.php');
            }
        }
    ?>
    <button class="hotmart-ads-options-add-button hotmart-button"><?= __("Add ad", 'hotmart-wp'); ?></button>
</div>