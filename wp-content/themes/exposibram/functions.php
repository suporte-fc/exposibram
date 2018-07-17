<?php


function fc_boostrap_main_classes() {
    if (! is_active_sidebar('sidebar-left') && ! is_active_sidebar('sidebar-right')) { // no columns
        echo "col-sm-8 col-sm-push-2";
    } else if (! is_active_sidebar('sidebar-right')) { // only left
        echo "col-sm-8 col-sm-push-4";
    } else if (! is_active_sidebar('sidebar-left')) { // only right
        echo "col-sm-8";
    } else { // both columns
        echo "col-sm-6 col-sm-push-3";
    }
}

function fc_boostrap_sidebar_left_classes() {
    if (! is_active_sidebar('sidebar-right')) { // only left
        echo 'col-sm-4 col-sm-pull-8';
    } else { // both columns
        echo 'col-sm-3 col-sm-pull-6';
    }
}

function fc_boostrap_sidebar_right_classes() {
    if (! is_active_sidebar('sidebar-left')) { // only right
        echo 'col-sm-4';
    } else { // both columns
        echo 'col-sm-3';
    }
}

function fc_head_script () {
    echo '<script>
    jQuery(document).ready(function(){
        jQuery("#menu-item-378 a").attr("target","_blank");
    });
    </script>';
}
add_action('wp_head','fc_head_script');

function banners_home () {
    $ret = '';
    $b1 = get_post_meta( 9, 'banner_1', true );
    $l1 = get_post_meta( 9, 'link_banner_1', true );
    if ( strlen($l1) > 0 ) {
        $a = '<a href="'.$l1.'">';
        $a2 = '</a>';
    } else {
        $a = '';
        $a2 = '';
    }
    if ( strlen($b1) > 0 ) {
        $img = wp_get_attachment_image($b1, 'full', false, array('style'=>'max-width:100% !important;height:auto !important;') );
        $ret .= '<p>'.$a.$img.$a2.'</p>';
    }
    $b2 = get_post_meta( 9, 'banner_2', true );
    $l2 = get_post_meta( 9, 'link_banner_2', true );
    if ( strlen($l2) > 0 ) {
        $a = '<a href="'.$l2.'">';
        $a2 = '</a>';
    } else {
        $a = '';
        $a2 = '';
    }
    if ( strlen($b2) > 0 ) {
        $img = wp_get_attachment_image($b2, 'full', false, array('style'=>'max-width:100% !important;height:auto !important;') );
        $ret .= '<p>'.$a.$img.$a2.'</p>';
    }
    $b3 = get_post_meta( 9, 'banner_3', true );
    $l3 = get_post_meta( 9, 'link_banner_3', true );
    if ( strlen($l3) > 0 ) {
        $a = '<a href="'.$l3.'">';
        $a3 = '</a>';
    } else {
        $a = '';
        $a3 = '';
    }
    if ( strlen($b3) > 0 ) {
        $img = wp_get_attachment_image($b3, 'full', false, array('style'=>'max-width:100% !important;height:auto !important;') );
        $ret .= '<p>'.$a.$img.$a3.'</p>';
    }
    $b4 = get_post_meta( 9, 'banner_4', true );
    $l4 = get_post_meta( 9, 'link_banner_4', true );
    if ( strlen($l4) > 0 ) {
        $a = '<a href="'.$l4.'">';
        $a4 = '</a>';
    } else {
        $a = '';
        $a4 = '';
    }
    if ( strlen($b4) > 0 ) {
        $img = wp_get_attachment_image($b4, 'full', false, array('style'=>'max-width:100% !important;height:auto !important;') );
        $ret .= '<p>'.$a.$img.$a4.'</p>';
    }
    $b5 = get_post_meta( 9, 'banner_5', true );
    $l5 = get_post_meta( 9, 'link_banner_5', true );
    if ( strlen($l5) > 0 ) {
        $a = '<a href="'.$l5.'">';
        $a5 = '</a>';
    } else {
        $a = '';
        $a5 = '';
    }
    if ( strlen($b5) > 0 ) {
        $img = wp_get_attachment_image($b5, 'full', false, array('style'=>'max-width:100% !important;height:auto !important;') );
        $ret .= '<p>'.$a.$img.$a5.'</p>';
    }
    return $ret;
}
add_shortcode( 'banners_home', 'banners_home' );
add_filter('widget_text', 'do_shortcode');

