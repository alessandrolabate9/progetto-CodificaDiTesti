//Gestisce la comparsa del messaggio di fronte e retro delle cartoline
$(document).ready(function() {
    var bottone1 = $('input:checked[name=radio_uno]').val();
    var bottone2 = $('input:checked[name=radio_due]').val();
//descrizione
    $('.messaggio_retro').hide();

    $('.messaggio_retro2').hide();

    $('input[name=radio_uno]').click( function(){
        bottone1 = $('input:checked[name=radio_uno]').val();
        if (bottone1 == "fronte"){
            $('.messaggio_retro').hide();
            $('.messaggio_fronte').show();
        }else{
            $('.messaggio_fronte').hide();
            $('.messaggio_retro').show();            
        }
        
    });

   
    $('input[name=radio_due]').click( function(){
        bottone2 = $('input:checked[name=radio_due]').val();
        if (bottone2 == "fronte"){
            $('.messaggio_retro2').hide();
            $('.messaggio_fronte2').show();
        }else{
            $('.messaggio_fronte2').hide();
            $('.messaggio_retro2').show();            
        }
        
    }); 
    
});