
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
<body class="socios-ini">
	<div class="navegador">
		<!-- navegador -->
		<ul class="nav nav-pills nav-fill">
			<li class="nav-item">
				<a href='../inicio.php'><div class="no-hover"><h1 class="nav link"><img src="../img/Enci.png" style="height:70px; width:140px;"></h1></div></a>
			</li>
			<li class="nav-item d-sm-block d-none">
				<a class="nav link" href="../inicio.php"><b>CARTELERA</b></a>
			</li>
			<li class="nav-item d-sm-block d-none">
				<a class="nav link" href="./proximamente.php"><b>PROXIMAMENTE</b></a>
			</li>
					
		</ul>
	</div>
	<br><br>
		<!-- inicio de sesion-->

	<!--<form action="./verificacion/registro.php" method="post">-->
		<form action="./verificacion/registro.php" method="post">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-4 d-sm-block d-none"><img src="../img/descuento.gif" style="left:-80px;position: absolute;"></div>
					<div class="col-md-6 col-sm-4 col-12 d-block">
						<div class="fondo-bajo">
							<div class="fondo-encima">
								<h2><b>REGÍSTRATE</b></h2>
								<?php 
								session_start();
								if (isset($_SESSION['cuenta']) && $_SESSION['cuenta']=='1') {
									echo "<p style='color:red;font-size:12px;'>Parece que ya tienes una cuenta con ese correo</p>\n";
								}else{
									echo "<br><br>";
								}?>
								<input type="text" name="nombre" placeholder="NOMBRE *"  required style="width: 45%;font-size: 15px;border: none;border-bottom: 1px solid #d4d4d4;background: transparent;transition: all .25s ease;">
								<input type="text" name="apellidos" placeholder="APELLIDOS *" required style="width: 45%;font-size: 15px;border: none;border-bottom: 1px solid #d4d4d4;background: transparent;transition: all .25s ease;"><br><br>
								<input type="email" name="email" placeholder="EMAIL *" value="<?php if(isset($_POST['email']) && !empty($_POST['email'])){ $email=filter_var($_POST['email'],FILTER_SANITIZE_EMAIL); echo $email;} ?>" required><br><br>
								<?php if (isset($_SESSION['contraseña']) && $_SESSION['contraseña']=='1') {
									echo "<p style='color:red;font-size:12px;'>Las contraseñas con coinciden.</p>\n";
								}elseif (isset($_SESSION['largaria']) && $_SESSION['largaria']) {
									echo "<p style='color:grey;font-size:12px;'>La contraseña tiene que tener entre 8 y 14 carácteres.</p>\n";
								} ?>
								<input type="password" name="contra01" placeholder="CONTRASEÑA *" value="" required><br><br>
								<input type="password" name="contra02" placeholder="REPITA LA CONTRASEÑA *" value="" required><br><br>
								<input type="text" name="dni" placeholder="DNI" required style="width: 45%;font-size: 15px;border: none;border-bottom: 1px solid #d4d4d4;background: transparent;transition: all .25s ease;">
								<input type="date" name="fecha_naci" required><br><br>
								<input type="submit" name="registrar" class="submit-btn" value="HECHO"><br>
								
							</div>
						</div>
					<div class="col-md-3 col-sm-4 d-sm-block d-none"><img src="../img/aviso.gif" style="left:650px;position: relative;top:-535px;"></div>
				</div>
			</div>
		</div>
		<!-- pie de página------------------------------>
	<div class="final">
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
					<p><b class="fin-titulos">INFORMACIÓN DE COMPRA DE ENTRADAS</b></p>
					<P class="fin-i">La compra de entradas se hace mediante el inicio de sesión en esta página web.
						Si seleccionas <i>comprar</i> podrás seguir con el inicio o registro de tu sesión en esta nuestra página.</P>
					<p class="fin-i">Muchas gracias y disfruta de tu pelicula.</p>
					
					
					
				</div>
		
		</div>
		<br>
				<p id="raya"></p>
				<p class="fin-f">Copyright  ©María Picazo Sánchez 2022 para IES Serra Perenxisa</p>
				<p class="fin-p"><a href="./cookies.php" style="color:  #4b4a4a ">Configuración de Cookies</a></p>
			</div><br>
	</div>

	</form>

	
</body>
</html>