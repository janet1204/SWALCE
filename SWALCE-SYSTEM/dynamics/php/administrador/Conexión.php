<?php
    function connect(&$msg){
    $cn = mysqli_connect("localhost","root");
    if(!$cn){
      $msg = "Error en la conexión".mysqli_error();
      return FALSE;
    }
    $rpta = mysqli_select_db($cn,"PREPA6");
    if(!$rpta){
      $msg = "Base de Datos NO EXISTE";
      mysqli_close($cn);
      return FALSE;
    }
    return $cn;
  }
 ?>
