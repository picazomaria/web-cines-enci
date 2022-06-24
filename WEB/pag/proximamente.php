<!DOCTYPE html>
<html>
<head>
	<title>enci</title>
	<meta name="author" content="MariaPicazo">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="../css/estilos.css">
	<script type="text/javascript" src="../js/codigo.js"></script>
</head>
<body>
<div class="navegador">

	<!-- navegador -->
	<ul class="nav nav-pills nav-fill" style="color:white">
		<li class="nav-item">
			<!--about movies</a></h1></div>-->
			<a href="../inicio.php"><div class="no-hover"><h1 class="nav link"><img src="../img/Enci.png" style="height:70px; width:140px;"></h1></div></a>
		</li>
		<li class="nav-item d-sm-block d-none">
			<a class="nav link" href="../inicio.php"><b>CARTELERA</b></a>
		</li>
		<li class="nav-item d-sm-block d-none">
			<a class="nav link" href="#proximos"><b>PROXIMAMENTE</b></a>
		</li>
		<li class="nav-item d-sm-block d-none">
			<a class="nav link" href="./socios.php"><b>SOCIOS</b></a>
		</li>
		<li class="nav-item d-sm-block d-none">
			<div class="no-hover"><a class="nav link"><form class="form-inline my-2 my-lg-0"  action="./buscar.php" method="post"><input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search" name="buscar"></form></a></div>
		</li>
	</ul>
</div>
<br><br>
<!-- fin del navegador --------------------------------------------------------------------------->
<a name="proximos">
	<img src="../img/pasos-entradas.gif" style="position:absolute">
	
	<div class="container">
		<div class='row'>	
			
<?php 
	try{
		//obtencioón de la fecha de hoy
		$fecha_hoy = getdate(); 
		$dia=$fecha_hoy['mday']+1; 
		$mes=$fecha_hoy['mon'];
		$año=$fecha_hoy['year'];
		$fecha_thoy=$año."-".$mes."-".$dia;

		$usuario="asix";
		$contraseña="asix";
		$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
				
		$consulta='SELECT * from peliculas where fech_ini > "'.$fecha_thoy.'" order by cod_peli asc';
		$result=$bd->query($consulta);
		
		foreach ($result as $proximas) {
			echo "<div class='blanco-sucio col-md-4 col-sm-6 col-12'><a href='../peliculas/".$proximas['nombre'].".php'><img src='".$proximas['imagen']."'' style='height: 450px; width: 300px;'></a>\n";
			echo "<p style='text-align:center'>".$proximas['nombre']."<p></div>\n";
		}
		echo "";
		$bd=null;
		$consulta=null;
	} catch (PDOException $e){
		print "¡Error!: " . $e->getMessage() . "<br/>";
		exit();
	}

?>
		</div>
	</div>

</a>
<!--fin de cartelera------------------------------------------------------------------------->
		</div>
		</form>
	</a><br>
	<!-- pie de pagina -->
<form action="./registrate.php" method="post">
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
					<p><b class="fin-titulos">INSCRIBETE</b></p>
					<P class="fin-i">Mediante tu inscripción podemos actulizarte las últimas noticias sobre bonos, estrenos, ofertas especiales y mucho mas.</P>
					<input type="mail" name="email" placeholder="Inscribete ahora..." id="inscribirse"><br><br>
					<label class="fin-p"><input type="checkbox" name="politica" checked="checked"> Estoy de acuerdo con las politica de Cookies.</label><br>
					<a href="./cookies.php" style="font-size: 15px;"> Configuración de Cookies</a><br>
					<button id="buton-fin" name="hecho" type="submit">Hecho</button>
					
					
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