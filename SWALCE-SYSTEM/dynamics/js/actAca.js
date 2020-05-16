//xhttp = new XMLHttpRequest();

function opciones(actividad){
    if(actividad==1){
    console.log("practica");
  }else if (actividad==2) {
    console.log("proyecto");
  }else {
    console.log("taller");
  }
  if($('.opciones').length==0){
    $('.formulario').append('<div class="opciones"></div>');
    $('.opciones').append('<button type="button" class="alta">Dar de alta</button>');
    $('.alta').click(()=>alta(actividad));
    $('.opciones').append('<button type="button" class="baja">Dar de baja</button>');
    $('.opciones').append('<button type="button" class="cambio">Cambiar</button>');
    $('.opciones').append('<button type="button" class="consulta">Consultar</button>');
  }
}

function alta(actividad) {
  $('.formulario').append('<div class="form"></div>');
  $('.form').append('<form class="formu" action="../dynamics/php/actividades_academicas/Prueba.php" method="post"></form>');
  $('.formu').append('<label for="">Nombre:</label> <input type="text" name="nombre" value=""><br><br>');
  $('.formu').append('<label for="">Descripcion:</label><input type="text" name="descripcion" value=""><br><br>');
  $('.formu').append('<label for="">Asignatura:</label><input type="text" name="asignatura" value=""><br><br>');
  $('.formu').append('<label for="">Titular:</label><input type="text" name="titular" value=""><br><br>');
  if (actividad==1) {
    $('.formu').append('<label for="">Material:</label><input type="text" name="material" value=""><br><br>');
    $('.formu').append('<label for="">Tipo de practica:</label><input type="text" name="tipoPract" value=""><br><br>');
  }else {
    if(actividad==2)
      $('.formu').append('<label for="">Miembros:</label><input type="text" name="miembrosp" value=""><br><br>');
    else
      $('.formu').append('<label for="">Miembros:</label><input type="text" name="miembrost" value=""><br><br>');
    $('.formu').append('<label for="">Fecha de inicio:</label><input type="text" name="fecha_ini" value=""><br><br>');
    $('.formu').append('<label for="">Fecha de fin:</label><input type="text" name="fecha_fin" value=""><br><br>');
  }
  $('.formu').append('<input type="submit" value="Enviar">');
}

// function botones(accion){
// var form= new FormData();
// form.append('accion',accion);
// xhttp.onreadystatechange = function(){
//   if (this.readyState == 4 && this.status == 200){
//     document.querySelector(id).innerHTML = this.responseText;
//   }
// };
// xhttp.open('POST','../dynamics/php/actividades_academicas/Prueba.php');
// xhttp.send(form);
// }

$('.practica').click(()=>opciones(1));
$('.proyecto').click(()=>opciones(2));
$('.taller').click(()=>opciones(3));

// $('.baja').click(()=>);
// $('.cambio').click(()=>);
// $('.consulta').click(()=>);
