<?php 
session_start();
if (isset($_SESSION['inicio-emp']) && isset($_SESSION['lugar']) && isset($_SESSION['pelicula']) && isset($_SESSION['hora']) && isset($_SESSION['butacas']) && isset($_SESSION['tipo_pago'])) {
	if (isset($_POST['tipo'])) {
		$_SESSION['tipo_ent']=$_POST['tipo'];

		if (isset($_SESSION['tipo_ent'])) {
			
				header('location:../entradas.php');
			
		}else{
			echo "Las variables de session";
		}
		



	}else{
		header('location:../forma-pago.php');
	}
}
if (!isset($_SESSION['inicio-emp'])) {
	header('location:../empleados.php');
}
?>