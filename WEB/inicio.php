
<!DOCTYPE html>
<html>
<head>
	<title>enci</title>
	<meta name="author" content="MariaPicazo">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="./css/estilos.css">
	<script type="text/javascript" src="./js/codigo.js"></script>
	<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
</head>
<body>
<div class="navegador">
<!--cookies-->
<div id="cajacookies">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<p>Esta sitio web usa cookies, si navega aquí acepta el uso de esta.
				Puede leer más sobre el uso de cookies en nuestra <a href="./pag/cookies.php">política de cookies</a>.  
				<button onclick="aceptarCookies()" class="pull-right" id="buton-ini" style="width:20%;border-radius: 5px; color: white; background-color:#001e1d;"><i class="fa fa-times"></i> Aceptar y cerrar</button>
				</p>
			</div>
		</div>
	</div>
</div>
<!--fin de las cookies-->
<!--fin de las cookies-->

	<!-- navegador -->
	<ul class="nav nav-pills nav-fill" style="color:white">
		<li class="nav-item">
			<!--about movies</a></h1></div>-->
			<div class="no-hover"><h1 class="nav link"><img src="./img/Enci.png" id="mImagen" style="height:70px; width:140px;"></h1></div>
		</li>
		<li class="nav-item d-sm-block d-none">
			<a class="nav link" href="#cartelera"><b>CARTELERA</b></a>
		</li>
		<li class="nav-item d-sm-block d-none">
			<a class="nav link" href="./pag/proximamente.php"><b>PROXIMAMENTE</b></a>
		</li>
		<li class="nav-item d-sm-block d-none">
			<a class="nav link" href="./pag/socios.php"><b>SOCIOS</b></a>
		</li>
		<li class="nav-item d-sm-block d-none">
			<div class="no-hover"><a class="nav link"><form class="form-inline my-2 my-lg-0"  action="./pag/buscar.php" method="post"><input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search" name="buscar"></form></a></div>
		</li>
	</ul>
