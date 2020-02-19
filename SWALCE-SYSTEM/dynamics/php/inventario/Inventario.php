<?php
class Inventario{
  private $material;
  private $no_inv;
  private $marca;
  private $modelo;
  private $no_serie;
  private $cve_salon;
  private $ubicacion;
  private $cantidad;
  private $observaciones;
  private $clasificacion;
  private $estado;

public function __construct($material,$no_inv,$marca,$modelo,$no_serie,$cve_salon,$ubicacion,$cantidad,$observaciones,$clasificacion,$estado){

    $this->material=$material;
    $this->no_inv=$no_inv;
    $this->marca=$marca;
    $this->modelo=$modelo;
    $this->no_serie=$no_serie;
    $this->cve_salon=$cve_salon;
    $this->ubicacion=$ubicacion;
    $this->cantidad=$cantidad;
    $this->observaciones=$observaciones;
    $this->clasificacion=$clasificacion;
    $this->estado=$estado;
  }

  public function getMaterial(){
    return $this->material;
  }

  public function getNoInv(){
    return $this->no_inv;
  }

  public function getMarca(){
    return $this->marca;
  }

  public function getModelo(){
    return $this->modelo;
  }

  public function getCveSalon(){
    return $this->cve_salon;
  }

  public function getNoSerie(){
    return $this->no_serie;
  }

  public function getUbicacion(){
    return $this->ubicacion;
  }

  public function getCantidad(){
    return $this->cantidad;
  }

  public function getObservaciones(){
    return $this->observaciones;
  }

  public function getClasificacion(){
    return $this->clasificacion;
  }

  public function getEstado(){
    return $this->estado;
  }

  public function setNombre(){

  }

  public function setCantidad(){

  }

  public function baja(){

  }

  public function ata(){

  }
  public function generarInforme(){

  }
}

 ?>
