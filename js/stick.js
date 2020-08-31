//Gestisce la barra di navigazione
$( document ).ready(function() {
    window.onscroll = function() {myFunction()};
    
    var head = document.getElementById("menu");
    var sticky = head.offsetTop;
    
    function myFunction() {
      if (window.pageYOffset > sticky) {
        head.classList.add("menu-stick");
      } else {
        head.classList.remove("menu-stick");
    
        head.classList.add("menu-nos");
      }
    }

    /* Gestisce classe active nella barra di navigazione */
    $('.container li a').click(function(){
      $('a').removeClass('active');
      $(this).addClass('active');
    });
    
});
