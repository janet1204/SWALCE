<?php
class Conexion{
  private const USUARIO= "root";
  private const CONTRASEÑA= "";
  private const BD= "swalce";
  public static $conexion;

  public function conectar(){
    self::$conexion = mysqli_connect( "localhost", self::USUARIO, self::CONTRASEÑA, self::BD);
    if(!self::$conexion){
	     echo mysqli_connect_error();
	     echo mysqli_connect_errno();
    }
  }
  public function desconectar(){
    mysqli_close( self::$conexion );
  }

  public function altaPract($nombre, $descripcion, $tipoPract, $claveMat, $titular){
    self::conectar();
    if(self::$conexion){
      $insertar="INSERT INTO practicas (nombre,descripcion,tipo_practica,clave_mat, profesor) VALUES
      ('$nombre', '$descripcion', '$tipoPract', '$claveMat', '$titular')";
      $respuesta= mysqli_query(self::$conexion,$insertar);
      if($respuesta==true)
        echo "dado de alta";
      else
        echo "fallo";
      self::desconectar();
    }
  }

  public function altaProyTall($nombre, $descripcion, $claveMat, $titular, $miembros){
    self::conectar();
    if(self::$conexion){
      $insertar="INSERT INTO proy_tall (nombre, descripcion, clave_mat, titular, miembros) VALUES
      ('$nombre', '$descripcion', '$claveMat', '$titular', $miembros)";
      $respuesta= mysqli_query(self::$conexion,$insertar);
      if($respuesta==true)
        echo "dado de alta";
      else
        echo "fallo";
      self::desconectar();
    }
  }

  public function baja($tabla, $atributoW, $valorW){//condicionar (solo si no se ha llevado a cabo la practica)
    self::conectar();
    if(self::$conexion){
      $eliminar="DELETE FROM  $tabla WHERE $atributoW = '$valorW'";
      $respuesta= mysqli_query(self::$conexion, $eliminar);
      if($respuesta==true)
        echo "dado de baja";
      else
        echo "fallo";
      self::desconectar();
    }
  }

  public function cambio($tabla, $atributo, $valor, $atributoW, $valorW){
    self::conectar();
    if(self::$conexion){
      $cambiar= "UPDATE $tabla SET $atributo= '$valor' WHERE $atributoW= '$valorW'";
      self::desconectar();
    }
  }

  public function consulta($tabla, $atributoW, $valorW){
      self::conectar();
      if(self::$conexion){
        $consultar = "SELECT  * FROM $tabla WHERE $atributoW = '$valorW'";
        $respuesta= mysqli_query(self::$conexion, $consultar);
        //
        self::desconectar();
      }
  }
  public function consultaGeneral($tabla){
    self::conectar();
    if(self::$conexion){
      $consultar = "SELECT  * FROM $tabla";
      $respuesta= mysqli_query(self::$conexion, $consultar);
      //
      self::desconectar();
    }
  }
  public function consultaEspecifica($tabla, $atributo, $atributoW, $valorW){
    self::conectar();
    if(self::$conexion){
      $consultar = "SELECT  $atributo FROM $tabla WHERE $atributoW= '$atributoW'";
      $respuesta= mysqli_query(self::$conexion, $consultar);
      //
      self::desconectar();
    }
  }

}
?>
