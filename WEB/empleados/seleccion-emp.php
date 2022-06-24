<!DOCTYPE html>
<html>
<head>
	<title>enci</title>
	<meta name="author" content="MariaPicazo">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="../css/est-socios.css">
	<script type="text/javascript" src="../js/codigo.js"></script>
</head>
<body>
<div class="navegador">

	<!-- navegador -->
	<ul class="nav nav-pills nav-fill" style="color:white">
		<li class="nav-item">
			<!--about movies</a></h1></div>-->
			<div class="no-hover"><h1 class="nav link"><img src="../img/Enci.png" id="mImagen" style="height:70px; width:140px;"></h1></div>
		</li>
		
		
	</ul>
</div>
<br><br>
<?php 
	session_start();
	//eliminamos las variables para no tener que hacer logout/session destroy-------------------------------------------------------------------------------------------
	if (isset($_SESSION['inicio-emp']) && isset($_SESSION['lugar']) && isset($_SESSION['pelicula']) && isset($_SESSION['hora']) && isset($_SESSION['butacas']) && isset($_SESSION['tipo_ent']) && isset($_SESSION['tipo_pago'])) {
		unset($_SESSION['pelicula']);
		unset($_SESSION['hora']);
		unset($_SESSION['butacas']);
		unset($_SESSION['tipo_ent']);
		unset($_SESSION['tipo_pago']);
		unset($_SESSION['si']);
		unset($_SESSION['hecho']);
		unset($_SESSION['fin']);
		if (isset($_SESSION['error1'])) {
			unset($_SESSION['error1']);
		}
		if (isset($_SESSION['error5'])) {
			unset($_SESSION['error5']);
		}
		if (isset($_SESSION['butocu'])) {
			unset($_SESSION['butocu']);
		}
		if (isset($_SESSION['new'])) {
			unset($_SESSION['new']);
		}
	}
	if (isset($_SESSION['inicio-emp']) && isset($_SESSION['lugar'])) {
?>
		<div class="container">	
	<div class="blaco-emp" style='left:31%;position: absolute;'>
		<div class="row">
			<div class="col-md-6 col-sm-4 col-12 d-block">
				<div class="fondo-bajo">
					<div class="fondo-encima">
						<form action="./verificacion/veri2.php" method="post">
						<h2><b>SELECCIONA LA OPCIÓN</b></h2><br><br>
					
						<input type="submit" name="sesiones" value="AÑADIR SESIÓN"><br><br><br>
					
						<input type="submit" name="venta" value="VENTA DE ENTRADAS"><br><br><br>

						<input type="submit" name="salir" value="CERRAR SESIÓN"><br><br><br>
					
						</form>
					</div>
				</div>
			</div>
		</div><br><br>
	</div>
</div><br><br>
	








<?php
	}else{
		header('location:./empleados.php');
	}


?>


<!-- pie de pagina -->
<form action="./pag/socios.php" method="post">
	<div class="final" style="top:600px">
		<div class="container">
			<div class="row">
				<div class="fin col-md-4 col-sm-4 col-12">

					<br>
						<!-- cines que se pueden seleccionar-->
					<p class="fin-titulos"><b>CINES</b></p>
					<div class="fin-p">
						<p>Valencia</p>
						<p>Sueca</p>
						<p>Albal</p>
						<p>Gandia</p>
						<p>Carcagente</p>
						<p>Torrente</p>
					</div>
				</div>
				<div class="fin col-md-3 col-sm-3 col-12">
					<br>
					<p class="fin-titulos"><b>SOBRE SOCIOS</b></p>
					<div class="fin-p">
						<p>Ofertas únicas</p>
						<p>Últimas noticias</p>
						<p>Estrenos exclusivos</p>
						<p>Bonos únicos</p>
					
					</div>	
				</div>
				<div class="fin col-md-5 col-sm-5 col-12">
					<!-- iniciar sesion o registrarse -->
					<br>
					<p><b class="fin-titulos">¿ERES NUEVO?</b></p>
					<P class="fin-i">Contacta con el equipo técnico para que te puedan dar de alta sin este paso no podrás acceder a la configuración de los empleados de la compañia.</P><br>
					<p>Telf: +34 6589885</p>
					
					
				</div>
		
		</div>
		<br>
				<p id="raya"></p>
				<p class="fin-f">Copyright  ©María Picazo Sánchez 2022 para IES Serra Perenxisa</p>
			</div><br>
	</div>
</form>

</body>
</html>