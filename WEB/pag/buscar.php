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
	<ul class="nav nav-pills nav-fill">
		<li class="nav-item">
			<div class="no-hover"><h1 class="nav link"><img src="../img/Enci.png" style="height:70px; width:140px;"></h1></div>
		</li>
		<li class="nav-item">
			<a class="nav link" href="../inicio.php"><b>CARTELERA</b></a>
		</li>
		<li class="nav-item">
			<a class="nav link" href="./proximamente.php"><b>PROXIMAMENTE</b></a>
		</li>
		<li class="nav-item">
			<a class="nav link" href="./socios.php"><b>SOCIOS</b></a>
		</li>
		
	</ul>
</div>
<br><br>
<div class="container">
	<!-- busqueda--------->
	<form action="buscar.php" method="post">
		<div class="row">
		
			<div class="col-md-10 col-sm-10 col-7">
				<input class="form-control mr-sm-10" type="search" name="buscar2" placeholder="Buscar"  value="<?php 
				if(isset($_POST['buscar']) && !empty($_POST['buscar'])){ $buscar=filter_var($_POST['buscar'], FILTER_SANITIZE_STRING); echo $buscar; } elseif(isset($_POST['filtro']) && !empty($_POST['buscar2'])){ $buscar2=filter_var($_POST['buscar2'], FILTER_SANITIZE_STRING); echo $buscar2;} ?>">
			</div>
			<div class="col-md-2 col-sm-2 col-5">
				<input type="submit" name="filtro" value="FILTRAR" id="buton-ini" style="height: 42px;">
			</div>
	
		</div>
	</form><br>
	<form action='./buscar.php' method='post'>
		<div class="row">
			<?php
					if (isset($_POST['filtro']) && !empty($_POST['buscar2'])) {
						$nombre=filter_var($_POST['buscar2'], FILTER_SANITIZE_STRING);
					}
					if (!isset($_POST['filtro']) && isset($_POST['buscar'])) {
						$nombre=filter_var($_POST['buscar'], FILTER_SANITIZE_STRING);
					}
					if (isset($_POST['buscar']) || isset($_POST['filtro']) && !empty($_POST['buscar2'])) {
						
					
						try{
							$usuario="asix";
							$contraseña="asix";
							$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);

							//busqueda-------------------------------------------------
							$fecha_hoy = getdate(); 
							$dia=$fecha_hoy['mday']; 
							$mes=$fecha_hoy['mon'];
							$año=$fecha_hoy['year'];
							$fecha_thoy=$año."-".$mes."-".$dia;

							/*aqui cuenta las filas seleccionadas*/
							$consulta0="SELECT count(*) from peliculas where nombre like '%".$nombre."%' && fech_fin>='".$fecha_thoy."'";
							$result0=$bd->query($consulta0);
							foreach ($result0 as $value) {
								if ($value['count(*)'] == 0) {
									echo "<div class='col-12'>";
									echo "<p style='text-align:center; color:white;'>No se han encontrado películas con esas carateríticas.</p></div><br>";
								}else{
									echo "<div class='col-12'>";
									echo "<p style='text-align:center; color:white;'>Se han encontrado ".$value['count(*)']." coincidencias.</p></div><br>";
								}
							}
							/*y aquí la consulta para mostrarlas*/
							$consulta1="SELECT * from peliculas where nombre like '%".$nombre."%' && fech_fin>='".$fecha_thoy."'";
							$result1=$bd->query($consulta1);

							/*muestra las peliculas selecionadas*/
							foreach($result1 as $peli){
								
								echo "<div class='blanco-sucio col-md-4 col-sm-3 col-6'><a href='../peliculas/".$peli['nombre'].".php'><img src='".$peli['imagen']."'' style='height: 450px; width: 300px;'></a>\n";
								echo "<p style='text-align:center'>".$peli['nombre']."<p></div>\n";
							}
							echo "</form>";
							$bd=null;
							$consulta0=null;
							$consulta1=null;
						} catch (PDOException $e){
							print "¡Error!: " . $e->getMessage() . "<br/>";
						exit();
						}
					}
			?>
		</div>
	</form>
</div><br><br>
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
					<a href="./cookies.php">Configuración de Cookies</a><br>
					<button id="buton-fin" name="hecho" type="submit">Hecho</button>
					
					
				</div>
		
		</div>
		<br>
				<p id="raya"></p>
				<p class="fin-f">Copyright  ©María Picazo Sánchez 2022 para IES Serra Perenxisa</p>
			</div><br>
	</div>
</form>
<?php

	if (!empty($_POST['mail']) && isset($_POST['hecho'])) {
		header('Location: socios.php');
	}

?>



</body>
</html>