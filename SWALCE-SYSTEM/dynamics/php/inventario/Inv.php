<?php
include "Inventario.php";
include "../Conexion.php";

$material = $_POST['material'];
$no_inv = $_POST['no_inv'];
$marca = $_POST['marca'];
$modelo = $_POST['modelo'];
$no_serie = $_POST['no_serie'];
$cve_salon = $_POST['cve_salon'];
$ubicacion = $_POST['ubicacion'];
$cantidad = $_POST['cantidad'];
$observaciones = $_POST['observaciones'];
$clasificacion = $_POST['clasificacion'];
$estado = 1;

$mat = new Inventario($material,$no_inv,$marca,$modelo,$no_serie,
$cve_salon,$ubicacion,$cantidad,$observaciones,$clasificacion,$estado);
echo $mat->getMaterial()."<br>".$mat->getNoInv()."<br>".$mat->getMarca()."<br>".
$mat->getModelo()."<br>".$mat->getNoSerie()."<br>".
$mat->getCveSalon()."<br>".$mat->getUbicacion()."<br>".
$mat->getCantidad()."<br>".$mat->getObservaciones()."<br>".
$mat->getClasificacion()."<br>".$mat->getEstado();
Conexion::altaInventario($mat->getMaterial(), $mat->getNoInv(), $mat->getMarca(),
$mat->getModelo(), $mat->getNoSerie(),$mat->getCveSalon(), $mat->getUbicacion(), $mat->getCantidad(),
$mat->getObservaciones(), $mat->getClasificacion(),$mat->getEstado());
?>
