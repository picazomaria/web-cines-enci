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
			<li class="nav-item d-sm-block d-none">
				<a class="nav link" href="../../inicio.php"><b>CARTELERA</b></a>
			</li>
			<li class="nav-item d-sm-block d-none">
				<a class="nav link" href="../proximamente.php"><b>PROXIMAMENTE</b></a>
			</li>
					
		</ul>
	</div>
	<br><br><br>

<?php 
session_start();
if (isset($_SESSION['cuenta'])) {
	unset($_SESSION['cuenta']);
}elseif (isset($_SESSION['largaria'])) {
	unset($_SESSION['largaria']);
}elseif (isset($_SESSION['contraseña'])) {
	unset($_SESSION['contraseña']);
}

if (isset($_POST['registrar']) && !empty($_POST['nombre']) && !empty($_POST['apellidos']) && !empty($_POST['email']) && !empty($_POST['contra01']) && !empty($_POST['contra02'])) {
	//limpieza de datos del formulario
	$contra1=filter_var($_POST['contra01'],FILTER_SANITIZE_STRING);
	$contra2=filter_var($_POST['contra02'],FILTER_SANITIZE_STRING);
	$largo=strlen($contra1);
	$mail=filter_var($_POST['email'],FILTER_SANITIZE_EMAIL);
	$nombre_usu=filter_var($_POST['nombre'],FILTER_SANITIZE_STRING);
	$apellidos_usu=filter_var($_POST['apellidos'],FILTER_SANITIZE_STRING);
	$dni=filter_var($_POST['dni'],FILTER_SANITIZE_STRING);
	$date=$_POST['fecha_naci'];
	//comprobamos contraseñas
	if ($largo >= 8 && $largo <= 14) {
		if ($contra1 == $contra2) {
			//comprobar que el mail no este en uso
			try{
					
					$usuario="asix";
					$contraseña="asix";
					$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
				
					$consulta='SELECT count(*) from clientes where mail="'.$mail.'" || dni="'.$dni.'";';
					$result=$bd->query($consulta);
					foreach ($result as $key) {
						if ($key['count(*)'] == 0) {
							//verificación de usuario por email
							try{
					
								$usuario="asix";
								$contraseña="asix";
								$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
								$consulta="INSERT INTO CLIENTES VALUES ('".$dni."','".$nombre_usu."','".$apellidos_usu."','".$mail."',MD5('".$contra1."'),'MD5','".$date."');";
								if ($bd->query($consulta)) {
									session_destroy();
									header('location: ../socios.php');
								}else{
									echo "<p>Ha habido algún problema con con el registro pruebe de nuevo mas tarde.</p>\n";
									echo "<a href='../registrate.php'>Volver al formulario de registro.</a>\n";
								}

								$bd=null;
								$consulta=null;
							} catch (PDOException $e){
								print "¡Error!: " . $e->getMessage() . "<br/>";
							exit();
							}
						
								
							
						}else{
							//setcookie("cuenta","1");
							$_SESSION['cuenta']='1';
							//echo "error de cuenta";
							header('Location: ../registrate.php');
						}
					
					}

					$bd=null;
					$consulta=null;
				} catch (PDOException $e){
					print "¡Error!: " . $e->getMessage() . "<br/>";
				exit();
				}


		}else{
			//setcookie('contraseña','1');
			$_SESSION['contraseña']='1';
			//echo "error de contraseña";
			header('Location: ../registrate.php');
		}
	}else{
		//setcookie('largaria','1');
		$_SESSION['largaria']='1';
		//echo "error de largaria";
		header('Location: ../registrate.php');
	}
}else{
	header('location:../registrate.php');
}






?><br><br><br>
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
				<p class="fin-p"><a href="./pag/politica.html" style="color:  #4b4a4a ">Configuración de Cookies</a></p>
			</div><br>
	</div>

	</form>

	
</body>
</html>