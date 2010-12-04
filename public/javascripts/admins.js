/**
 * Created by .
 * User: Loner
 * Date: 24.11.2010
 * Time: 0:05:10
 * To change this template use File | Settings | File Templates.
 */
$(document).ready(function() {

    $(function() {
            $( "#tabs" ).tabs({
                ajaxOptions: {
                    error: function( xhr, status, index, anchor ) {
                        $( anchor.hash ).html(
                            "Couldn't load this tab. We'll try to fix this as soon as possible. " +
                            "If this wouldn't be a demo." );
                    }
                } ,
                cache: true
            });
        });
    setTimeout(function() {
        $('div.flash').fadeOut('slow');
    }, 10 * 1000); // <-- time in milliseconds
});
