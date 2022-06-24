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
				<a href='../inicio.php'><div class="no-hover"><h1 class="nav link"><img src="../../img/Enci.png" style="height:70px; width:140px;"></h1></div></a>
			</li>
			<li class="nav-item d-sm-block d-none">
				<a class="nav link" href="../../inicio.php"><b>CARTELERA</b></a>
			</li>
			<li class="nav-item d-sm-block d-none">
				<a class="nav link" href="../proximamente.php"><b>PROXIMAMENTE</b></a>
			</li>
					
		</ul>
	</div>
	<br><br>
		<!-- inicio de sesion-->
	<!--base-->
	<div class="container">
		<div class="row">
			<div class="fondo-bajo">
				<div class="fondo-encima">
					<form action="./vali-passwd.php" method="post">
	<!--fin base-->
						<h4>INSERTA TUS DATOS DE USUARIO</h4><br>
						<input type="mail" name="mail" placeholder="ESCRIBA SU EMAIL" style=" border: none; border-bottom: 1px solid #d4d4d4; width: 100%; background: transparent;transition: all .25s ease;" required><br><br>
						<input type="text" name="nombre" placeholder="NOMBRE" required><br><br>
						<input type="text" name="dni" placeholder="DNI" required><br><br>
						<input type="password" name="contra1" placeholder="NUEVA CONTRASEÑA" required><br><br>
						<input type="password" name="contra2" placeholder="REPETIR CONTRASEÑA" required><br><br>
						<input type="submit" name="cambiar" value="CAMBIAR">


	<!--cerrando base-->
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--fin de cerrando base-->
</body>
</html>