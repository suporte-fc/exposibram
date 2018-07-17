<?php
/*
Plugin Name: FC - Complementos para Wordpress
Plugin URI: http://www.fabricadecriacao.com.br
Description: Plugin com complementos úteis para o Wordpress
Author: Alex Lana / Fábrica de Criação
Author URI: http://www.fabricadecriacao.com.br
Text Domain: fcwpcomp
Version: 0.1
License: GPLv2
*/

/*
This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; version 2 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/

/*
Usado como base: http://graemewilson.co.nz/wordpress-plugins/wordpress-blank-plugin/
*/


// Make sure that no info is exposed if file is called directly -- Idea taken from Akismet plugin
if ( !function_exists( 'add_action' ) ) {
	echo "This page cannot be called directly.";
	exit;
}

// Define some useful constants that can be used by functions
if ( ! defined( 'WP_CONTENT_URL' ) ) {
	if ( ! defined( 'WP_SITEURL' ) ) define( 'WP_SITEURL', get_option("siteurl") );
	define( 'WP_CONTENT_URL', WP_SITEURL . '/wp-content' );
}
if ( ! defined( 'WP_SITEURL' ) ) define( 'WP_SITEURL', get_option("siteurl") );
if ( ! defined( 'WP_CONTENT_DIR' ) ) define( 'WP_CONTENT_DIR', ABSPATH . 'wp-content' );
if ( ! defined( 'WP_PLUGIN_URL' ) ) define( 'WP_PLUGIN_URL', WP_CONTENT_URL. '/plugins' );
if ( ! defined( 'WP_PLUGIN_DIR' ) ) define( 'WP_PLUGIN_DIR', WP_CONTENT_DIR . '/plugins' );

if ( basename(dirname(__FILE__)) == 'plugins' )
	define("FCWP_COMPS_DIR",'');
else define("FCWP_COMPS_DIR" , basename(dirname(__FILE__)) . '/');
define("FCWP_COMPS_PATH", WP_PLUGIN_URL . "/" . FCWP_COMPS_DIR);



/////////////////////////////////////////////////////////////
// equipe de criacao do site
// http://localhost/wp-padrao/?creditos
if ( isset($_GET['creditos']) ) {
	$eq = '/equipe/equipe.html';
	if ( is_file(get_stylesheet_directory() . $eq) )
		header( 'location:' . get_stylesheet_directory_uri() . $eq );
	exit;
}


/////////////////////////////////////////////////////////////
// executar shortcodes em widgets
add_filter('widget_text', 'do_shortcode');


/////////////////////////////////////////////////////////////
// melhorar seguranca
if ( !defined('ABSPATH')) exit; // acho que eh redundancia com o "function exists add_action lah em cima"
// se definido na admin, forca ssl no login e na admin
if ( (int)get_option('fcwpc_ssl') == 1 ) {
	function fcwpc_ssl_init() {
		force_ssl_login(true);
		force_ssl_admin(true);
	}
	add_action( 'init', 'fcwpc_ssl_init', 0 );
}
// se o usuario nao eh administrador, eh jogado pra fora da admin
add_action( 'init', 'blockusers_init' );
function blockusers_init() {
	if ( is_admin() &&
//		! current_user_can( 'administrator' ) && ! current_user_can( 'editor' ) && ! current_user_can( 'author' ) && ! current_user_can( 'shop_manager' ) &&
		! current_user_can( 'publish_pages' ) && ! current_user_can( 'publish_posts' ) && ! current_user_can( 'manage_woocommerce' ) && ! current_user_can( 'view_woocommerce_reports' ) &&
		! ( defined( 'DOING_AJAX' ) && DOING_AJAX ) ) {
			wp_redirect( home_url() );
			exit;
	}
}
// mandar para home no logout
if ( (int)get_option('fcwpc_logout_home') == 1 ) {
	function logout_go_home() {
		wp_redirect( home_url() );
		exit;
	}
	add_action('wp_logout','logout_go_home');
}


