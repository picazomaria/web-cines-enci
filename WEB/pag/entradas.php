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
	<!--fin del navegador e inicio de pagar -->
	
	<?php
	session_start();
	$_SESSION['fin']=true;
	if(isset($_SESSION['inicio']) && isset($_SESSION['lugar']) && isset($_SESSION['fecha']) && isset($_SESSION['pelicula']) && isset($_SESSION['hora']) && isset($_SESSION['butacas']) && isset($_SESSION['tipo_ent']) && isset($_SESSION['tipo_pago'])){

	?><!--abriendo-->
		<div class="container">
			<div class="row">
				<div class="fondo-bajo">
					<div class="fondo-encima">
						<!-- abriendo fin-->
						<h4>DESCARGA TU ENTRADA</h4>
						<p>Ya tienes tus entradas reservadas</p> 
						<br>
						<?php
						//include('creacion_pdf.php');
						try{
					
							$usuario="asix";
							$contraseña="asix";
							$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
							
														
							//saber el codigo de la pelicula
							$consulta1="select cod_peli from peliculas where nombre = '".$_SESSION['pelicula']."'";
							$result=$bd->query($consulta1);
							foreach ($result as $peli) {
								$cod_peli=$peli['cod_peli'];
							}
							//saber el codigo de la sala
							$consulta2="select cod_sala from horario where cod_sala like '".$_SESSION['lugar']."%' && cod_hora = '".$_SESSION['hora']."'";
							$result2=$bd->query($consulta2);
							foreach ($result2 as $sala) {
								$sala_todo=$sala['cod_sala'];
								$letra_sala=substr($sala_todo, 0, 1); 
								$num_sala=substr($sala_todo, 1, 1); 
							}
							
							//hacer inserts
							
							if (isset($_SESSION['hecho']) && $_SESSION['hecho'] == 'si') {
								echo "<p>Te deseamos que disfrutes de la película</p>\n";
							}else{
								$_SESSION['si']=0;
								foreach ($_SESSION['butacas'] as $key => $value) {
									$fila=substr($value, 0, 1); 
									$butaca=substr($value, 2, 2); 
									$consulta="select count(*) from entradas";
									$result=$bd->query($consulta);
									//saber el siguiente número para el cod_entrada
									foreach ($result as $num_entra) {
										$num_entradas=$num_entra['count(*)'];
									}
									$num_entradas=$num_entradas+1;
									//fin del codigo de entrada
									$consulta4="INSERT INTO entradas VALUES ($num_entradas,'".$_SESSION['inicio']."','".$cod_peli."','".$num_sala."".$letra_sala."".$fila."-".$butaca."','".$_SESSION['tipo_ent']."','".$_SESSION['tipo_pago']."','".$_SESSION['fecha']."');";
									if ($bd->query($consulta4)) {
										$_SESSION['si']=1;
										$_SESSION['hecho']='si';
									}else{
										echo "<p>Parece que a habido algún problema</p>";
										
									}
								}
							}
							if ($_SESSION['si'] == 1) {
								echo "<form action='./creacion_pdf.php' method='post'>\n";
								echo "<input type='submit' name='pdf' value='TICKET'>\n";
								echo "</form>\n";
							}
							
						
							
							
							

							$bd=null;
							$consulta=null;
							$consulta1=null;
							$consulta2=null;
							$consulta3=null;
							$consulta4=null;
						} catch (PDOException $e){
							print "¡Error!: " . $e->getMessage() . "<br/>";
						exit();
						}
						?>
						<form method="post" action="./verificacion/salir_session.php">
							<input type="submit" name="entrada" value="SALIR">
						</form>
						<!--cerrando-->
					</div>
				</div>
			</div>
		</div>
		<!-- cerrando fin -->
	<?php 
	}else{
		header('location:./socios.php');
	}
	?>


</body>
</html>