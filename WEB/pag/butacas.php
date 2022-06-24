
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
			<form action="./hora-butaca.php" method="post">

				<input type="submit" name="sig" value="Pag. anterior" style='width: 100%;margin-left: 250px;height: 40px;background:0;color:white;cursor:pointer;text-align: center;transition:all .3s;border: 1px solid #001e1;border-radius: 2px;outline: 0;box-shadow: 3px 3px 20px rgba(0, 0, 0, 0.2);transition: all .2s;background-color: #f9bc60;'>

			</form>
	</div><br>
	<!--fin de página anterior-->
		
	<div class="container"  style="text-align: center;background-color: white; box-shadow: 0px 0px 50px 5px rgba(0, 0, 0, 0.5);border-radius: 4px;">
		<div class="row">
			<?php 
			session_start();
			//si se han comprado la entrada solo queda descargar el ticket y salir 
			if (isset($_SESSION['fin'])) {
				header('location:./entradas.php');
			}
				//verificamos que se haya eliminado o no alguna butaca de la array
				if (isset($_SESSION['butacas'])) {
					for ($i=0; $i < 67; $i++) { 
						if (isset($_POST['Eli'.$i.''])) {
							unset($_SESSION['butacas'][$i]);	
						}
					}
				}
				//en caso de ir atrás y volver que no te salga el mismo error de fila butaca
				if (isset($_SESSION['lugar']) && isset($_SESSION['inicio']) && isset($_SESSION['pelicula'])) {
				//crear la variable de sesion de hora
					try{
						
						$usuario="asix";
						$contraseña="asix";
						$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
						$consulta="SELECT h.cod_hora from peliculas p join horario h on p.cod_peli=h.cod_peli where p.nombre='".$_SESSION['pelicula']."' && h.cod_hora like '".$_SESSION['lugar']."%';";
						$result=$bd->query($consulta);
						foreach ($result as $hora) {
							if (isset($_POST[''.$hora['cod_hora'].''])) {
								$_SESSION['hora']=$hora['cod_hora'];
								break;
							}
						}
					
						
						$bd=null;
						$consulta=null;
					} catch (PDOException $e){
						print "¡Error!: " . $e->getMessage() . "<br/>";
					exit();
					}

			?>
		
					<div class="col-12">
						<br><h2 style="text-align: center;">SELECCIÓN DE BUTACAS</h2>
						<img src="../img/sala2.png" style="height:550px;width: 700px;">
					</div>
						<!--inicio del container 1 se verifica en el archivo veribut-->
		</div>
		<div class="row">
					
				<div class="<?php if (!isset($_SESSION['butacas']) || empty($_SESSION['butacas'])) {
						echo "col-12\n";
					}else{
						echo "col-6\n";
					}?>">
					<form action="./verificacion/veri-but.php" method="post">
							<br><p style="<?php if (!isset($_SESSION['butacas']) || empty($_SESSION['butacas'])) {
									echo "\n";
								}else{
									echo "padding-left: 20%;\n";
								}?>">Selecciona la fila y la butaca que deseas comprar:</p>
						<?php 
								if (isset($_SESSION['error1']) && $_SESSION['error1'] == "1") {
									echo "<p style='color:red'>No exite ese lugar, fijate bien en la imagen.</p>\n"; 
								}elseif (isset($_SESSION['error5']) && $_SESSION['error5'] == "1") {
									echo "<p style='color:red'>No exite ese lugar, fijate bien en la imagen.</p>\n"; 
								}
								elseif (isset($_SESSION['butocu']) && $_SESSION['butocu'] == "Si" && !empty($_SESSION['butacas'])) {
									echo "<p style='color:red'>Parece que alguien ya tiene ese sitio, por favor prueba con otro.</p>\n";
								}elseif (isset($_SESSION['new']) && $_SESSION['new'] == "Si" && !empty($_SESSION['butacas'])) {
									echo "<p style='color:green'>¡Guardado!</p>\n";
								}

							?>
								<div class="centrar" style="<?php if (!isset($_SESSION['butacas']) || empty($_SESSION['butacas'])) {
										echo "\n";
									}else{
										echo "margin-left:20%;\n";
									}?>">
									<input type="number" name="fila" placeholder="FILA" min="1" max="5" style="padding-left: 10%;" required>
									<input type="number" name="butaca" placeholder="BUTACA" min="1" max="16" style="padding-left: 10%;" required><br><br>
									<div class="boton-co" style="margin-left: 3px;">
										<input type="submit" name="selec" value="SELECCIONAR"><br><br>
										<?php 
										if (isset($_SESSION['butacas']) && !empty($_SESSION['butacas'])) {
											echo "<a href='./forma-pago.php' style='color:black'>Pasar al siguiente paso</a>";
										}	
										?>
									</div><br><br>
								</div>
						</form>
					</div>
					<!--fin deel container1-->
					<!--inicio de el container 2 se verifica en esta misma página-->
					<div class="col-6">
						<form action="./butacas.php" method="post">
							<?php 
								if (isset($_SESSION['butacas']) && !empty($_SESSION['butacas'])) {	
									echo "<br><table>";
									echo "<tr><th colspan=2 style='color:#004643;'>Butacas seleccionadas:</th></tr>\n";
									echo "<tr style='color:#abd1c6;'><th>FILA</th><th>BUTACA</th></tr>\n";
									foreach ($_SESSION['butacas'] as $key => $filabut) {
										$separo=explode(" ",$filabut);
										$fila=$separo[0];
										$butaca=$separo[1];
										
										
												echo "<tr><td>$fila</td><td>$butaca</td>\n";
												echo "<div class='boton-co'>\n";
												echo "<td><input type='submit' name='Eli".$key."' value='Eliminar' style='background-color: #f9bc60;color: white;  -ms-transform: scale(1.1); transform: scale(1.1);'></td><tr>\n";
												echo "</div>\n";
											
										unset($separo);
									}
									echo "</table>";
								}

							?>
						</form>
					</div>

						<!--fin del container 2-->
					
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