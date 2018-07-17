<div class="hotmart-ads-options-ad-container" id="<?= $ad->id; ?>">
    <div class="hotmart-ads-options-column hotmart-ads-options-left">
        <h2 class="hotmart-ads-options-ad-title"><?= __("Ad", 'hotmart-wp') . ' ' . ($key + 1); ?></h2>
        <form class="hotmart-ads-options-form">
            <div class="hotmart-ads-options-input-container">
                <label><?= __("Choose a title for this ad:", 'hotmart-wp'); ?></label>
                <input class="hotmart-ads-options-input" data-preview_target=".hotmart-ads-options-preview-title" type="text" name="hotmart_ad_title" value="<?= $ad->title; ?>">
            </div>
            <div class="hotmart-ads-options-input-container">
                <label><?= __("Choose a image for this ad:", 'hotmart-wp'); ?></label>
                <input class="hotmart-ads-options-input hotmart-ads-options-input-image" data-preview_attr="src" data-preview_target=".hotmart-ads-options-preview-image" type="text" name="hotmart_ad_image" value="<?= $ad->image; ?>">
                <input class="hotmart-ads-options-image-upload-button hotmart-button" type="button" value="<?= __("Choose image", 'hotmart-wp'); ?>">
            </div>
            <div class="hotmart-ads-options-input-container">
                <label><?= __("Paste the product's Hotlink here:", 'hotmart-wp'); ?></label>
                <input class="hotmart-ads-options-input" data-preview_attr="href" data-preview_target=".hotmart-ads-options-preview" type="url" name="hotmart_ad_hotlink" value="<?= $ad->hotlink; ?>">
            </div>
            <div class="hotmart-ads-options-input-container">
                <label><?= __("Show this ad?", 'hotmart-wp'); ?></label>
                <div class="hotmart-ads-options-input-radio-container">
                    <input type="radio" name="hotmart_ad_enabled" value="1" <?php checked('1', $ad->enabled); ?>> <?= __("Yes", 'hotmart-wp'); ?>
                </div>
                <div class="hotmart-ads-options-input-radio-container">
                    <input type="radio" name="hotmart_ad_enabled" value="0" <?php checked('0', $ad->enabled); ?>> <?= __("No", 'hotmart-wp'); ?>
                </div>
            </div>
            <?php if (!empty($ad->views)) : ?>
                <div class="hotmart-ads-options-insights-container">
                    <h4 class="hotmart-ads-options-insights-title"><?= __("Performance:", 'hotmart-wp'); ?></h4>
                    <div class="hotmart-ads-options-insights-text-container">
                        <p class="hotmart-ads-options-insights-text"><?php printf(_n('%s view', '%s views', $ad->views, 'hotmart-wp'), $ad->views); ?></p>
                        <p class="hotmart-ads-options-insights-text"><?php printf(_n('%s click', '%s clicks', $ad->clicks, 'hotmart-wp'), $ad->clicks); ?></p>
                        <p class="hotmart-ads-options-insights-text"><?= round($ad->clicks / $ad->views * 100, 2) . '% ' . __("conversion", 'hotmart-wp'); ?></p>
                    </div>
                </div>
            <?php endif; ?>
            <div class="hotmart-ads-options-action-container">
                <button class="hotmart-ads-options-save-button hotmart-button"><?= __("Save", 'hotmart-wp'); ?></button>
                <button class="hotmart-ads-options-delete-button hotmart-button"><?= __("Delete", 'hotmart-wp'); ?></button>
                <p class="hotmart-ads-options-message"></p>
            </div>
        </form>
    </div>
    <div class="hotmart-ads-options-column hotmart-ads-options-right">
        <h2 class="hotmart-ads-options-preview-container-title"><?= __("Your ad will look like this:", 'hotmart-wp'); ?></h2>
        <a class="hotmart-ads-options-preview hotmart-ad" href="<?= $ad->hotlink; ?>" target="_blank">
            <h3 class="hotmart-ads-options-preview-title hotmart-ad-title"><?= $ad->title; ?></h3>
            <img class="hotmart-ads-options-preview-image hotmart-ad-image" src="<?= $ad->image; ?>">
        </a>
    </div>
</div>