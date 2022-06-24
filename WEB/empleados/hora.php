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
	
	<div class="sessiones col-2">
			<form action="./pelicula.php"> 
				<input type="submit" name="menu" value="Pag. anterior" style='width: 100%;margin-left: 250px;height: 40px;background:0;color:white;cursor:pointer;text-align: center;transition:all .3s;border: 1px solid #001e1;border-radius: 2px;outline: 0;box-shadow: 3px 3px 20px rgba(0, 0, 0, 0.2);transition: all .2s;background-color: #f9bc60;'>
			</form>
</div><br>
		<!--seleccion de lugar-->
	<div class="container">
		<div class="row">
			<div class="fondo-bajo">
				<div class="fondo-encima">
					<form action="butacas.php" method="post">
				
	<?php 
	session_start();
	//si se han comprado la entrada solo queda descargar el ticket y salir 
	if (isset($_SESSION['fin'])) {
		header('location:./entradas.php');
	}
	if (isset($_SESSION['lugar']) && isset($_SESSION['inicio-emp'])) {
		
	

		try{
					
					$usuario="asix";
					$contraseña="asix";
					$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
					$consulta0="SELECT count(*) from peliculas";
					$result0=$bd->query($consulta0);
					foreach ($result0 as $peli) {
						for ($i=0; $i < $peli['count(*)']; $i++) { 
							if (isset($_POST['P'.$i.''])) {
								$_SESSION['pelicula']=$_POST['P'.$i.''];
								break;
							}
						}
					}
					$consulta="SELECT * from horario h join peliculas p on h.cod_peli=p.cod_peli where h.cod_hora like '".$_SESSION['lugar']."%' && p.nombre='".$_SESSION['pelicula']."';";
					$result=$bd->query($consulta);
					echo "<div class='col-12'>\n";
					echo "<h4><b>SELECCIONA LA SESIÓN</b></h4>\n";

					$i=0;
					foreach ($result as $hora) {
						echo "<input type='submit' name='".$hora['cod_hora']."' value='".$hora['hora']."'><br><br>";
						$i++;
					}
					echo "</div>\n";
					$bd=null;
					$consulta0=null;
					$consulta=null;
				} catch (PDOException $e){
					print "¡Error!: " . $e->getMessage() . "<br/>";
				exit();
				}
	}else{
	
		header('location:./empleados.php');
	}
	?>			
					</form>
				</div>
			</div>
		</div>
	</div><br><br><br>


</body>
</html>