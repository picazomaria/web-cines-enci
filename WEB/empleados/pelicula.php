<!DOCTYPE html>
<html>
<head>
	<title>enci</title>
	<meta name="author" content="MariaPicazo">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="../css/est-socios.css">
	<link rel="stylesheet" type="text/css" href="../css/estilos.css">
	<script type="text/javascript" src="../js/codigo.js"></script>
</head>
<body>
<div class="navegador">

	<!-- navegador -->
	<ul class="nav nav-pills nav-fill" style="color:white">
		<li class="nav-item">
			<!--about movies</a></h1></div>-->
			<div class="no-hover"><h1 class="nav link"><img src="../img/Enci.png" id="mImagen" style="height:70px; width:140px;"></h1></div>
		</li>
		
		
	</ul>
</div>
<br><br>
<?php 
	session_start();
	//si se han comprado la entrada solo queda descargar el ticket y salir 
	if (isset($_SESSION['fin'])) {
		header('location:./entradas.php');
	}
	if (isset($_SESSION['inicio-emp']) && isset($_SESSION['lugar'])) {
		
?>
<!-- peliculas -->
<div class="sessiones col-2">
			<form action="./seleccion-emp.php"> 
				<input type="submit" name="menu" value="Ir a menú" style='width: 100%;margin-left: 250px;height: 40px;background:0;color:white;cursor:pointer;text-align: center;transition:all .3s;border: 1px solid #001e1;border-radius: 2px;outline: 0;box-shadow: 3px 3px 20px rgba(0, 0, 0, 0.2);transition: all .2s;background-color: #f9bc60;'>
			</form>
</div><br>
<div class="container">
		<div class="row">
			<div class="fondo-bajo2">
				<div class="fondo-encima2" style="background-color: #fff;left:-300px">
					<form action="hora.php" method="post">
	<?php
		try{
					
					$usuario="asix";
					$contraseña="asix";
					$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
					$fecha_hoy = getdate(); 
							$dia=$fecha_hoy['mday']; 
							$mes=$fecha_hoy['mon'];
							$año=$fecha_hoy['year'];
							$fecha_thoy=$año."-".$mes."-".$dia;

					if ($_SESSION['lugar']=='46010') {
						$lug='V';
						$_SESSION['lugar']='V';
					}elseif ($_SESSION['lugar']=='46410') {
						$lug='S';
						$_SESSION['lugar']='S';
					}elseif ($_SESSION['lugar']=='46470') {
						$lug='A';
						$_SESSION['lugar']='A';
					}elseif ($_SESSION['lugar']=='46730') {
						$lug='G';
						$_SESSION['lugar']='G';
					}elseif ($_SESSION['lugar']=='46749') {
						$lug='C';
						$_SESSION['lugar']='C';
					}elseif ($_SESSION['lugar']=='46900') {
						$lug='T';
						$_SESSION['lugar']='T';
					}
					
					$consulta="select p.cod_peli, p.nombre, p.imagen, p.cod_peli, p.descripción, h.cod_hora, h.cod_peli, p.fech_ini, p.fech_fin from peliculas p join horario h on p.cod_peli=h.cod_peli where h.cod_hora like '".$_SESSION['lugar']."%' && p.fech_ini<'".$fecha_thoy."' && p.fech_fin>'".$fecha_thoy."' group by p.cod_peli;
					";
					$result=$bd->query($consulta);
					echo "<div class='col-12'>\n";
					echo "<h2 style='color:#e16162'><b>ELIGE TU CINE:</b></h2><br>\n";
					$i=0;
					foreach ($result as $peliculas) {
						echo "<div class='container'><div class='row'>\n";
						echo "<div class='col-3 d-md-block d-none'>\n<img src='".$peliculas['imagen']."' style='width:200px; height:300px'>\n</div>\n<div class='col-7' style='margin-top:20px;'>\n<h2>".$peliculas['nombre']."</h2>\n<p><b>Sinopsis:</b> ".$peliculas['descripción']."</p></div>";
						echo "<div class='col-2'><label><input type='submit' name='P".$i."' value='".$peliculas['nombre']."'></label></div>";
						echo "</div></div><br><br>\n";//cierre de container y row
						$i++;
					
					}
					echo "</div></form>\n";
					$bd=null;
					$consulta=null;
				} catch (PDOException $e){
					print "¡Error!: " . $e->getMessage() . "<br/>";
				exit();
				}


}else{
	header('location:./empleados.php');
}

?>

</div>
</div>
</div>
</div>
<br><br>
</body>
</html>