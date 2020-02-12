<?php
include "Usuario.php";
class Administrador extends Usuario{

  private $colegio;
  private $asignaturas;
  private $grupos;
  private $horario;

  function __construct($no_trabajador, $nombre, $rfc, $fecha_nac, $email, $contraseña, $colegio, $asignaturas, $grupos, $horario)
  {
    parent :: __construct($no_trabajador, $nombre, $rfc, $fecha_nac, $email, $contraseña);
    $this -> colegio = $colegio;
    $this -> asignaturas = $asignaturas;
    $this -> grupos = $grupos;
    $this -> horarios = $horario;
  }

  public function getColegio()
  {
    return $this -> coleegio;
  }
  public function getAsignaturas()
  {
    return $this -> asignaturas;
  }
  public function getGrupos()
  {
    return $this -> grupos;
  }
  public function getHorario()
  {
    return $this -> horario;
  }
}
?>