/////////////////////////////////////////////////////////////
// permitir uso de senha fraca no cadastro
if ( (int)get_option('fcwpc_strong_password') == 1 ) {
	function wc_ninja_remove_password_strength() {
		if ( wp_script_is( 'wc-password-strength-meter', 'enqueued' ) ) {
			wp_dequeue_script( 'wc-password-strength-meter' );
		}
	}
	add_action( 'wp_print_scripts', 'wc_ninja_remove_password_strength', 100 );
}


/////////////////////////////////////////////////////////////
// adicionar classes na tag body
function body_class_language($classes) {
	if ( function_exists( 'qtrans_getLanguage' ) ) {
		$classes[] = 'lang-' . qtrans_getLanguage();
	}
	return $classes;
}
add_filter('body_class','body_class_language');
function body_class_page($classes) {
	global $post;
	if ( is_object($post) ) {
		$classes[] = 'page-' . $post->post_name;
	}
	return $classes;
}
add_filter('body_class','body_class_page');
function body_class_section($classes) {
	if (is_page()) {
		$classes[] = 'parent-' . fc_get_first_parent();
	}
	return $classes;
}
add_filter('body_class','body_class_section');
function body_class_role($classes) {
	global $current_user, $wp_roles;
	$t = $current_user->get_role_caps();
	end($t);
	$role = key($t);
	if ( $role == '' || $t[$role] != 1 ) {
		$role = 'unlogged';
	}
	$classes[] = 'role-'. $role;
	return $classes;
}
add_filter('body_class','body_class_role');
function body_class_nonhome($classes) {
	if ( !is_home() && !is_front_page() )
		$classes[] = 'non-home';
	return $classes;
}
add_filter('body_class','body_class_nonhome');
function body_class_nonsearch($classes) {
	if ( !is_search() )
		$classes[] = 'non-search';
	return $classes;
}
add_filter('body_class','body_class_nonsearch');

/*
function fc_get_first_parent ($classes) {
	global $wpdb, $post;
	if ( is_page() ) {
		if ( $post->post_parent ) {
			$parent = end( get_post_ancestors( $current_page_id ) );
		} else {
			$parent = $post->ID;
		}
		$parent = get_post( $parent, ARRAY_A );
		$classes[] = $parent['post_name'];
	}
	return $classes;
}
add_filter('body_class','fc_get_first_parent');
*/
function fc_get_first_parent () {
	global $wpdb, $post;
	if ( is_page() ) {
		if ( $post->post_parent ) {
			$parent = end( get_post_ancestors( $current_page_id ) );
		} else {
			$parent = $post->ID;
		}
		$parent = get_post( $parent, ARRAY_A );
		$classes = $parent['post_name'];
	}
	return $classes;
}
//add_filter('body_class','fc_get_first_parent');


/////////////////////////////////////////////////////////////
// pagina de opcoes do plugin na administracao
add_action( 'admin_menu', 'fcwpc_add_options' );
function fcwpc_add_options () {
	add_options_page( 'FC Complementos','FC Complementos', 'manage_options', 'fcwpc_options', 'fcwpc_options' );
}
function fcwpc_options() {
	if ( !current_user_can( 'manage_options' ) )  {
		wp_die( __( 'You do not have sufficient permissions to access this page.', 'fcwpcomp' ) );
	}
	include( plugin_dir_path( __FILE__ ) . 'options.php' );
}
function fcwpc_regsettings () {
	add_option( 'fcwpc_ssl', '0');
	register_setting( 'fcwpc', 'fcwpc_ssl' );
	add_option( 'fcwpc_logout_home', '0');
	register_setting( 'fcwpc', 'fcwpc_logout_home' );
	add_option( 'fcwpc_strong_password', '0');
	register_setting( 'fcwpc', 'fcwpc_strong_password' );
	add_option('fcwpc_ua','');
	register_setting('fcwpc','fcwpc_ua');

	$fcwpc_erro = array(
		'400' => 400,
		'401' => 401,
		'402' => 402,
		'403' => 403,
//		'404' => 404, // melhor usar a pagina do wordpress
		'405' => 405,
		'406' => 406,
		'407' => 407,
		'408' => 408,
		'409' => 409,
		'410' => 410,
		'500' => 500,
		'501' => 501,
		'502' => 502,
		'503' => 503,
		'504' => 504,
		'505' => 505,
	);
	add_option('fcwpc_erro',$fcwpc_erro);
	register_setting('fcwpc','fcwpc_erro');

	if ( $_POST['action'] == 'update' && $_POST['option_page'] == 'fcwpc' ) {
		fcwpc_insere_ua();
		fc_delete_from_htaccess();
		fc_alterar_htacess();
	}
}
add_action( 'admin_init', 'fcwpc_regsettings' );