</div>
<br><br>

	<div class="container" >
		<div class="sub-menu">
		<form action="./inicio.php" method="post">
			<div class="row" >
				
					<!-- seleccion de lugares -->
					<div class="sel-op col-4">
						
							<select class="lugares" name="lug">
								<option disabled hidden selected>Elige el cine:</option>
								<option value="V" <?php if (isset($_POST['lug']) && $_POST['lug'] == "V") {
									echo "selected";
								} ?>>Valencia</option>
							 	<option value="S" <?php if (isset($_POST['lug']) && $_POST['lug'] == "S") {
									echo "selected";
								} ?>>Sueca</option>
							 	<option value="A" <?php if (isset($_POST['lug']) && $_POST['lug'] == "A") {
									echo "selected";
								} ?>>Albal</option>
							 	<option value="G" <?php if (isset($_POST['lug']) && $_POST['lug'] == "G") {
									echo "selected";
								} ?>>Gandia</option>
							 	<option value="C" <?php if (isset($_POST['lug']) && $_POST['lug'] == "C") {
									echo "selected";
								} ?>>Carcagente</option>
							 	<option value="T" <?php if (isset($_POST['lug']) && $_POST['lug'] == "T") {
									echo "selected";
								} ?>>Torrente</option>
							</select> 
					</div>
				<!-- seleccion de fechas -->
					<div class="sel-op col-4">
						
						<select class="fechas" name="fech">
							<option disabled hidden selected>Fecha:</option>
							<option value="hoy" <?php if (isset($_POST['fech']) && $_POST['fech'] == "hoy") {
									echo "selected";
								} ?>>Hoy</option>
						 	<option value="mañana" <?php if (isset($_POST['fech']) && $_POST['fech'] == "mañana") {
									echo "selected";
								} ?>>Mañana</option>
						 	<option value="mas-dos" <?php if (isset($_POST['fech']) && $_POST['fech'] == "mas-dos") {
									echo "selected";
								} ?>><?php $fecha_seg = getdate();
						 	 	$dia=$fecha_seg['mday']+2;
						 	 	$mes=$fecha_seg['mon'];
						 	 	$año=$fecha_seg['year'];
						 	 $fecha_tseg=$dia."-".$mes."-".$año;
						 	 echo $fecha_tseg; 
						 	?></option>
						 	<option value="mas-tres" <?php if (isset($_POST['fech']) && $_POST['fech'] == "mas-tres") {
									echo "selected";
								} ?>><?php $fecha_ter = getdate();
						 	 	$dia=$fecha_ter['mday']+3;
						 	 	$mes=$fecha_ter['mon'];
						 	 	$año=$fecha_ter['year'];
						 	 
						 	 $fecha_tter=$dia."-".$mes."-".$año;
						 	 echo $fecha_tter; 
						 	?></option>
						</select> </div>
						<div class="col-4">
							<button id="buton-ini" name="filtro1" type="submit" style="margin-left: 30%;">Filtrar</button>
						</div>
				</div>
			</form>
		</div>
		</div><br><br>

	<!--cartelera---------------------------------------------------------------------->
	<a name="cartelera">
		<form action="inicio.php" method="post">
		<div class="container">
		<?php
			if (!isset($_POST['lug'])) {
				
		
				try{
					$usuario="asix";
					$contraseña="asix";
					$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);

					if (isset($_POST['filtro1'])) {
						//filtro por fecha
						if (isset($_POST['fech']) && $_POST['fech'] == "mañana") {
							$fecha_hoy = getdate(); 
							$dia=$fecha_hoy['mday']+1; 
							$mes=$fecha_hoy['mon'];
							$año=$fecha_hoy['year'];
							$fecha_thoy=$año."-".$mes."-".$dia;
							echo "<input type='hidden' name='fecha' value='".$fecha_thoy."'>\n";
						}elseif (isset($_POST['fech']) && $_POST['fech'] == "mas-dos") {
							$fecha_hoy = getdate(); 
							$dia=$fecha_hoy['mday']+2; 
							$mes=$fecha_hoy['mon'];
							$año=$fecha_hoy['year'];
							$fecha_thoy=$año."-".$mes."-".$dia;
							echo "<input type='hidden' name='fecha' value='".$fecha_thoy."'>\n";
						}elseif (isset($_POST['fech']) && $_POST['fech'] == "mas-tres") {
							$fecha_hoy = getdate(); 
							$dia=$fecha_hoy['mday']+3; 
							$mes=$fecha_hoy['mon'];
							$año=$fecha_hoy['year'];
							$fecha_thoy=$año."-".$mes."-".$dia;
							echo "<input type='hidden' name='fecha' value='".$fecha_thoy."'>\n";
						}else{
							$fecha_hoy = getdate(); 
							$dia=$fecha_hoy['mday']; 
							$mes=$fecha_hoy['mon'];
							$año=$fecha_hoy['year'];
							$fecha_thoy=$año."-".$mes."-".$dia;
							echo "<input type='hidden' name='fecha' value='".$fecha_thoy."'>\n";
						}
					}else{
							$fecha_hoy = getdate(); 
							$dia=$fecha_hoy['mday']; 
							$mes=$fecha_hoy['mon'];
							$año=$fecha_hoy['year'];
							$fecha_thoy=$año."-".$mes."-".$dia;
							echo "<input type='hidden' name='fecha' value='".$fecha_thoy."'>\n";
					}

						//cartelera- de hoy------------------------------------------------
						$consulta="SELECT * from peliculas where fech_fin > '".$fecha_thoy."' && fech_ini < '".$fecha_thoy."' order by cod_peli asc";
						$result=$bd->query($consulta);
						
						echo "<div class='row'>";
						foreach($result as $peli){
							
							echo "<div class='blanco-sucio col-md-4 col-sm-6 col-12'><a href='./peliculas/".$peli['nombre'].".php'><img src='".$peli['imagen']."'' style='height: 450px; width: 300px;'></a>\n";
							echo "<p style='text-align:center'>".$peli['nombre']."<p></div>\n";
						}
						echo "</div>";
						$bd=null;
						$consulta=null;
					

				} catch (PDOException $e){
					print "¡Error!: " . $e->getMessage() . "<br/>";
				exit();
				}




				
			}else{
				//busqueda por lugar--------------
				try{
					$usuario="asix";
					$contraseña="asix";
					$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);

					if (isset($_POST['filtro1'])) {
						//filtro por fecha
						if (isset($_POST['fech']) && $_POST['fech'] == "mañana") {
							$fecha_hoy = getdate(); 
							$dia=$fecha_hoy['mday']+1; 
							$mes=$fecha_hoy['mon'];
							$año=$fecha_hoy['year'];
							$fecha_thoy=$año."-".$mes."-".$dia;
							echo "<input type='hidden' name='fecha' value='".$fecha_thoy."'>\n";
						}elseif (isset($_POST['fech']) && $_POST['fech'] == "mas-dos") {
							$fecha_hoy = getdate(); 
							$dia=$fecha_hoy['mday']+2; 
							$mes=$fecha_hoy['mon'];
							$año=$fecha_hoy['year'];
							$fecha_thoy=$año."-".$mes."-".$dia;
							echo "<input type='hidden' name='fecha' value='".$fecha_thoy."'>\n";
						}elseif (isset($_POST['fech']) && $_POST['fech'] == "mas-tres") {
							$fecha_hoy = getdate(); 
							$dia=$fecha_hoy['mday']+3; 
							$mes=$fecha_hoy['mon'];
							$año=$fecha_hoy['year'];
							$fecha_thoy=$año."-".$mes."-".$dia;
							echo "<input type='hidden' name='fecha' value='".$fecha_thoy."'>\n";
						}else{
							$fecha_hoy = getdate(); 
							$dia=$fecha_hoy['mday']; 
							$mes=$fecha_hoy['mon'];
							$año=$fecha_hoy['year'];
							$fecha_thoy=$año."-".$mes."-".$dia;
							echo "<input type='hidden' name='fecha' value='".$fecha_thoy."'>\n";
						}
						

						//cartelera- de hoy------------------------------------------------
						$consulta="select p.nombre,p.imagen, p.cod_peli,p.fech_fin, h.cod_hora
								from peliculas as p
								join horario as h on h.cod_peli = p.cod_peli
								where h.cod_hora like '".$_POST['lug']."%' && p.fech_fin > '".$fecha_thoy."' && fech_ini < '".$fecha_thoy."' 
								group by p.nombre";
						echo '<input type="hidden" name="lugar" value="'.$_POST['lug'].'">';
						$result=$bd->query($consulta);
						echo "<div class='row'>";
						foreach($result as $peli){
							
							echo "<div class='blanco-sucio col-md-4 col-sm-6 col-12'><a href='./peliculas/".$peli['nombre'].".php'><img src='".$peli['imagen']."' style='height: 450px; width: 300px;'></a>\n";
							echo "<p style='text-align:center'>".$peli['nombre']."<p></div>\n";
						}
						echo "</div>";
						$bd=null;
						$consulta=null;
					}

				} catch (PDOException $e){
					print "¡Error!: " . $e->getMessage() . "<br/>";
					exit();
				}
			}
			

		?>
	<!--fin de cartelera------------------------------------------------------------------------->
		</div>
		</form>
	</a><br>
	<!-- pie de pagina -->
<form action="./pag/registrate.php" method="post">
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
					<label class="fin-p"><input type="checkbox" name="politica" checked="checked"> Estoy de acuerdo con las politica de Cookies.</label>
					<a href="./pag/cookies.php"  style="color:  #4b4a4a "><p>Configuración de Cookies</p></a>
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