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

	<form action="./verificacion/validacion.php" method="post">
		
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-4 d-sm-block d-none"><img src="../img/palomitas.gif" style="left:-80px;position: absolute;"></div>
					<div class="col-md-6 col-sm-4 col-12 d-block">
						<div class="fondo-bajo">
							<div class="fondo-encima">
								<h2><b>INICIO DE SESIÓN</b></h2><br><?php 
								if (isset($_SESSION['fallo'])){ echo "<p style='color:red'>Parece que has introducido algún dato mal o no tengas cuenta.</p>"; }else{ echo "<br>";}?>
								<input type="email" name="email" placeholder="EMAIL" value="<?php if(isset($_COOKIE['email'])){ echo $_COOKIE['email'];} ?>" required><br><br><br>
								<input type="password" name="passwd" placeholder="CONTRASEÑA" value="<?php 
								if(isset($_COOKIE['contraseña'])){ echo $_COOKIE['contraseña'];} ?>" required><br><br>
								<label><input type="checkbox" name="recordarme" <?php if (isset($_COOKIE['email'])) {
									echo "checked";} ?>> Recordar datos insertado.</label><br>
								<p><a href="./verificacion/reset_passwd.php" style="color:black"><u> He olvidado la contraseña. </u></a></p>
								<input type="submit" name="iniciar" class="submit-btn" value="INICIO"><br><br>
								<p>¿Aún no tienes cuenta?<a href="./registrate.php" > <u style="color:black">Regístrate. </u></a></p>
							</div>
						</div>
					<div class="col-md-3 col-sm-4 d-sm-block d-none"><img src="../img/trabaja.gif" style="left:650px;position: relative;top:-535px;"></div>
				</div>
			</div>
		</div>
	</form>
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


	
</body>
</html>
<?php
session_destroy();
?>