/////////////////////////////////////////////////////////////
// cron
register_activation_hook( __FILE__, 'fcwp_activation' );
add_action( 'fcwp_dayly', 'fcwp_do_this_dayly' );
function fcwp_activation() {
	wp_schedule_event( current_time( 'timestamp' ), 'dayly', 'fcwp_dayly' );
}
function fcwp_do_this_dayly() {
	// forcar limpeza do cache do autoptimize que cresce indefinidamente
	if ( is_plugin_active( 'autoptimize/autoptimize.php' ) ) {
		autoptimizeCache::clearall();
	}
}
register_deactivation_hook( __FILE__, 'fcwp_deactivation' );
function fcwp_deactivation() {
	wp_clear_scheduled_hook( 'fcwp_dayly' );
}


/////////////////////////////////////////////////////////////
// alterar mensagens do mailchimp
function fc_custom_user_already_subscribed_error( $errorMessage, $update_user_link, $email ) {
	$errorMessage = $email . __(' is already subscribed to this list.', 'fcwpcomp');
	$errorMessage .= str_replace( 'Update My Info.' , __('Please Update My Information', 'fcwpcomp') , $update_user_link );
	return $errorMessage;
}
add_filter( 'yikes_mc_user_already_subscribed' , 'fc_custom_user_already_subscribed_error' , 10 , 3 );

function fc_custom_resubmit_info_message( $success_message ) {
	$success_message = "Thanks for updating your info!";
	return $success_message;
}
add_filter( 'yikes_mc_subscriber_update_message' , 'fc_custom_resubmit_info_message' , 10 );


/////////////////////////////////////////////////////////////
// amp
function fc_amp_content( $content ) {
	if ( strpos( $_SERVER['REQUEST_URI'], '/amp/' ) > 0 || ( strpos($_SERVER['REQUEST_URI'], '/amp') > 0 && strlen($_SERVER['REQUEST_URI']) == strpos($_SERVER['REQUEST_URI'], '/amp')+4 ) ) {
		$prohibited = 'cite,height,width,download,border,summary,align,cellspacing,cellpadding,bgcolor,scope';
		$prohibited = explode(',',$prohibited);
		for ($i=0;$i<count($prohibited);$i++) {
			$content = preg_replace('/(<[^>]+) '.$prohibited[$i].'=".*?"/i', '$1', $content);
			$content = preg_replace("/(<[^>]+) ".$prohibited[$i]."='.*?'/i", '$1', $content);
		}
	}
	return $content;
}
add_filter( 'the_content' , 'fc_amp_content', 1000 );


/////////////////////////////////////////////////////////////
// Paginas de erro no htacess

// diretorio das paginas de erro
function fc_get_error_dir( $abs = true ) {
	if ($abs) {
		$htaccess = ABSPATH . '.htaccess';
		$siteurl = explode( '/', get_option( 'siteurl' ) );
		if (isset($siteurl[3])) {
			$dir = '/' . $siteurl[3] . '/';
		} else {
			$dir = '/';
		}
	} else {
		$dir = '';
	}
	return $dir."wp-content/plugins/fc-wp-complementos/erroshttp/";
}


