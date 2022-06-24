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
					<?php 
						if (isset($_POST['mail']) && isset($_POST['nombre']) && isset($_POST['dni']) && isset($_POST['contra1']) && isset($_POST['contra2'])) {
							$mail=filter_var($_POST['mail'],FILTER_SANITIZE_EMAIL);
							$nombre=filter_var($_POST['nombre'],FILTER_SANITIZE_STRING);
							$dni=filter_var($_POST['dni'],FILTER_SANITIZE_STRING);
							$largo=strlen($_POST['contra1']);
							try{
					
								$usuario="asix";
								$contraseña="asix";
								$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
								//comprobar si existe el cliente
								$consulta="select count(*) from clientes where mail='".$mail."' && dni='".$dni."' && nombre='".$nombre."';";
								$result=$bd->query($consulta);
								foreach ($result as $cuenta) {
									if ($cuenta['count(*)'] == 1) {
										//comprobar la largaria de la contraseña
										if ($largo>=8 && $largo<=14) {
											//comprobar si son iguales
											if ($_POST['contra1'] == $_POST['contra2']) {
												try{
					
													$usuario="asix";
													$contraseña="asix";
													$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
													$consulta1="UPDATE clientes SET contrasena=md5('".$_POST['contra1']."') WHERE mail='".$mail."' && dni='".$dni."' && nombre='".$nombre."';";
													if ($bd->query($consulta1)) {
														echo "<p>Se ha cambiado la contraseña correctamente<p>\n";
														echo "<a href='../socios.php'>Iniciar sessión</a>\n";
													}else{
														echo "<p>Ha habido algún problema con con el registro pruebe de nuevo mas tarde.</p>\n";
														echo "<a href='../registrate.php'>Volver al formulario de registro.</a>\n";
													}

													$bd=null;
													$consulta1=null;
												} catch (PDOException $e){
													print "¡Error!: " . $e->getMessage() . "<br/>";
												exit();
												}
											}else{
												echo "<p>Las contraseñas no coinciden.</p>\n";
												echo "<a href='./reset_passwd.php'>Formulario anterior</a>\n";
											}
										}else{
											echo "<p>La contraseña tiene que tener las siguientes caracteríticas: un total de carácteres de 8 y menor a 14.</p>\n";
											echo "<a href='./reset_passwd.php'>Formulario anterior</a>\n";
										}
										
									}else{
										echo "<p>Parece que no tienes cuenta o no has insertado bien los datos.</p>\n";
										echo "<a href='../registrarte.php'>Registrate</a>\n";
									}
								}

								$bd=null;
								$consulta=null;
							} catch (PDOException $e){
								print "¡Error!: " . $e->getMessage() . "<br/>";
							exit();
							}
						}else{
							header('location:../socios.php');

						}
					?>

	<!--cerrando base-->
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--fin de cerrando base-->
</body>
</html>