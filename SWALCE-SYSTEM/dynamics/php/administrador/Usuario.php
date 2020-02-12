<?php

  class Usuario{
    private $no_trabajador;
    private $nombre;
    private $rfc;
    private $fecha_nac
    private $email;
    private $contraseña;

    function __construct($no_trabajador, $nombre, $rfc, $fecha_nac, $email, $contraseña){
      $this -> no_trabajador = $no_trabajador;
      $this -> nombre = $nombre;
      $this -> rfc = $rfc;
      $this -> fecha_nac = $fecha_nac;
      $this -> email = $email;
      $this -> contraseña = $contraseña;
    }

    public function getNo_trabajador(){
      return $this -> no_trabajador;
    }
    public function getNombre(){
      return $this -> nombre;
    }
    public function getRfc(){
      return $this -> rfc;
    }
    public function getFecha_nac(){
      return $this -> fecha_nac;
    }
    public function getEmail(){
      return $this -> email;
    }
    public function getContraseña(){
      return $this -> contraseña;
    }
    public function setNo_trabajador($no_trabajador){
      $this -> no_trabajador = $no_trabajador;
    }
    public function setNombre($nombre){
      $this -> nombre = $nombre;
    }
    public function setRfc($rfc){
      $this -> rfc = $rfc;
    }
    public function setFecha_nac($fecha_nac){
      $this -> fecha_nac = $fecha_nac;
    }
    public function setEmail($email){
      $this -> email = $email;
    }
    public function setContraseña($contraseña){
      $this -> contraseña = $contraseña;
    }

  }

?>