// alterar o htaccess pra buscar as pagingas de erro
function fc_alterar_htacess() {
	
	$htaccess = ABSPATH . '.htaccess';
	$dir = fc_get_error_dir();

	if (!$f = @fopen($htaccess, 'a+')) {
		@chmod( $htaccess, 0644 );
		if (!$f = @fopen( $htaccess, 'a+')) {
			// $aio_wp_security->debug_logger->log_debug("chmod operation on .htaccess failed!",4);
			return -1;
		}
	}
        
	//AIOWPSecurity_Utility_File::backup_and_rename_htaccess($htaccess); //TODO - we dont want to continually be backing up the htaccess file
	@ini_set( 'auto_detect_line_endings', true );
	$ht = explode( PHP_EOL, implode( '', file( $htaccess ) ) ); //parse each line of file into array

/*    $rules = AIOWPSecurity_Utility_Htaccess::getrules();
   if ($rules == -1)
	{
		$aio_wp_security->debug_logger->log_debug("Unable to retrieve rules in .htaccess file!",4);
		return -1;
	} */

	$rules = "# FC Pagina de erro - ini" . PHP_EOL;
	$fcwpc_erro = get_option('fcwpc_erro');
	foreach ($fcwpc_erro  as $value) {
		$rules .= "ErrorDocument $value ".$dir."$value.shtml" . PHP_EOL;
	}
	$rules .= '# FC Pagina de erro - fim';

	$rulesarray = explode( PHP_EOL, $rules );
	$contents = array_merge( $rulesarray, $ht );
		
	if (!$f = @fopen($htaccess, 'w+')) {
		echo 'nao conseguimos gravar no htacess';
		// $aio_wp_security->debug_logger->log_debug("Write operation on .htaccess failed!",4);
		return -1; //we can't write to the file
	}
	
	$blank = false;
	foreach ( $contents as $insertline ) {
		if ( trim( $insertline ) == '' ) {
			if ( $blank == false ) {
				fwrite( $f, PHP_EOL . trim( $insertline ) );
			}
			$blank = true;	
		} else {
			$blank = false;
			fwrite( $f, PHP_EOL . trim( $insertline ) );
		}
	}
	@fclose( $f );
	return 1; //success
}

// inserir UA nas paginas de erro

function fcwpc_insere_ua(){
	$nome_diretorio = ABSPATH . fc_get_error_dir(false);
	$handle = opendir($nome_diretorio);

	while (false !== ($file = readdir($handle))) {
		// ler o arquivo
				// encontrar o UA no array do arquivo
		if ( is_file($nome_diretorio . $file) && $file != '.DS_Store' ) {
			$lines = file ($nome_diretorio . $file);
			// substituir o UA
			$fcwpc_ua = get_option('fcwpc_ua');	
			for($i=0;$i<count($lines);$i++) {
				if ( strpos('.'.$lines[$i], 'var ua =') > 0 ) {
					$lines[$i] = "var ua = '".$fcwpc_ua."';" . PHP_EOL;
					break;
				}
			}
			// transformar o array em string
			$str = implode("", $lines);
			$arquivo = fopen($nome_diretorio . $file, 'w');
			fwrite($arquivo, $str);
			fclose($arquivo);
		}

		
		
		// salvar o arquivos
	}
	closedir($handle);
}

////////////////////////////////////////////////////////////////
//// Deletar do htacess

function fc_delete_from_htaccess()
    {
        //TODO
        $htaccess = ABSPATH . '.htaccess';
			
	@ini_set('auto_detect_line_endings', true);
	if (!file_exists($htaccess)) 
        {
            $ht = @fopen($htaccess, 'a+');
            @fclose($ht);
	}
        $ht_contents = explode(PHP_EOL, implode('', file($htaccess))); //parse each line of file into array
	if ($ht_contents) 
        { //as long as there are lines in the file
            $state = true;
            if (!$f = @fopen($htaccess, 'w+')) 
            {
                @chmod( $htaccess, 0644 );
		if (!$f = @fopen( $htaccess, 'w+')) 
                {
                    return -1;
                }
            }
            
            foreach ( $ht_contents as $n => $markerline ) 
            { //for each line in the file
                if (strpos($markerline, '# FC Pagina de erro - ini' ) !== false) 
                { //if we're at the beginning of the section
                    $state = false;
                }
                if ($state == true) 
                { //as long as we're not in the section keep writing
                    fwrite($f, trim($markerline) . PHP_EOL);
		}
                if (strpos($markerline, 'FC Pagina de erro - fim' ) !== false) 
                { //see if we're at the end of the section
                    $state = true;
                }
            }
            @fclose($f);
            return 1;
        }
        return 1;
    }

/////////////////////////////////////////////////////////////
// plugins do "pacote" da FC para sites institucionais
require_once( plugin_dir_path( __FILE__ ) . 'libraries/class-tgm-plugin-activation.php' );

