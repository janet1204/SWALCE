<?php
include_once "ActividadesAcademicas.php";
class Practica extends ActividadesAcademicas{
    private $material;
    private $tipoPract;

    public function __construct(string $nombre, $descripcion, $asignatura, $titular, $material, $tipoPract){
        parent::__construct($nombre, self::PRACTICA, $descripcion, $asignatura, $titular);
        $this->material= $material;
        $this->tipoPract= $tipoPract;
    }

    public function getMaterial(){
        return $this->material;
    }
    public function getTipoPract(){
        return $this->tipoPract;
    }
    public function setMaterial($material){
        $this->material= $material;
    }
    public function setTipoPract($tipoPract){
        $this->tipoPract= $tipoPract;
    }
    public function getTipo(){
      return "practica";
    }
}
?>
