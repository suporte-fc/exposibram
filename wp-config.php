<?php
/** Enable W3 Total Cache */
define('WP_CACHE', true); // Added by W3 Total Cache



/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/pt-br:Editando_wp-config.php
 *
 * @package WordPress
 */

define ('WPLANG', 'pt_BR');
setlocale(LC_ALL, 'pt_BR');

define('WP_MEMORY_LIMIT', '512M');
define('FS_METHOD','direct');
define('AUTOMATIC_UPDATER_DISABLED', true);
//define( 'WP_AUTO_UPDATE_CORE', false );

if( preg_match('/localhost/',$_SERVER['HTTP_HOST']) || preg_match('/192.168.0.210/',$_SERVER['HTTP_HOST']) ){
	function wp_mail(){}
	define( 'DB_NAME', 'wppadrao' );
	define( 'DB_USER', 'root' );
	define( 'DB_PASSWORD', 'lv1502fabr' );
	define( 'DB_HOST', 'localhost' );
} elseif( preg_match('/alexandre.fc.tmp.br/',$_SERVER['HTTP_HOST']) ){
	function wp_mail(){}
	define( 'DB_NAME', 'fc_exposibram' );
	define( 'DB_USER', 'fc_alexandre' );
	define( 'DB_PASSWORD', 'lv1502fabr' );
	define( 'DB_HOST', 'localhost' );
} else {
	
}
/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8' );
/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define( 'DB_COLLATE', '' );

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'coloque a sua frase única aqui' );
define( 'SECURE_AUTH_KEY',  'coloque a sua frase única aqui' );
define( 'LOGGED_IN_KEY',    'coloque a sua frase única aqui' );
define( 'NONCE_KEY',        'coloque a sua frase única aqui' );
define( 'AUTH_SALT',        'coloque a sua frase única aqui' );
define( 'SECURE_AUTH_SALT', 'coloque a sua frase única aqui' );
define( 'LOGGED_IN_SALT',   'coloque a sua frase única aqui' );
define( 'NONCE_SALT',       'coloque a sua frase única aqui' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix  = 'fc_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://codex.wordpress.org/pt-br:Depura%C3%A7%C3%A3o_no_WordPress
 */
if ( preg_match('/localhost/',$_SERVER['HTTP_HOST']) ) {
	if ( !is_dir(realpath(dirname(__FILE__)) . '/wp-content/logs/') )
		mkdir( realpath(dirname(__FILE__)) . '/wp-content/logs/' );
	$log_path = realpath(dirname(__FILE__)) . '/wp-content/logs/'.date('Y-m-d',strtotime(date('Y-m-d 00:00:00')." - 1 day")).'.log';
	$log_path_1mes = realpath(dirname(__FILE__)) . '/wp-content/logs/'.date('Y-m-d',strtotime(date('Y-m-d 00:00:00')." - 8 days")).'.log';

	if (!is_file($log_path)) {
		$file = fopen($log_path, 'w') or die("can't create log");
		fclose($file);
	}
	if (is_file($log_path_1mes)) {
		@unlink($log_path_1mes);
	}
	error_reporting(E_ERROR);
	define('WP_DEBUG', false);
	define('WP_DEBUG_DISPLAY', false);

	@ini_set('log_errors',1);
	@ini_set('display_errors',0);
	@ini_set('error_log',$log_path);

	if(!function_exists('_log')){
		function _log( $message ) {
			if( is_array( $message ) || is_object( $message ) ){
				error_log( 'uid: ' . get_current_user_id() . ' -> ' . print_r( $message, true ) );
			} else {
				error_log( $message );
			}
		}
	}

} else {
	define('WP_DEBUG', false);
	define('WP_DEBUG_DISPLAY', false);
	@ini_set('display_errors',0);
	if(!function_exists('_log')){
		function _log() {
		}
	}
}

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Configura as variáveis e arquivos do WordPress. */
require_once( ABSPATH . 'wp-settings.php' );
//Disable File Edits
define('DISALLOW_FILE_EDIT', true);