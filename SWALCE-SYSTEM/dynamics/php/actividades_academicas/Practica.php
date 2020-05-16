<?php
include_once "ActividadesAcademicas.php";
class Practica extends ActividadesAcademicas{
    private $material;//cantidad y guardar en la tabla mat_act, debe ser un areeglo de materiales
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
    public function getTipoString(){
      return "practica";
    }
}
?>
