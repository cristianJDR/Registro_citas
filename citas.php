<?php
include 'db.php';

$result = $conexion->query("SELECT titulo, fecha FROM citas ORDER BY fecha ASC");

$citas = array();
while ($row = $result->fetch_assoc()) {
  $citas[] = $row;
}
echo json_encode($citas);
?>