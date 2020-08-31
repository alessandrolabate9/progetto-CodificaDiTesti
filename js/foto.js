//Gestisce gli eventi legati alle immagini delle cartoline
$(document).ready(function() {
    var vbottone1 = $('input:checked[name=radio_uno]').val();
    var vbottone2 = $('input:checked[name=radio_due]').val();
//foto
    $('#cartr1').hide();
    $('#cartr2').hide();
//descrizione
  

    $('input[name=radio_uno]').click( function(){
        vbottone1 = $('input:checked[name=radio_uno]').val();
        if (vbottone1 == "fronte"){
            $('#cartr1').hide();
            $('#cartf1').show();
        }else{
            $('#cartr1').show();
            $('#cartf1').hide();
        }
        
    });

    $('input[name=radio_due]').click( function(){
        vbottone2 = $('input:checked[name=radio_due]').val();
        if (vbottone2 == "fronte"){
            $('#cartr2').hide();
            $('#cartf2').show();

        }else{
            $('#cartr2').show();
            $('#cartf2').hide();  
        }
        
    });
    
});
