<?php
class ActividadesAcademicas{
  public const PRACTICA= 1;
  public const PROYECTO= 2;
  public const TALLER= 3;
    private $nombre;
    protected $tipo;
    private $descripcion;
    private $asignatura;
    private $titular;

    protected function __construct($nombre, $tipo, $descripcion, $asignatura, $titular){
        $this->nombre= $nombre;
        $this->tipo= $tipo;
        $this->descripcion= $descripcion;
        $this->asignatura= $asignatura;
        $this->titular= $titular;
    }

    public function getNombre(){
        return $this->nombre;
    }
    public function getTipo(){
    }
    public function getDescripcion(){
        return $this->descripcion;
    }
    public function getAsignatura(){
        return $this->asignatura;
    }
    public function getTitular(){
        return $this->titular;
    }
    public function setNombre($nombre){
        $this->nombre= $nombre;
    }
    public function setTipo(){
        $this->tipo= $tipo;
    }
    public function setDescripcion(){
        $this->descripcion= $descripcion;
    }
    public function setAsignatura(){
        $this->asignatura= $asignatura;
    }
    public function setTitular(){
        $this->titular= $titular;
    }
    public function getInforme(){

    }
}
?>
