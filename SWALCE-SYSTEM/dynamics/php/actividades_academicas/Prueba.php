<?php
include "Proy_Tall.php";
include "Practica.php";

$nombre= $_POST['nombre'];
$descripcion= $_POST['descripcion'];
$asignatura= $_POST['asignatura'];
$titular= $_POST['titular'];

if(isset($_POST['material'])){

  $material= $_POST['material'];
  $tipoPract= $_POST['tipoPract'];
  $tipo= 1;
  $act= new Practica($nombre, $descripcion, $asignatura, $titular, $material, $tipoPract);

}else{

  if(isset($_POST['miembrosp'])){
    $miembros= $_POST['miembrosp'];
    $tipo= 2;
  }else{
    $miembros= $_POST['miembrost'];
    $tipo= 3;
  }
  $fecha_ini= $_POST['fecha_ini'];
  $fecha_fin= $_POST['fecha_fin'];
  $act= new Proy_Tall($nombre, $tipo, $descripcion, $asignatura, $titular,$miembros, $fecha_ini, $fecha_fin);
}
echo "Nombre: ".$act->getNombre()."<br/>";
echo "Descripcion: ".$act->getDescripcion()."<br/>";
echo "Actividad: ".$act->getTipo()."<br/>";
echo "Asignatura: ".$act->getAsignatura()."<br/>";
echo "Titular: ".$act->getTitular()."<br/>";
if($tipo==1){
echo "Material: ".$act->getMaterial()."<br/>";
echo "Tipo de practica: ".$act->getTipoPract()."<br/>";
}else{
echo "Miembros: ".$act->getMiembros()."<br/>";
echo "Fecha de inicio: ".$act->getFecha_ini()."<br/>";
echo "Fecha de fin: ".$act->getFecha_fin()."<br/>";
}
 ?>