add_action( 'tgmpa_register', 'fcwpc_required' );
function fcwpc_required () {

	if ( is_admin() ) {
		include_once('../wp-admin/includes/plugin.php');

		if ( is_plugin_active( 'fc-wp-dev/fc-wp-dev.php' ) ) {
	
			$plugins = fcwpc_plugins_list();
		
			$config = array(
				'default_path' => '',                      // Default absolute path to pre-packaged plugins.
				'menu'         => 'tgmpa-install-plugins', // Menu slug.
				'has_notices'  => true,                    // Show admin notices or not.
				'dismissable'  => true,                    // If false, a user cannot dismiss the nag message.
				'dismiss_msg'  => '',                      // If 'dismissable' is false, this message will be output at top of nag.
				'is_automatic' => false,                   // Automatically activate plugins after installation or not.
				'message'      => '',                      // Message to output right before the plugins table.
				'strings'      => array(
					'page_title'                      => __( 'Install Required Plugins', 'tgmpa' ),
					'menu_title'                      => __( 'Install Plugins', 'tgmpa' ),
					'installing'                      => __( 'Installing Plugin: %s', 'tgmpa' ), // %s = plugin name.
					'oops'                            => __( 'Something went wrong with the plugin API.', 'tgmpa' ),
					'notice_can_install_required'     => _n_noop( 'FC requires the following plugin: %1$s.', 'FC requires the following plugins: %1$s.' ), // %1$s = plugin name(s).
					'notice_can_install_recommended'  => _n_noop( 'FC recommends the following plugin: %1$s.', 'FC recommends the following plugins: %1$s.' ), // %1$s = plugin name(s).
					'notice_cannot_install'           => _n_noop( 'Sorry, but you do not have the correct permissions to install the %s plugin. Contact the administrator of this site for help on getting the plugin installed.', 'Sorry, but you do not have the correct permissions to install the %s plugins. Contact the administrator of this site for help on getting the plugins installed.' ), // %1$s = plugin name(s).
					'notice_can_activate_required'    => _n_noop( 'The following required plugin is currently inactive: %1$s.', 'The following required plugins are currently inactive: %1$s.' ), // %1$s = plugin name(s).
					'notice_can_activate_recommended' => _n_noop( 'The following recommended plugin is currently inactive: %1$s.', 'The following recommended plugins are currently inactive: %1$s.' ), // %1$s = plugin name(s).
					'notice_cannot_activate'          => _n_noop( 'Sorry, but you do not have the correct permissions to activate the %s plugin. Contact the administrator of this site for help on getting the plugin activated.', 'Sorry, but you do not have the correct permissions to activate the %s plugins. Contact the administrator of this site for help on getting the plugins activated.' ), // %1$s = plugin name(s).
					'notice_ask_to_update'            => _n_noop( 'The following plugin needs to be updated to its latest version to ensure maximum compatibility with FC: %1$s.', 'The following plugins need to be updated to their latest version to ensure maximum compatibility with FC: %1$s.' ), // %1$s = plugin name(s).
					'notice_cannot_update'            => _n_noop( 'Sorry, but you do not have the correct permissions to update the %s plugin. Contact the administrator of this site for help on getting the plugin updated.', 'Sorry, but you do not have the correct permissions to update the %s plugins. Contact the administrator of this site for help on getting the plugins updated.' ), // %1$s = plugin name(s).
					'install_link'                    => _n_noop( 'Begin installing plugin', 'Begin installing plugins' ),
					'activate_link'                   => _n_noop( 'Begin activating plugin', 'Begin activating plugins' ),
					'return'                          => __( 'Return to Required Plugins Installer', 'tgmpa' ),
					'plugin_activated'                => __( 'Plugin activated successfully.', 'tgmpa' ),
					'complete'                        => __( 'All plugins installed and activated successfully. %s', 'tgmpa' ), // %s = dashboard link.
					'nag_type'                        => 'updated' // Determines admin notice type - can only be 'updated', 'update-nag' or 'error'.
				)
			);
		
			tgmpa( $plugins, $config );

		} // if fc dev
	} // is admin
}

