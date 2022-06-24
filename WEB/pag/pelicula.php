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
			
					
		</ul>
	</div>
	<br><br>
	<!-- página anterior -->
	<div class="sessiones col-3 col-md-2 col-sm-3">
			<form action="./fecha.php" method="post">

				<input type="submit" name="sig" value="Pag. anterior" style='width: 100%;margin-left: 250px;height: 40px;background:0;color:white;cursor:pointer;text-align: center;transition:all .3s;border: 1px solid #001e1;border-radius: 2px;outline: 0;box-shadow: 3px 3px 20px rgba(0, 0, 0, 0.2);transition: all .2s;background-color: #f9bc60;'>

			</form>
	</div><br>
	<!--fin de página anterior-->
	<!--seleccion de lugar-->
	
				
	<?php 
	//si se han comprado la entrada solo queda descargar el ticket y salir 
	if (isset($_SESSION['fin'])) {
		header('location:./entradas.php');
	}
	if (isset($_SESSION['butacas'])) {
		unset($_SESSION['butacas']);
	}
	if (isset($_SESSION['lugar']) && isset($_SESSION['inicio']) && isset($_POST['fecha']) || isset($_POST['sig'])) {
	?>

	<div class="container">
		<div class="row">
			<div class="fondo-bajo2">
				<div class="fondo-encima2" style="background-color: #fff;left:-300px">
					<form action="hora-butaca.php" method="post">
	<?php
		try{
					
					$usuario="asix";
					$contraseña="asix";
					$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
					//variable de fecha
					if (isset($_POST['fecha'])) {
						$_SESSION['fecha']= $_POST['fecha'];
					}
						
					
					
					$fecha_hoy = getdate(); 
							$dia=$fecha_hoy['mday']; 
							$mes=$fecha_hoy['mon'];
							$año=$fecha_hoy['year'];
							$fecha_thoy=$año."-".$mes."-".$dia;
					$consulta="select p.cod_peli, p.nombre, p.imagen, p.cod_peli, p.descripción, h.cod_hora, h.cod_peli, p.fech_ini, p.fech_fin from peliculas p join horario h on p.cod_peli=h.cod_peli where h.cod_hora like '".$_SESSION['lugar']."%' && p.fech_ini <'".$_SESSION['fecha']."' && p.fech_fin >'".$_SESSION['fecha']."' group by p.cod_peli;
					";
					$result=$bd->query($consulta);
					echo "<div class='col-12'>\n";
					echo "<h2 style='color:#e16162'><b>ELIGE TU CINE:</b></h2><br>\n";
					$i=0;
					foreach ($result as $peliculas) {
						echo "<div class='container'><div class='row'>\n";
						echo "<div class='col-md-3 col-12'>\n<img src='".$peliculas['imagen']."' style='width:200px; height:300px'>\n</div>\n<div class='col-7' style='margin-top:20px;'>\n<h2>".$peliculas['nombre']."</h2>\n<p><b>Sinopsis:</b> ".$peliculas['descripción']."</p></div>";
						echo "<div class='col-2'><label><input type='submit' name='P".$peliculas['cod_peli']."' value='".$peliculas['nombre']."'></label></div>";
						echo "</div></div><br><br>";//cierre de container y row
						$i++;
					
					}
					echo "</div>\n";
					$bd=null;
					$consulta=null;
				} catch (PDOException $e){
					print "¡Error!: " . $e->getMessage() . "<br/>";
				exit();
				}
	}else{
		header('location:./socios.php');
	}




	?>			
					</form>
				</div><!--fondo encima-->
			</div><!--fondo bajo-->
		</div><!--row cierre-->
	</div><!--container cierre-->
		
	<br><br><br>
	
</body>
</html>