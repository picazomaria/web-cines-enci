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
	if (isset($_SESSION['inicio-emp']) && isset($_SESSION['lugar']) && isset($_SESSION['pelicula']) && isset($_SESSION['hora']) && isset($_SESSION['butacas']) && isset($_SESSION['tipo_ent']) && isset($_SESSION['tipo_pago'])) {
		
		unset($_SESSION['inicio']);
		unset($_SESSION['lugar']);
		unset($_SESSION['pelicula']);
		unset($_SESSION['hora']);
		unset($_SESSION['butacas']);
		unset($_SESSION['tipo_ent']);
		unset($_SESSION['tipo_pago']);
		session_destroy();
    ?>
	<a href=""></a>
	<form action="../empleados.php"   method="post">
		<input type="submit" name="intro" value="Autenticar empleado" style="background-color: #f9bc60;color: white;-ms-transform: scale(1.1);transform: scale(1.1);margin-left: 47%;">
	</form><br>
	<?php 
	}else{
		header('location:../empleados.php');
	}
	?>
	
</body>
</html>