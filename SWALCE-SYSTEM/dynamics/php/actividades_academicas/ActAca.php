<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="../../../statics/css/index.css">
    <meta charset="utf-8">
    <title>Actividades académicas</title>
  </head>
  <body>
    <nav>
      <ul class="nav-list">
        <li class="nav-element" id="logo">SWALCE</li>
        <li class="nav-element">Actividades</li>
        <li class="nav-element">Inventario</li>
        <li class="nav-element">Material</li>
        <li class="nav-element">Notificaciones</li>
        <li class="nav-element">Opciones</li>
      </ul>
    </nav>
      <aside class="menu-aside" id="pru">
        <ul class="menu-aside-list">
          <li class="menu-element">Elemento 1</li>
          <li class="menu-element">Elemento 2</li>
          <li class="menu-element">Elemento 3</li>
          <li class="menu-element">Elemento 4</li>
        </ul>
      </aside>
      <section class="content">
        <div class="formulario">
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
      </section>
      <div class="invisible"></div>
    <footer>Esto es el footer</footer>
  </body>
</html>
