<?php
    require ("Conexión.php");
    $msgError= NULL;
    $rs = NULL;
      $rfc = $_POST['rfc'];
      $query =  "SELECT datos_per.rfc, datos_per.nombre, materias.clave_col, materias.nom_mat, correos.correo FROM datos_per INNER JOIN prof_mat ON datos_per.rfc = prof_mat.rfc INNER JOIN materias ON prof_mat.clave_mat = materias.clave_mat INNER JOIN correos ON datos_per.rfc = correos.rfc WHERE datos_per.rfc = '$rfc'";
      $cn = connect($error);
      $rs = mysqli_query($cn,$query);
      if(mysqli_num_rows($rs) == 0){
        $msgError = " "."RFC"." ".$rfc." "."No existe";
        $rs = null;
      }
    if ($msgError) {
      echo "Error".$msgError;
    }
    if ($row = mysqli_fetch_array($rs,MYSQLI_NUM)){
          printf ("<input type='button' id='add' value='Dar de Alta'>
          RFC: %s </br> Nombre: %s </br> Correo:  %s </br> Materia:  %s </br>",
          $row[0], $row[1],$row[4], $row[3]);
          while($row = mysqli_fetch_array($rs,MYSQLI_NUM)){
            printf ("Materia: %s </br>",$row[3]);
          }
        }

    $rs->close();
    $rpta = mysqli_close($cn);
?>
