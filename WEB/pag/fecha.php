
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
			
					
		</ul>
	</div>
	<br><br>
	<!-- página anterior -->
	<div class="sessiones col-3 col-md-2 col-sm-3">
			<form action="./seleccion.php" method="post">

				<input type="submit" name="sig" value="Pag. anterior" style='width: 100%;margin-left: 250px;height: 40px;background:0;color:white;cursor:pointer;text-align: center;transition:all .3s;border: 1px solid #001e1;border-radius: 2px;outline: 0;box-shadow: 3px 3px 20px rgba(0, 0, 0, 0.2);transition: all .2s;background-color: #f9bc60;'>

			</form>
	</div><br>
	<!--fin de página anterior-->
		<!--seleccion de lugar-->
	<div class="container">
		<div class="row">
			<?php 
			session_start();
			//si se han comprado la entrada solo queda descargar el ticket y salir 
				if (isset($_SESSION['fin'])) {
					header('location:./entradas.php');
				}
			//fechas--------------------------------------------------
						$fecha_hoy = getdate(); 
								$dia=$fecha_hoy['mday']; 
								$mes=$fecha_hoy['mon'];
								$año=$fecha_hoy['year'];
								if ($mes<=9) {
									$cero="0";
									$mes=$cero.$mes;
								}
								if ($dia<=9) {
									$cero="0";
									$dia=$cero.$dia;
								}
								$fecha_thoy=$año."-".$mes."-".$dia;

						$fecha_max = getdate(); 
								$diam=$fecha_hoy['mday']; 
								$mesm=$fecha_hoy['mon']+5;
								$añom=$fecha_hoy['year'];
								if ($añom==8) {
									$añom=01;
								}elseif ($añom==9) {
									$añom=02;
								}elseif ($añom==10) {
									$añom=03;
								}elseif ($añom==11) {
									$añom=04;
								}elseif ($añom==12) {
									$añom=05;
								}
								if ($mesm<=9) {
									$cero="0";
									$mesm=$cero.$mesm;
								}
								if ($diam<=9) {
									$cero="0";
									$diam=$cero.$diam;
								}
								$fecha_tmax=$añom."-".$mesm."-".$diam;	
								
					
					//en caso de ir atrás y volver que no te salga el mismo error de fila butaca
				if (isset($_SESSION['inicio']) && isset($_POST['sig']) || isset($_POST['lugar0']) || isset($_POST['lugar1']) || isset($_POST['lugar2']) || isset($_POST['lugar3']) || isset($_POST['lugar4']) || isset($_POST['lugar5'])) {
					


				//crear la variable de sesion de hora
					try{
					
						$usuario="asix";
						$contraseña="asix";
						$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
						
							

						if (isset($_POST['lugar0'])) {
							$_SESSION['lugar']='V';
						}elseif (isset($_POST['lugar1'])) {
							$_SESSION['lugar']='S';
						}elseif (isset($_POST['lugar2'])) {
							$_SESSION['lugar']='A';
						}elseif (isset($_POST['lugar3'])) {
							$_SESSION['lugar']='G';
						}elseif (isset($_POST['lugar4'])) {
							$_SESSION['lugar']='C';
						}elseif (isset($_POST['lugar5'])) {
							$_SESSION['lugar']='T';
						}
					
						
						$bd=null;
						$consulta=null;
					} catch (PDOException $e){
						print "¡Error!: " . $e->getMessage() . "<br/>";
					exit();
					}
			?><!--abriendo-->
		
			<div class="fondo-bajo">
				<div class="fondo-encima">
					<form action="pelicula.php" method="post">
						<h4>SELECCIONA LA FECHA PARA VER TU PELÍCULA</h4><br><br>
						<label style="margin-left: 20%;">Fecha : <input type='date' name='fecha' min="<?php echo $fecha_thoy; ?>" max="<?php echo $fecha_tmax; ?>" required></label><br><br><br><br>
						<input type="submit" name="intro" value='INTRO'><br><br>
					</form>
				</div>
			</div>
					
			<?php 
				}else{
					header('location:./socios.php');
				}
						?>
		</div>
	</div>

<br><br><br>


</body>
</html>