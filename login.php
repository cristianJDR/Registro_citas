<?php
include 'db.php';

$usuario = $_POST['usuario'];
$clave = $_POST['clave'];

$sql = "SELECT * FROM usuarios WHERE usuario = '$usuario' AND clave = '$clave'";
$result = $conexion->query($sql);

if ($result->num_rows > 0) {
  echo 'ok';
} else {
  echo 'error';
}
?>