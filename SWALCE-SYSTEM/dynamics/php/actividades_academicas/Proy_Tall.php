<?php
include_once "ActividadesAcademicas.php";
class Proy_Tall extends ActividadesAcademicas{
    private $miembros;
    private $fecha_ini;//agregar a horario lab
    private $fecha_fin;//Agregar a horario lab
    //Agregar tipo a la base de datos

    public function __construct($nombre, $tipo, $descripcion, $asignatura, $titular,$miembros, $fecha_ini, $fecha_fin){
        parent::__construct($nombre, $tipo, $descripcion, $asignatura, $titular);
        $this->miembros= $miembros;
        $this->fecha_ini= $fecha_ini;
        $this->fecha_fin= $fecha_fin;
    }

    public function getMiembros(){
        return $this->miembros;
    }
    public function getFecha_ini(){
        return $this->fecha_ini;
    }
    public function getFecha_fin(){
        return $this->fecha_fin;
    }
    public function setMiembros($miembros){
        $this->miembros= $miembros;
    }
    public function setFecha_ini($fecha_ini){
        $this->fecha_ini= $fecha_ini;
    }
    public function setFecha_fin(){
        $this->fecha_fin= $fecha_fin;
    }
    public function getTipoString(){
      if($this->tipo== self::PROYECTO)
        return "proyecto";
      else {
        return "taller";
      }
    }
}
?>
