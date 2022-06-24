<?php 
session_start();
if (isset($_POST['sesiones'])) {
	header('Location: ../sesiones.php');
}elseif (isset($_POST['venta'])) {
	header('Location: ../pelicula.php');
}elseif (isset($_POST['cerrar'])) {
	header('location:./salir_session.php');
}else{
		header('location:../empleados.php');
}

?>