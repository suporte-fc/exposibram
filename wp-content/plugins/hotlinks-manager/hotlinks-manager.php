<?php
/*
Plugin Name: Hotlinks Manager
Description: Gerencia os Hotlinks - Basta ativar e utilizar o shortcode [hotlinks-generator]
Version: 1.0
Author: Apiki WordPress
Author URI: http://apiki.com/
*/

if ( !function_exists( 'add_action' ) )
	exit('Oops, security check. File not allowed to be loaded directly');

/**
 * Hotlinks Manager
 *
 * @author Apiki WordPress
 * @version 1.0
 */
class HotlinksManager
{
	/**
	 * Just the plugin text domain. Never uses the constant. Always use the string below.
	 *
	 * @since 1.0
	 */
	const TEXT_DOMAIN = 'hotlinks-manager';

	/**
	 * The class constructor
	 * 
	 * @since 1.0
	 * @access public
	 */
	public function __construct()
	{
		add_action( 'plugins_loaded', array( &$this, '_load_plugin_textdomain' ) );
		add_action( 'init', array( &$this, 'redirect_to_hotmart' ) );
		add_action( 'admin_init', array( &$this, 'tinymce_button' ) );
		add_action( 'wp_enqueue_scripts',  array( &$this, 'enqueue_admin_styles' ) );
		add_action( 'wp_enqueue_scripts',  array( &$this, 'enqueue_admin_scripts' ) );
		add_action( 'admin_notices', array( &$this, 'notices_when_permalinks_are_disabled' ) );
		add_shortcode( 'hotlinks-generator', array( &$this, 'hotlinks_generator' ) );
	}

	/**
	 * Filter the url and redirects the user to the HotMart store
	 * 
	 * @since 1.0
	 * @access public
	 *
	 * @return void
	 */
	public function redirect_to_hotmart()
	{
		$url = esc_url( $_SERVER['REQUEST_URI'] );
		$url = explode( '/', $url );

		$affiliate = $this->return_next_if_found( 'a', $url );
		$source    = $this->return_next_if_found( 's', $url );
		$xcod      = $this->return_next_if_found( 'x', $url );

		$query_string = add_query_arg(
			array(
				'a'    => $affiliate,
				'src'  => $source,
				'xcod' => $xcod,
			),
			'http://www.hotmart.net.br/show.html'
		);

		if ( !$affiliate )
			return;

		wp_redirect( $query_string, $status = 302 );
		exit;
	}

	/**
	 * Return the next array element if found what is looking for
	 * 
	 * @since 1.0
	 * @access public
	 *
	 * @param mixed $what
	 * @param mixed $where
	 * @return mixed Value.
	 */
	public function return_next_if_found( $what, $where )
	{
		$search = array_search( $what, $where );
		
		if ($where[$search] == $what)
			return $where[$search + 1];

		return false;
	}

	/**
	 * Shortcode to be used on the page to generate the hotlinks
	 * 
	 * @since 1.0
	 * @access public
	 *
	 * @return string Hotlink
	 */
	public function hotlinks_generator()
	{
		$link = ( isset( $_POST['url_to_encode'] ) ) ? $this->generate_hotmart_url(  esc_url_raw( $_POST['url_to_encode'] ) ) : '';
		
		ob_start();
		?>
		<div class="hotlink-manager">
			<form action="<?php echo esc_attr( $_SERVER['REQUEST_URI'] ); ?>" method="post">
				<div itemscope itemtype="http://schema.org/Organization">
				  <a itemprop="url" href="http://www.hotmart.com.br/">
					<img itemprop="logo" src="http://www.hotmart.com.br/pages/index_files/images/hotmart.gif" alt="Hotmart" width="186" height="48" />
				  </a>
				</div>
				<label for="url_to_encode">URL:</label>
		
				<input type="text" name="url_to_encode" id="url_to_encode">
				
				<input type="submit" value="<?php _e( 'Generate link', 'hotlinks-manager' ); ?>">
			</form>
		</div>
		<?php if ( !empty($link) ): ?>
			<p>
				<a href="<?php echo esc_url( $link ); ?>"><?php echo esc_url( $link ); ?></a>
			</p>
		<?php endif; ?>
		
		<?
		$output = ob_get_contents();
		
		ob_end_clean();

		return $output;
	}

