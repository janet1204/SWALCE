<?php
public class Conexion{
  public $conexion;

  public function conectar(){
    $this->conexion = mysqli_connect( "localhost","root", "", "swalce") or die
    ("No se ha podido conectar al servidor de Base de datos");

    if(!$conexion){
	     echo mysqli_connect_error();
	     echo mysqli_connect_errno();
       exit();
    }
  }
  public function desconectar(){
    mysqli_close( $conexion );
  }
  

}
?>
