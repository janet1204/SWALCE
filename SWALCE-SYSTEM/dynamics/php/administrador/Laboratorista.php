<?php
include "Usuario.php";
class Laboratorista extends Usuario{

  private laboratorio;
  private horario;

  function __construct($no_trabajador, $nombre, $rfc, $fecha_nac, $email, $contraseña, $laboratorio, $horario){
    parent :: __construct($no_trabajador, $nombre, $rfc, $fecha_nac, $email, $contraseña);
    $this -> laboratorio = $laboratorio;
    $this -> horario = $horario;
  }
  public function getLaboratorio(){
    return $this -> laboratorio;
  }
  public function getHorario(){
    return $this -> horario;
  }
}
?>