	/**
	 * Encode a normal url in a Hotmart Link
	 *
	 * @since 1.0 
	 * @access public
	 *
	 * @param string $url URL to encode
	 * @return string Encoded url
	 */
	public function generate_hotmart_url( $url )
	{
		$parsed_url = parse_url( $url, PHP_URL_QUERY );
		
		parse_str( $parsed_url );

		if ( empty( $a ) ) 
			return '';

		$new_url = sprintf( '%s/a/%s', home_url(), $a );

		if ( !empty( $src ) )
			$new_url = sprintf( '%s/s/%s' , $new_url, $src );

		if ( !empty( $xcod ) )
			$new_url = sprintf( '%s/x/%s', $new_url, $xcod );
			
		return $new_url;
	}

	/**
	 * Load the plugin text domain for translation.
	 *
	 * @since 1.0
	 * @access public
	 *
	 * @return void 
	 */
	public function _load_plugin_textdomain() 
	{
		load_plugin_textdomain( self::TEXT_DOMAIN, FALSE,  dirname( plugin_basename( __FILE__ ) ) . '/lang' );
	} 

	/**
	 * Enqueues admin styles
	 * 
	 * @since 1.0
	 * @access public
	 *
	 * @return void
	 */
	public function enqueue_admin_styles()
	{
		wp_register_style( 'hotlinks-manager-styles',  plugins_url( 'assets/css/style.min.css', __FILE__  ), array() , filemtime( plugin_dir_path( __FILE__ ) . 'assets/css/style.min.css' ), $media = 'all' );
		wp_enqueue_style( 'hotlinks-manager-styles' );
	}

	/**
	 * Enqueues admin scripts
	 *   
	 * @since 1.0
	 * @access public
	 *
	 * @return void
	 */
	public function enqueue_admin_scripts()
	{
		wp_register_style( 'hotlinks-manager-scripts',  plugins_url( 'assets/js/script.js', __FILE__  ), array() , filemtime( plugin_dir_path( __FILE__ ) . 'assets/js/script.js' ), $media = 'all' );
		wp_enqueue_style( 'hotlinks-manager-scripts' );
	}

	/**
	 * Hooks the button to the TinyMCE bar 
	 * 
	 * @since 1.0
	 * @access public
	 *
	 * @return void
	 */
	public function tinymce_button()
	{
		add_filter( 'mce_buttons',          array( &$this, 'tinymce_register_button' ) , 5 );
		add_filter( 'mce_external_plugins', array( &$this, 'tinymce_register_plugin' ),  5 );
	}

	/** 
	 * Register the button in the array of buttons in the tinymce bar. Runs with
	 * mce_buttons hook.
	 *
	 * @since 1.0
	 * @access public
	 *
	 * @param array $buttons The original array contains all buttons in tinymce
	 * @return array Buttons
	 */
	public function tinymce_register_button( $buttons )
	{        
		array_push( $buttons, 'separator', 'hotmart_link_generator' );

		return $buttons;
	}

	/**
	 * Register the TinyMCE javascript plugin in the array os plugins. Runs with
	 * mce_external_plugin hook.
	 *
	 * @since 1.0
	 * @access public
	 *
	 * @param array $plugins The original array contains all plugins
	 * @return array Plugins
	 */
	public function tinymce_register_plugin( $plugins )
	{
		$plugins['hotmart_link_generator'] = plugins_url( 'assets/js/mce-plugin.js', __FILE__  );
		
		return $plugins;
	}

	/**
	 * Notices when permalinks are disabled
 	 *
	 * @since 1.0
	 * @access public
	 *
	 * @return void
	 */
	public function notices_when_permalinks_are_disabled()
	{
		if ( get_option( 'permalink_structure' ) )
			return;
		?>
		<div class="updated">
			<p>
				<?php echo sprintf( __( 'Permalinks are disabled, Hotlinks Manager requires this functionality activated. <a href="%s">Activate it now.</a>', 'hotlinks-manager' ), admin_url( 'options-permalink.php' ) ); ?>
			</p>
		</div>
		<?php
	}
}

// Instance of HotlinksManager plugin
$hotlinkManager = new HotlinksManager();
