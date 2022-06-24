<?php 
session_start();
if (isset($_SESSION['inicio']) && isset($_SESSION['lugar']) && isset($_SESSION['pelicula']) && isset($_SESSION['hora']) && isset($_SESSION['butacas']) && isset($_SESSION['tipo_ent']) && isset($_SESSION['tipo_pago'])) {

	if (isset($_POST['tarjeta']) && isset($_POST['titular']) && isset($_POST['mes_expi']) && isset($_POST['año_expi']) && isset($_POST['cvc']) && isset($_POST['verificar'])) {
		$tarjeta=filter_var($_POST['tarjeta'],FILTER_SANITIZE_STRING);
		$total_num=strlen($tarjeta);
		if ($total_num ==16) {
			$_SESSION['pagado']=true;
			header('location:../entradas.php');
		}else{
			header('location:../pagar.php');
		}




	}else{
		header('location:../pagar.php');
	}
}
if (!isset($_SESSION['inicio'])) {
	header('location:../socios.php');
}
?>