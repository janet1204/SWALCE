$(document).ready(function(){
  $("[name=tipo_usuario]").click(function(){
    var content_prof=document.getElementById("alta_profesor");
    var content_labsta=document.getElementById("alta_laboratorista");
    var content_coord=document.getElementById("alta_coordinador");
    var content_admin=document.getElementById("alta_administrador");
    if($(this).val()==1){
      content_prof.style.display = "block";
    }else {
      content_prof.style.display = "none";
    }
    if($(this).val()==2){
      content_labsta.style.display = "block";
    }else {
      content_labsta.style.display = "none";
    }
    if($(this).val()==3){
      content_coord.style.display = "block";
    }else {
      content_coord.style.display = "none";
    }
    if($(this).val()==4){
      content_admin.style.display = "block";
    }else {
      content_admin.style.display = "none";
    }  });
});
