<?php
include "Usuario.php";
class Administrador extends Usuario{

  function __construct($no_trabajador, $nombre, $rfc, $fecha_nac, $email, $contraseña)
  {
    parent :: __construct($no_trabajador, $nombre, $rfc, $fecha_nac, $email, $contraseña);
  }
}
?>
