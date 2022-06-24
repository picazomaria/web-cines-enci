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
<!--fin del navegador-->
<?php 
session_start();
//cerrar sesion
if (isset($_POST['cerrar'])) {
	unset($_SESSION['inicio-emp']);
	session_destroy();
	header('location: ./empleados.php');
}


//variable de lugar
if (isset($_SESSION['inicio-emp']) && isset($_SESSION['lugar'])) {
	if ($_SESSION['lugar'] == '46010') {
		$lug='V';
	}elseif ($_SESSION['lugar'] == '46410') {
		$lug='S';
	}elseif ($_SESSION['lugar'] == '46470') {
		$lug='A';
	}elseif ($_SESSION['lugar'] == '46730') {
		$lug='G';
	}elseif ($_SESSION['lugar'] == '46749') {
		$lug='C';
	}elseif ($_SESSION['lugar'] == '46900') {
		$lug='T';
	}else{
		$lug=$_SESSION['lugar'];
	}
	//añadir
	if (isset($_POST['añad']) && !empty($_POST['hora']) && !empty($_POST['sala']) && !empty($_POST['peli'])) {
		$hora1=filter_var($_POST['hora'],FILTER_SANITIZE_STRING);
		$sala=filter_var($_POST['sala'],FILTER_SANITIZE_STRING);
		$peli=filter_var($_POST['peli'],FILTER_SANITIZE_STRING);
		$cod_hora="".$lug."-";

		try{
			$si='0';			
			$usuario="asix";
			$contraseña="asix";
			$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
			
			$consulta0="SELECT MAX(cod_hora) from horario where cod_hora like '".$lug."%'";
			$result0=$bd->query($consulta0);
			foreach ($result0 as $hora) {
				$num=substr($hora['MAX(cod_hora)'], 2);
				$total=$num+1;
				$cod_hora_completo=$cod_hora.$total;
				$consulta0="INSERT INTO horario VALUES ('".$cod_hora_completo."','".$hora1."','".$sala."','".$peli."');";
				if ($bd->query($consulta0)) {
					$si='1';
				}else{
					$si='2';
				}
			}

			$bd=null;
			$consulta0=null;
		} catch (PDOException $e){
			print "¡Error!: " . $e->getMessage() . "<br/>";
		exit();
		}
	}
?>

<div  class="container">
	<div class="row">
		<div class="sessiones col-2">
			<form action="./seleccion-emp.php"> 
				<input type="submit" name="menu" value="Ir a menú" style='width: 100%;height: 40px;background:0;color:white;cursor:pointer;text-align: center;transition:all .3s;border: 1px solid #001e1;border-radius: 2px;outline: 0;box-shadow: 3px 3px 20px rgba(0, 0, 0, 0.2);transition: all .2s;background-color: #f9bc60;'>
			</form>
		</div>
		<div class="sessiones col-2 offset-3">
			<form action="./sesiones.php"> 
				<input type="submit" name="menu" value="Pág. anterior" style='width: 100%;height: 40px;background:0;color:white;cursor:pointer;text-align: center;transition:all .3s;border: 1px solid #001e1;border-radius: 2px;outline: 0;box-shadow: 3px 3px 20px rgba(0, 0, 0, 0.2);transition: all .2s;background-color: #f9bc60;'>
			</form>
		</div>
		<div class="sessiones col-2 offset-3">
		<form action="./anadir.php" method="post">
			<input type="submit" name="cerrar" value="Cerrar sesión" style='width: 100%;height: 40px;background:0;color:white;cursor:pointer;text-align: center;transition:all .3s;border: 1px solid #001e1;border-radius: 2px;outline: 0;box-shadow: 3px 3px 20px rgba(0, 0, 0, 0.2);transition: all .2s;background-color: #f9bc60;'>
		</form>
		
		</div>
	</div>	
</div><br><br>
<div class="container"  style="text-align: center;background-color: white; box-shadow: 0px 0px 50px 5px rgba(0, 0, 0, 0.5);border-radius: 4px;">
	<br><div class="row">
		<div class="col-5">
			<?php
			//Peliculas-------------------------------------------------------------------------
				try{
					
					$usuario="asix";
					$contraseña="asix";
					$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
					echo "<table align='center' style='border:2px solid black;border-radius:2px;'>";
					echo "<tr><th colspan=4 style='background-color:#e16162'>Peliculas</th></tr>";
					echo "<tr style='background-color:#abd1c6'>\n<th>Código de película </th>\n<th>Nombre de la película</th>\n</tr>\n";
					$fecha_hoy = getdate(); 
							$dia=$fecha_hoy['mday']; 
							$mes=$fecha_hoy['mon'];
							$año=$fecha_hoy['year'];
							$fecha_thoy=$año."-".$mes."-".$dia;
					$consulta0="SELECT cod_peli, nombre from peliculas where fech_fin >= '".$fecha_thoy."'";
					$result0=$bd->query($consulta0);
					foreach ($result0 as $peliculas) {
						echo "<tr>\n";
						echo "<td>".$peliculas['cod_peli']."</td>";
						echo "<td>".$peliculas['nombre']."</td>";
						//echo "<td><a href=\"09-07borrar.php?primaria=".$alu['nomequipo']."\"><input type='submit' name=borrar value='Borrar'></a></td>";
						echo "</tr>";		
					}
					echo "</table>";
					$bd=null;
					$consulta0=null;
				} catch (PDOException $e){
					print "¡Error!: " . $e->getMessage() . "<br/>";
				exit();
				}
			?>
		</div>
		<div class="col-7">
			<form action="./anadir.php" method="post">
			<h2>AÑADIR SESIÓN</h2>
				<table>
					<tr>
						<td><input type="text" name="hora" placeholder="HORA"></td>
						<td><input type="text" name="sala" placeholder="SALA"></td>
						<td><input type="text" name="peli" placeholder="COD. PELÍCULA"></td>
					</tr>
				</table><br>
				<input type="submit" name="añad" value="Insertar" style='width: 30%;height: 40px;background:0;color:white;cursor:pointer;text-align: center;transition:all .3s;border: 1px solid #001e1;border-radius: 2px;outline: 0;box-shadow: 3px 3px 20px rgba(0, 0, 0, 0.2);transition: all .2s;background-color: #f9bc60;'>
				<br><br><p style='color:#f34040'>IMPORTANTE</p>
				<p>Tenga en cuenta que en sala en tu caso tienes que poner <b><?php echo $lug; ?></b> mas el número de la sala (puede fijarse en el apartado anterior), si tiene cualquier duda llame al servicio técnico</p><br>
				<?php 
					if (isset($si) && $si == '1') {
						echo "<br><p style='color:green'>Se ha añadido correctamente</p>";
					}elseif (isset($si) && $si == '2') {
						echo "<br><p style='color:red'>Parece que ha habido un problema</p>";
					}
				?>
			</form>
		</div>
	</div><br>
</div>

<?php
}else{
	header('location:./empleados.php');
}

?>