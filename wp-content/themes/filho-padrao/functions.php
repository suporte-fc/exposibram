<?php 

function fc_mime_types($mimes) {
	$mimes['svg'] = 'image/svg+xml';
	$mimes['pdf'] = 'application/pdf';
	return $mimes;
}
add_filter('upload_mimes', 'fc_mime_types');




