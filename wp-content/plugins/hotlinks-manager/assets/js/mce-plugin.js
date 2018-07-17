(function() {
    
    //tinymce.PluginManager.requireLangPack('hotmart_link_generator');

    tinymce.create('tinymce.plugins.hotmart_link_generator', {
		
        init : function(ed, url) {
            
            ed.addCommand('hotmart_link_generator', function() {

                    content =  '[hotlinks-generator]';

                    tinymce.execCommand('mceInsertContent', false, content);
            });

            ed.addButton('hotmart_link_generator', {
                title   : 'Shortcode',
                cmd     : 'hotmart_link_generator',
                image   : url + '../../images/icone.png'
            });

            // Add a node change handler, selects the button in the UI when a image is selected
            ed.onNodeChange.add( function( ed, cm, n ) {
                cm.setActive('hotmart_link_generator', n.nodeName == 'IMG');
            });
        },
        createControl : function(n, cm) {
            return null;
        },
        getInfo : function() {
            return {
                longname  : 'hotmart_link_generator',
                author 	  : 'Apiki',
                authorurl : 'http://apiki.com',
                infourl   : 'http://apiki.com',
                version   : "1.0"
            };
        }
    });

    // Register plugin
    tinymce.PluginManager.add( 'hotmart_link_generator', tinymce.plugins.hotmart_link_generator );
})();