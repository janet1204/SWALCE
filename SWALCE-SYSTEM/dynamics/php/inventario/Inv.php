<?php
include "Inventario.php";
$lab = $_POST['lab'];
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
echo "hola";
$mat = new Inventario($lab,$material,$no_inv,$marca,$modelo,$no_serie,$cve_salon,$ubicacion,$cantidad,$observaciones,$clasificacion);
echo $mat->getLab()."<br>".$mat->getMaterial()."<br>".
$mat->getNoInv()."<br>".$mat->getMarca()."<br>".
$mat->getModelo()."<br>".$mat->getNoSerie()."<br>".
$mat->getCveSalon()."<br>".$mat->getUbicacion()."<br>".
$mat->getCantidad()."<br>".$mat->getObservaciones()."<br>".
$mat->getClasificacion();
?>
