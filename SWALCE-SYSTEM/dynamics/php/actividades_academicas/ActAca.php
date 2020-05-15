<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Inventario</title>
  </head>
  <body>
    <nav>
      <ul>
        <li>SWALCE</li>
        <li>Actividades</li>
        <li>Inventario</li>
        <li>Material</li>
      </ul>
    </nav>
    <div class="pp">
      <div class="tabla">
        <form class="" action="Prueba.php" method="post">
          <label for="">Nombre:</label> <input type="text" name="nombre" value=""><br><br>
          <label for="">Descripcion:</label><input type="text" name="descripcion" value=""><br><br>
          <label for="">Asignatura:</label><input type="text" name="asignatura" value=""><br><br>
          <label for="">Titular:</label><input type="text" name="titular" value=""><br><br>
          <?php
          $actividad= $_POST['actividad'];
          if(isset($actividad)){
          if($actividad==1){
            echo '<label for="">Material:</label><input type="text" name="material" value=""><br><br>';
            echo '<label for="">Tipo de practica:</label><input type="text" name="tipoPract" value=""><br><br>';
          }else if($actividad==2){
            echo '<label for="">Miembros:</label><input type="text" name="miembrosp" value=""><br><br>';
            echo '<label for="">Fecha de inicio:</label><input type="text" name="fecha_ini" value=""><br><br>';
            echo '<label for="">Fecha de fin:</label><input type="text" name="fecha_fin" value=""><br><br>';
          }else if($actividad==3){
            echo '<label for="">Miembros:</label><input type="text" name="miembrost" value=""><br><br>';
            echo '<label for="">Fecha de inicio:</label><input type="text" name="fecha_ini" value=""><br><br>';
            echo '<label for="">Fecha de fin:</label><input type="text" name="fecha_fin" value=""><br><br>';
          }
        }
          ?>
          <input type="submit" value="Enviar">
        </form>
      </div>
    </div>
  </body>
</html>
