$(document).ready(function(){

  var aside = document.getElementById("men-as");
  var content_alta_usu = document.getElementById("content-alta-usuarios");
  var content_alta_aca = document.getElementById("content-alta-actividades");
  var color_active_1 = "#FF6161";

  $(".nav-element").click(function(){

    if($(this).attr('id')=="logo"){
      var elemento = $(this).attr('id');
      $("#"+elemento).css('color', color_active_1);
    }else {
      $("#logo").css('color', 'black');
    }

    if($(this).attr('id')=="nav-element-1"){
      content_alta_usu.style.display = "block";
      var elemento = $(this).attr('id');
      $("#"+elemento).css('color', color_active_1);
      $("#menu-element-1").css('color', 'red');
      $(document).ready(function(){
          $(".menu-element").click(function(){
            if($(this).attr('id')=="menu-element-1"){
              content_alta_usu.style.display = "block";
              $("#menu-element-1").css('color', 'red');
            }else{
              $("#menu-element-1").css('color', 'black')
              content_alta_usu.style.display = "none";
            }
            if($(this).attr('id')=="menu-element-2"){
              $("#menu-element-2").css('color', 'red');
            }else{
              $("#menu-element-2").css('color', 'black')
            }
            if($(this).attr('id')=="menu-element-3"){
              content_alta_aca.style.display = "block";
              $("#menu-element-3").css('color', 'red');
            }else{
              $("#menu-element-3").css('color', 'black')
              content_alta_aca.style.display = "none";
            }
            if($(this).attr('id')=="menu-element-4"){
              $("#menu-element-4").css('color', 'red');
            }else{
              $("#menu-element-4").css('color', 'black',  'text-decoration')
            }
        });
      });
    }else {
      content_alta_usu.style.display = "none";
      $("#nav-element-1").css('color', 'black');
      for (var i = 0; i < 5; i++) {
        $("#menu-element-" + i).css('color', 'black')
      }
    }

    if($(this).attr('id')=="nav-element-2"){
      var elemento = $(this).attr('id');
      $("#"+elemento).css('color', color_active_1);
    }else {
      $("#nav-element-2").css('color', 'black');
    }

    if($(this).attr('id')=="nav-element-3"){
      var elemento = $(this).attr('id');
      $("#"+elemento).css('color', color_active_1);
    }else {
      $("#nav-element-3").css('color', 'black');
    }

    if($(this).attr('id')=="nav-element-4"){
      var elemento = $(this).attr('id');
      $("#"+elemento).css('color', color_active_1);
    }else {
      $("#nav-element-4").css('color', 'black');
    }

    if($(this).attr('id')=="nav-element-4"){
      var elemento = $(this).attr('id');
      $("#"+elemento).css('color', color_active_1);
    }else {
      $("#nav-element-4").css('color', 'black');
    }

    if($(this).attr('id')=="nav-element-5"){
      var elemento = $(this).attr('id');
      $("#"+elemento).css('color', color_active_1);
    }else {
      $("#nav-element-5").css('color', 'black');
    }

  });
});
