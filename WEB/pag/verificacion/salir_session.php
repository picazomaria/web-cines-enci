<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title>enci</title>
	<meta name="author" content="MariaPicazo">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="../../css/est-socios.css">
	<script type="text/javascript" src="../../js/codigo.js"></script>
</head>
<body class="socios-ini">
	<div class="navegador">
		<!-- navegador -->
		<ul class="nav nav-pills nav-fill">
			<li class="nav-item">
				<a href='../../inicio.php'><div class="no-hover"><h1 class="nav link"><img src="../../img/Enci.png" style="height:70px; width:140px;"></h1></div></a>
			</li>
			
					
		</ul>
	</div>
	<br><br>
	<!--fin del navegador e inicio de pagar -->
	<?php
	if (isset($_SESSION['inicio']) && isset($_SESSION['lugar']) && isset($_SESSION['fecha']) && isset($_SESSION['pelicula']) && isset($_SESSION['hora']) && isset($_SESSION['butacas']) && isset($_SESSION['tipo_ent']) && isset($_SESSION['tipo_pago'])) {
	
	unset($_SESSION['inicio']);
	unset($_SESSION['lugar']);
	unset($_SESSION['pelicula']);
	unset($_SESSION['hora']);
	unset($_SESSION['butacas']);
	unset($_SESSION['tipo_ent']);
	unset($_SESSION['tipo_pago']);
	unset($_SESSION['pagado']);
	unset($_SESSION['hecho']);
	unset($_SESSION['si']);
	unset($_SESSION['fin']);
	session_destroy();
    ?>
	<a href=""></a>
	<form action="../socios.php"   method="post">
		<input type="submit" name="intro" value="Autenticar usuario" style="background-color: #f9bc60;color: white;-ms-transform: scale(1.1);transform: scale(1.1);margin-left: 47%;">
	</form><br>
	<form action="../../inicio.php" method="post" >
		<input type="submit" name="intro2" value="Volver a cartelera" style="background-color: #f9bc60;color: white;-ms-transform: scale(1.1); transform: scale(1.1); margin-left: 47%;">
	</form>
	<?php 
	}elseif (isset($_POST['cerrar-ses'])) {
		if (isset($_SESSION['inicio'])) {
			unset($_SESSION['inicio']);
		}elseif (isset($_SESSION['lugar'])) {
			unset($_SESSION['lugar']);
		}elseif (isset($_SESSION['pelicula'])) {
			unset($_SESSION['pelicula']);
		}elseif (isset($_SESSION['hora'])) {
			unset($_SESSION['hora']);
		}elseif (isset($_SESSION['butacas'])) {
			unset($_SESSION['butacas']);
		}elseif (isset($_SESSION['tipo_ent'])) {
			unset($_SESSION['tipo_ent']);
		}elseif (isset($_SESSION['tipo_pago'])) {
			unset($_SESSION['tipo_pago']);
		}elseif (isset($_SESSION['pagado'])) {
			unset($_SESSION['pagado']);
		}elseif (isset($_SESSION['hecho'])) {
			unset($_SESSION['hecho']);
		}elseif (isset($_SESSION['si'])) {
			unset($_SESSION['si']);
		}
		session_destroy();
		header('location:../socios.php');
	}else{
		header('location:../socios.php');
	}
	?>
	
</body>
</html>