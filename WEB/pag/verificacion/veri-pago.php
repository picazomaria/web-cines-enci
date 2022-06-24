<?php 
session_start();
if (isset($_SESSION['inicio']) && isset($_SESSION['lugar']) && isset($_SESSION['fecha']) && isset($_SESSION['pelicula']) && isset($_SESSION['hora']) && isset($_SESSION['butacas'])) {
	if (isset($_POST['tipo']) && isset($_POST['pago'])) {
		$_SESSION['tipo_ent']=$_POST['tipo'];
		$_SESSION['tipo_pago']=$_POST['pago'];
		if (isset($_SESSION['tipo_ent']) && isset($_SESSION['tipo_pago'])) {
			if ($_SESSION['tipo_pago'] == 'ON') {
				header('location:../pagar.php');
			}else{
				header('location:../entradas.php');
			}
		}else{
			echo "Las variables de session";
		}
		



	}else{
		header('location:../forma-pago.php');
	}
}
if (!isset($_SESSION['inicio'])) {
	header('location:../socios.php');
}
?>