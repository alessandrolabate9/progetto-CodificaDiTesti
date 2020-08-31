//Gestisce la comparsa delle immagini nelle finestre modali
$(document).ready(function() {
    var head = document.getElementById("menu");
    
    /* CARTOLINA 74 */
    var modal1 = document.getElementById("myModal1");
    var modal2 = document.getElementById("myModal2");

    
    var imgf1 = document.getElementById("cartf1");
    var imgr1 = document.getElementById("cartr1");
    
    var modalImg1 = document.getElementById("imgf1");
    var modalImg2 = document.getElementById("imgr1");

    imgf1.onclick = click_image1;
    imgr1.onclick = click_image2;
    
    var span0 = document.getElementsByClassName("close")[0];
    var span1 = document.getElementsByClassName("close")[1];
    span0.onclick = click_span0;
    span1.onclick = click_span1;
    /*CARTOLINA 78 */
    
    var modal3 = document.getElementById("myModal3");
    var modal4 = document.getElementById("myModal4");
    
    var imgf2 = document.getElementById("cartf2");
    var imgr2 = document.getElementById("cartr2");
    
    var modalImg3 = document.getElementById("imgf2");
    var modalImg4 = document.getElementById("imgr2");
    
    imgf2.onclick = click_image3;
    imgr2.onclick = click_image4;
    
    var span2 = document.getElementsByClassName("close")[2];
    var span3 = document.getElementsByClassName("close")[3];
    span2.onclick = click_span2;
    span3.onclick = click_span3;
    
/* Apertura img */
function click_image1 (){
    modal1.style.display = "block";
    modalImg1.src = "img/7694-074F.jpg";
    document.getElementById("testo_1").style.display = "block";
    head.classList.remove("menu-stick");    
}

function click_image2 (){
    modal2.style.display = "block";
    modalImg2.src = "img/7694-074R.jpg";
    document.getElementById("testo_2").style.display = "block";
    head.classList.remove("menu-stick");    
}


    function click_image3 (){
        modal3.style.display = "block";
        modalImg3.src = "img/7694-078F.jpg";
        document.getElementById("testo_3").style.display = "block";
        head.classList.remove("menu-stick");    
    }
    function click_image4 (){
        modal4.style.display = "block";
        modalImg4.src = "img/7694-078R.jpg";
        document.getElementById("testo_4").style.display = "block";
        head.classList.remove("menu-stick");    
    }
    
    
/* Chiusura img*/ 
    
function click_span0 (){
    modal1.style.display = "none";
    head.classList.add("menu-stick");
  }
  function click_span1 (){
    modal2.style.display = "none";
    head.classList.add("menu-stick");
  }
    function click_span2 (){
      modal3.style.display = "none";
      head.classList.add("menu-stick");
    }
    function click_span3 (){
        modal4.style.display = "none";
        head.classList.add("menu-stick");
      }
});

