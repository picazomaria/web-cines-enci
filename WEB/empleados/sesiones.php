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
<!--ir a menu-->
<?php 
session_start();
//si se han comprado la entrada solo queda descargar el ticket y salir 
	if (isset($_SESSION['fin'])) {
		header('location:./entradas.php');
	}
if (isset($_SESSION['inicio-emp']) && isset($_SESSION['lugar'])) {
	
	//poner de 0 la variable
	$mod='0';
	$eli='0';
	try{
				
		$usuario="asix";
		$contraseña="asix";
		$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);

		$consulta="SELECT cod_hora from horario";
		$result=$bd->query($consulta);
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
		}

		foreach ($result as $hora) {
			///modificamoss
			if (isset($_POST[''.$hora['cod_hora'].''])) {
				$consulta2="UPDATE horario SET cod_hora='".$hora['cod_hora']."', hora='".$_POST["".$hora['cod_hora']."1"]."',cod_sala='".$_POST["".$hora['cod_hora']."2"]."',cod_peli='".$_POST["".$hora['cod_hora']."3"]."' WHERE cod_hora='".$hora['cod_hora']."';";
				if ($bd->query($consulta2)) {
					//correcta modificación
					$mod='1';
				}else{
					//algún error
					$mod='2';
				}
				break;
			}
			///eliminamos
			if (isset($_POST[''.$hora['cod_hora'].'e'])) {
				//$total=strlen($_POST[''.$hora['cod_hora'].'e'])-1;
				//$cod=substr($_POST[''.$hora['cod_hora'].''],0, $total);
				$consulta3="DELETE FROM horario WHERE cod_hora='".$hora['cod_hora']."';";
				if ($bd->query($consulta3)) {
					//correcta modificación
					$eli='1';
				}else{
					//algún error
					$eli='2';
				}
				break;
			}
		}
				
					
		$bd=null;
		$consulta2=null;
		$consulta3=null;
	} catch (PDOException $e){
		print "¡Error!: " . $e->getMessage() . "<br/>";
	exit();
	}
?>
<div  class="container">
	<div class="row">
		<div class="sessiones col-2">
			<form action="./seleccion-emp.php"> 
				<input type="submit" name="menu" value="Ir a menú" style='width: 100%;height: 40px;background:0;color:white;cursor:pointer;text-align: center;transition:all .3s;border: 1px solid #001e1;border-radius: 2px;outline: 0;box-shadow: 3px 3px 20px rgba(0, 0, 0, 0.2);transition: all .2s;background-color: #f9bc60;'>
			</form>
		</div>
		<div class="sessiones col-2 offset-8">
		<form action="./anadir.php">
			<input type="submit" name="anadir" value="Añadir sesión" style='width: 100%;height: 40px;background:0;color:white;cursor:pointer;text-align: center;transition:all .3s;border: 1px solid #001e1;border-radius: 2px;outline: 0;box-shadow: 3px 3px 20px rgba(0, 0, 0, 0.2);transition: all .2s;background-color: #f9bc60;'>
		</form>
		
		</div>	
	</div><br><br>
<!--fin de ir a menu-->
<!--inicio de modificar-->
<div class="container"  style="text-align: center;background-color: white; box-shadow: 0px 0px 50px 5px rgba(0, 0, 0, 0.5);border-radius: 4px;">
	<div class="row">
		<div class="tabla col-4"><br><br>
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
						
						echo "</tr>";		
					}
					echo "</table>";
					echo "<br><p style='color:#f34040 '>IMPORTANTE</p>\n";
					echo "<p>En el apartado de sala solo se puede modificar el número, la letra que le salga no puede tocarse</p>\n";
					$bd=null;
					$consulta0=null;
				} catch (PDOException $e){
					print "¡Error!: " . $e->getMessage() . "<br/>";
				exit();
				}
				
			?>
		</div>
		<div class="tabla col-8">
			<form action="./sesiones.php" method="post"><br>
			<?php
			//comprobación de errores
				if ($mod=='1') {
					echo "<p style='color:green;'>Se ha modificado correctamente</p>";
				}elseif ($mod=='2') {
					echo "<p style='color:red'>Parece que ha habido algún error</p>";
				}
				if ($eli=='1') {
					echo "<p style='color:green;'>Se ha eliminado correctamente</p>";
				}elseif ($eli=='2') {
					echo "<p style='color:red'>Parece que ha habido algún error</p>";
				}
			//Sesiones-----------------------------------------------------------------------
				try{
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
					}else {
						$lug=$_SESSION['lugar'];
					}
					

					$usuario="asix";
					$contraseña="asix";
					$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
					echo "<table align='center' style='border:2px solid black;border-radius:2px;'>";
					echo "<tr><th colspan=5 style='background-color:#e16162'>Sesiones</th></tr>";
					echo "<tr style='background-color:#abd1c6'>\n<th>Hora </th>\n<th>Sala </th>\n<th>Cod. peli</th>\n<th>Mod</th>\n<th>Elim</th>\n</tr>\n";
					$consulta0="SELECT * from horario where cod_hora like '".$lug."-%'";
					$result0=$bd->query($consulta0);
					foreach ($result0 as $sesiones) {
						echo "<tr>\n";
						echo "<td><input type='text' name='".$sesiones['cod_hora']."1' value='".$sesiones['hora']."'></td>";
						echo "<td><input type='text' name='".$sesiones['cod_hora']."2' value='".$sesiones['cod_sala']."'></td>";
						echo "<td><input type='text' name='".$sesiones['cod_hora']."3' value='".$sesiones['cod_peli']."'></td>";
						echo "<td><input type='submit' name='".$sesiones['cod_hora']."' value='Editar' style='width: 100%;height: 40px;background:0;color:white;cursor:pointer;text-align: center;transition:all .3s;border: 1px solid #001e1;border-radius: 2px;outline: 0;box-shadow: 3px 3px 20px rgba(0, 0, 0, 0.2);transition: all .2s;background-color: #f9bc60;'></a></td>";
						echo "<td><input type='submit' name='".$sesiones['cod_hora']."e' value='Eliminar' style='width: 100%;height: 40px;background:0;color:white;cursor:pointer;text-align: center;transition:all .3s;border: 1px solid #001e1;border-radius: 2px;outline: 0;box-shadow: 3px 3px 20px rgba(0, 0, 0, 0.2);transition: all .2s;background-color: #f9bc60;'></a></td>";
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
			</form><br>
			
		</div>		
	</div>
</div>
<!--fin de modificar-->
<?php

}else{
	header('location:./empleados.php');
}
?>
<br><br>
</body>
</html>