<!DOCTYPE html>
<html>
<head>
	<title>The Batman</title>
	<meta name="author" content="MariaPicazo">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="../css/estilos.css">
	<script type="text/javascript" src="../js/codigo.js"></script>
</head>
<body>
<ul class="nav nav-pills nav-fill">
	<li class="nav-item">
		<div class="no-hover"><h1 class="nav link"><img src="../img/Enci.png" style="height:70px; width:140px;"></h1></div>
	<li class="nav-item d-sm-block d-none">
		<a class="nav link" href="../inicio.php"><b>CARTELERA</b></a>
	</li>
	<li class="nav-item d-sm-block d-none">
		<a class="nav link" href="../pag/proximamente.php"><b>PROXIMAMENTE</b></a>
	</li>
	<li class="nav-item d-sm-block d-none">
		<a class="nav link" href="../pag/socios.php"><b>SOCIOS</b></a>
	</li>
	<li class="nav-item d-sm-block d-none">
		<div class="no-hover"><a class="nav link"><form class="form-inline my-2 my-lg-0"  action="../pag/buscar.php" method="post"><input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search" name="buscar"></form></a></div>
	</li>
</ul>
<br><br>
<div class="container">
	<div class="peli-fon">
		<form action='<?php echo $_SERVER['PHP_SELF']; ?>' method='post'>
			<?php
				try{
					$usuario="asix";
					$contraseña="asix";
					$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);

					//cartelera-------------------------------------------------
					$consulta='SELECT * from peliculas where nombre="The Batman"';
					$result=$bd->query($consulta);
					echo "<div class='row'>";
					foreach($result as $peli){
						//nombre - cierre del row y col
						echo "<div class='peli-titulo col-12'><br>";
							echo "<h2><b style='color:#312828'>".$peli['nombre']."</b></h2></div></div><br><br>";
						//imagen, trailer - cierre del col
						echo "<div class='row'>";
							echo "<div class='col-md-6 col-sm-12 col-12'>";
							echo "<a href='".$peli['trailer']."' style='margin-bottom:10%; margin-left:10%'><img src='".$peli['imagen']."'></a></div>\n";
						//trailer, sinopsis, duracion, estreno, fecha fin
							echo "<div class='col-md-6 col-sm-12 col-12'>";
								echo "<p>Ver trailer <a href='".$peli['trailer']."'><i>aquí</i></a></p>\n";
								echo "<p style='padding-right:10%'><b>Sinopsis: </b>".$peli['descripción']."</p>\n";
								echo "<p><b>Duración: </b>".$peli['tiempo']." minutos</p>\n";
								echo "<p><b>Estreno: </b>".$peli['fech_ini']."</p>\n";
								echo "<p><b>Disponible hasta: </b>".$peli['fech_fin']."</p>\n<br>";
					}
					if (isset($_POST['fecha'])) {
						$fecha=$_POST['fecha'];
						Echo $_POST['fecha'];
					}
					if (isset($_POST['lugar'])) {
						$lugar=$_POST['lugar'];
						echo $_POST['lugar'];
					}
					?>
					<div class="row">
						<div class="sel-op col-7">
							<select name="lug-peli">
								<option disabled hidden selected>Elige el cine:</option>
									<option value="V" <?php if (isset($lugar) && $lugar == "V" || isset($_POST['lug-peli']) && $_POST['lug-peli'] == "V") {
										echo "selected";
									} ?>>Valencia</option>
								 	<option value="S" <?php if (isset($lugar) && $lugar == "S" || isset($_POST['lug-peli']) && $_POST['lug-peli'] == "S") {
										echo "selected";
									} ?>>Sueca</option>
								 	<option value="A" <?php if (isset($lugar) && $lugar == "A" || isset($_POST['lug-peli']) && $_POST['lug-peli'] == "A") {
										echo "selected";
									} ?>>Albal</option>
								 	<option value="G" <?php if (isset($lugar) && $lugar == "G" || isset($_POST['lug-peli']) && $_POST['lug-peli'] == "G") {
										echo "selected";
									} ?>>Gandia</option>
								 	<option value="C" <?php if (isset($lugar) && $lugar == "C" || isset($_POST['lug-peli']) && $_POST['lug-peli'] == "C") {
										echo "selected";
									} ?>>Carcagente</option>
								 	<option value="T" <?php if (isset($lugar) && $lugar == "T" || isset($_POST['lug-peli']) && $_POST['lug-peli'] == "T") {
										echo "selected";
									} ?>>Torrente</option>
								
							</select>
						</div>
						<div class="col-5">
							<input type="submit" name="intro" value="INTRO" id="buton-ini">
						</div>
					</div><br><br>
					<!-- consulta para los horarios del lugar seleccionado -->
					<?php
					if (isset($_POST['lug-peli'])) {
					 	$consulta2="select * from horario where cod_hora like '".$_POST['lug-peli']."%' && cod_peli=1" ;
						$result2=$bd->query($consulta2);

						echo "<div class='row'><div class='col-6'><p><b>Horas</b></p></div><div class='col-6'><p><b>Sala</b></p></div></div>";
						foreach($result2 as $peli2){
							
							
							$sala = substr($peli2['cod_sala'], 1);
							
							echo "<div class='row'><div class='col-6'><p style='color: #5b5858 '>".$peli2['hora']."</p></div><div class='col-6'><p style='color: #5b5858 '>$sala</p></div></div>";
						}
					} 
					?>
					
					</form><!-- fin del col y del row -->
					</div></div><br>
					<form action='../pag/socios.php'>
						<div class="row">
							<div class="col-12" style="text-align:center">
								<p>
								<input type='submit' name='compra' value='Comprar entradas' id='buton-fin' style="width:30%;">
							</div>
						</div><br>
					</form>
					<?php

					$bd=null;
					$consulta=null;
					$consulta2=null;
				} catch (PDOException $e){
					print "¡Error!: " . $e->getMessage() . "<br/>";
				exit();
				}
			

			?>
		
	</div>
	
	
</div><br><br>
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
				<p class="fin-p"><a href="../pag/cookies.php" style="color:  #4b4a4a ">Configuración de Cookies</a></p>
			</div><br>
	</div>

</body>
</html>