function fcwpc_plugins_list () {
	$plugins = array(

		// This is an example of how to include a plugin from the WordPress Plugin Repository.
		array(
			'name'      => 'Akismet',
			'slug'      => 'akismet',
			'required'  => true,
		),
		array(
			'name'      => 'Breadcrumb NavXT',
			'slug'      => 'breadcrumb-navxt',
			'required'  => true,
		),
		array(
			'name'      => 'Category Order and Taxonomy Terms Order',
			'slug'      => 'taxonomy-terms-order',
			'required'  => true,
		),
		array(
			'name'      => 'CodeStyling Localization',
			'slug'      => 'codestyling-localization',
			'required'  => true,
		),
		array(
			'name'      => 'Contact Form DB',
			'slug'      => 'contact-form-7-to-database-extension',
			'required'  => true,
		),
		array(
			'name'      => 'Display Widgets',
			'slug'      => 'display-widgets',
			'required'  => true,
		),
		array(
			'name'      => 'Easy WP SMTP',
			'slug'      => 'easy-wp-smtp',
			'required'  => true,
		),
		array(
			'name'      => 'Enable Media Replace',
			'slug'      => 'enable-media-replace',
			'required'  => true,
		),
		array(
			'name'      => 'Force Regenerate Thumbnails',
			'slug'      => 'force-regenerate-thumbnails',
			'required'  => true,
		),
		array(
			'name'      => 'IM8 Exclude Pages',
			'slug'      => 'im8-exclude-pages',
			'required'  => true,
		),
		array(
			'name'      => 'Jetpack',
			'slug'      => 'jetpack',
			'required'  => true,
		),
		array(
			'name'      => 'Peter\'s Blog URL Shortcodes',
			'slug'      => 'peters-blog-url-shortcodes',
			'required'  => true,
		),
		array(
			'name'      => 'SES Theme Split Test',
			'slug'      => 'wordpress-ab-theme-split-tests',
			'required'  => true,
		),
		array(
			'name'      => 'Simple Custom Post Order',
			'slug'      => 'simple-custom-post-order',
			'required'  => true,
		),
		array(
			'name'      => 'SiteWit Website Analytics and Search Engine Marketing',
			'slug'      => 'sitewit-engagement-analytics',
			'required'  => true,
		),
		array(
			'name'      => 'W3 Total Cache',
			'slug'      => 'w3-total-cache',
			'required'  => true,
		),
		array(
			'name'      => 'All in one WP Security & Firewall',
			'slug'      => 'all-in-one-wp-security-and-firewall',
			'required'  => true,
		),
		array(
			'name'      => 'Wordfence Security',
			'slug'      => 'wordfence',
			'required'  => true,
		),
		array(
			'name'      => 'Really Simple CAPTCHA',
			'slug'      => 'really-simple-captcha',
			'required'  => true,
		),
		array(
			'name'      => 'WordPress Media Tags',
			'slug'      => 'wordpress-media-tags',
			'required'  => true,
		),
		array(
			'name'      => 'WordPress SEO',
			'slug'      => 'wordpress-seo',
			'required'  => true,
		),
		array(
			'name'      => 'Google XML Sitemap',
			'slug'      => 'google-sitemap-generator',
			'required'  => true,
		),
		array(
			'name'      => 'Easy MailChimp Forms',
			'slug'      => 'yikes-inc-easy-mailchimp-extender',
			'required'  => true,
		),
		array(
			'name'      => 'YITH Maintenance Mode',
			'slug'      => 'yith-maintenance-mode',
			'required'  => true,
		),
		array(
			'name'      => 'Google Analytics by Yoast',
			'slug'      => 'google-analytics-for-wordpress',
			'required'  => true,
		),

/*
		array(
			'name'      => 'Cronjob Scheduler',
			'slug'      => 'cronjob-scheduler',
			'required'  => true,
		),

		array(
			'name'      => 'Easy WordPress Mailchimp Integration',
			'slug'      => 'easy-wordpress-mailchimp-integration',
			'required'  => false,
		),
		array(
			'name'      => 'MaxA/B',
			'slug'      => 'maxab-experiment',
			'required'  => false,
		),
		array(
			'name'      => 'User Role Editor',
			'slug'      => 'user-role-editor',
			'required'  => false,
		),
*/

	);
	return $plugins;
}

?>