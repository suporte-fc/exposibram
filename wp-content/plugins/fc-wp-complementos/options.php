<?php

if ( (int)$_GET['remiss'] == 1 ) {
	// retorna com a mensagem de plugins obrigatorios que foi dismissed
	TGM_Plugin_Activation::update_dismiss();
}

?>

<div class="wrap">
<?php screen_icon(); ?>
<h2><?php _e('Options for FC Complements','fcwpc'); ?></h2>

<form method="post" action="options.php">

<?php
settings_fields( 'fcwpc' );

echo '<h3>'._('Security').'</h3>';
?>
<table class="form-table">

    <tr valign="top">
        <th scope="row" style="text-align:right;"><label for="fcwpc_ssl"><?php _e('Force SSL?', 'fcwpc'); ?></label></th>
        <td>
        	<select id="fcwpc_ssl" name="fcwpc_ssl">
                <option value="0"<?php
        if ( (int)get_option('fcwpc_ssl') == 0 ) {
			echo ' selected="selected"';
		}
		?>><?php _e('No','fcwpc'); ?></option>
                <option value="1"<?php
        if ( (int)get_option('fcwpc_ssl') == 1 ) {
			echo ' selected="selected"';
		}
		?>><?php _e('Yes','fcwpc'); ?></option>
        	</select>
        </td>
    </tr>

    <tr valign="top">
        <th scope="row" style="text-align:right;"><label for="fcwpc_logout_home"><?php _e('Send to home on logout?', 'fcwpc'); ?></label></th>
        <td>
        	<select id="fcwpc_logout_home" name="fcwpc_logout_home">
                <option value="0"<?php
        if ( (int)get_option('fcwpc_logout_home') == 0 ) {
			echo ' selected="selected"';
		}
		?>><?php _e('No','fcwpc'); ?></option>
                <option value="1"<?php
        if ( (int)get_option('fcwpc_logout_home') == 1 ) {
			echo ' selected="selected"';
		}
		?>><?php _e('Yes','fcwpc'); ?></option>
        	</select>
        </td>
    </tr>

    <tr valign="top">
        <th scope="row" style="text-align:right;"><label for="fcwpc_strong_password"><?php _e('Permitir senha fraca no cadastro?', 'fcwpc'); ?></label></th>
        <td>
        	<select id="fcwpc_strong_password" name="fcwpc_strong_password">
                <option value="0"<?php
        if ( (int)get_option('fcwpc_strong_password') == 0 ) {
			echo ' selected="selected"';
		}
		?>><?php _e('No','fcwpc'); ?></option>
                <option value="1"<?php
        if ( (int)get_option('fcwpc_strong_password') == 1 ) {
			echo ' selected="selected"';
		}
		?>><?php _e('Yes','fcwpc'); ?></option>
        	</select>
        </td>
    </tr>

        <tr valign="top">
        <th scope="row" style="text-align:right;"><label for="fcwpc_erro"><?php _e('Paginas de erro', 'fcwpc'); ?></label></th>
        <td>

             <?php
            $fcwpc_erro = get_option('fcwpc_erro');
        ?>

           
               <input type="checkbox" name="fcwpc_erro[400]" value="400" <?php if ( in_array( "400", $fcwpc_erro ) ){ echo 'checked'; } ?> >400: Requisi&ccedil;&atilde;o inv&aacute;lida.<br>
               <input type="checkbox" name="fcwpc_erro[401]" value="401" <?php if ( in_array( "401", $fcwpc_erro ) ){ echo 'checked'; } ?> >401: Autentica&ccedil;&atilde;o necess&aacute;ria.<br>
               <input type="checkbox" name="fcwpc_erro[402]" value="402" <?php if ( in_array( "402", $fcwpc_erro ) ){ echo 'checked'; } ?> >402: Pagamento necess&aacute;rio.<br>
               <input type="checkbox" name="fcwpc_erro[403]" value="403" <?php if ( in_array( "403", $fcwpc_erro ) ){ echo 'checked'; } ?> >403: Voc&ecirc; n&atilde;o tem permiss&atilde;o para acessar esta p&aacute;gina.<br>
               <input type="checkbox" name="fcwpc_erro[404]" value="404" <?php if ( in_array( "404", $fcwpc_erro ) ){ echo 'checked'; } ?> >404: P&aacute;gina n&atilde;o encontrada.<br>
               <input type="checkbox" name="fcwpc_erro[405]" value="405" <?php if ( in_array( "405", $fcwpc_erro ) ){ echo 'checked'; } ?> >405: M&eacute;todo n&atilde;o permitido.<br> 
               <input type="checkbox" name="fcwpc_erro[406]" value="406" <?php if ( in_array( "406", $fcwpc_erro ) ){ echo 'checked'; } ?> >406: N&atilde;o aceit&aacute;vel.<br>
               <input type="checkbox" name="fcwpc_erro[407]" value="407" <?php if ( in_array( "407", $fcwpc_erro ) ){ echo 'checked'; } ?> >407: Autentica&ccedil;&atilde;o de proxy necess&aacute;ria.<br>
               <input type="checkbox" name="fcwpc_erro[408]" value="408" <?php if ( in_array( "408", $fcwpc_erro ) ){ echo 'checked'; } ?> >408: Tempo de requisi&ccedil;&atilde;o esgotou.<br>
               <input type="checkbox" name="fcwpc_erro[409]" value="409" <?php if ( in_array( "409", $fcwpc_erro ) ){ echo 'checked'; } ?> >409: Conflito.<br>
               <input type="checkbox" name="fcwpc_erro[410]" value="410" <?php if ( in_array( "410", $fcwpc_erro ) ){ echo 'checked'; } ?> >410: Gone.<br>
               <input type="checkbox" name="fcwpc_erro[500]" value="500" <?php if ( in_array( "500", $fcwpc_erro ) ){ echo 'checked'; } ?> >500: Erro interno do servidor.<br> 
               <input type="checkbox" name="fcwpc_erro[501]" value="501" <?php if ( in_array( "501", $fcwpc_erro ) ){ echo 'checked'; } ?> >501: Não implementado.<br>
               <input type="checkbox" name="fcwpc_erro[502]" value="502" <?php if ( in_array( "502", $fcwpc_erro ) ){ echo 'checked'; } ?> >502: Bad Gateway.<br>
               <input type="checkbox" name="fcwpc_erro[503]" value="503" <?php if ( in_array( "503", $fcwpc_erro ) ){ echo 'checked'; } ?> >503: Serviço indisponível.<br>
               <input type="checkbox" name="fcwpc_erro[504]" value="504" <?php if ( in_array( "504", $fcwpc_erro ) ){ echo 'checked'; } ?> >504: Gateway Time-Out.<br>
               <input type="checkbox" name="fcwpc_erro[505]" value="505" <?php if ( in_array( "505", $fcwpc_erro ) ){ echo 'checked'; } ?> >505: HTTP Version not supported.<br>
               



        </td>
    </tr>

     <tr valign="top">
        <th scope="row" style="text-align:right;"><label for="fcwpc_ua"><?php _e('UA', 'fcwpc'); ?></label></th>
        <td>
    <?php
            $fcwpc_ua = get_option('fcwpc_ua');
        ?>

            <input type="text" name="fcwpc_ua" value='<?php echo $fcwpc_ua; ?>'><br>

   </td>
    </tr>

</table>
<?php submit_button(); ?>
</form>
