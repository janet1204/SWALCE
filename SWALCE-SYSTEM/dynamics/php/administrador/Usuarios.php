<?php

  class Usuario{
    private $no_trabajador;
    private $nombre;
    private $rfc;
    private $fecha_nac;
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

    public function getno_trabajador(){
      return $this -> no_trabajador;
    }
    public function getnombre(){
      return $this -> nombre;
    }
    public function getrfc(){
      return $this -> rfc;
    }
    public function getfecha_nac(){
      return $this -> fecha_nac;
    }
    public function getemail(){
      return $this -> email;
    }
    public function getontraseña(){
      return $this -> contraseña;
    }
    public function setno_trabajador($no_trabajador){
      $this -> no_trabajador = $no_trabajador;
    }
    public function setnombre($nombre){
      $this -> nombre = $nombre;
    }
    public function setrfc($rfc){
      $this -> rfc = $rfc;
    }
    public function setfecha_nac($fecha_nac){
      $this -> fecha_nac = $fecha_nac;
    }
    public function setemail($email){
      $this -> email = $email;
    }
    public function setcontraseña($contraseña){
      $this -> contraseña = $contraseña;
    }

  }

?>
