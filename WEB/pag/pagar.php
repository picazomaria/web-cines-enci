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
	<!-- página anterior -->
	<div class="sessiones col-3 col-md-2 col-sm-3">
			<form action="./forma-pago.php" method="post">

				<input type="submit" name="sig" value="Pag. anterior" style='width: 100%;margin-left: 250px;height: 40px;background:0;color:white;cursor:pointer;text-align: center;transition:all .3s;border: 1px solid #001e1;border-radius: 2px;outline: 0;box-shadow: 3px 3px 20px rgba(0, 0, 0, 0.2);transition: all .2s;background-color: #f9bc60;'>

			</form>
	</div><br>
	<!--fin de página anterior-->
	<?php
	session_start();
if (isset($_SESSION['fin'])) {
		header('location:./entradas.php');
}
	if(isset($_SESSION['inicio']) && isset($_SESSION['lugar']) && isset($_SESSION['fecha']) && isset($_SESSION['pelicula']) && isset($_SESSION['hora']) && isset($_SESSION['butacas']) && isset($_SESSION['tipo_ent']) && isset($_SESSION['tipo_pago'])){

	?><!--abriendo-->
		<div class="container">
			<div class="row">
				<div class="fondo-bajo">
					<div class="fondo-encima" style="background-color: #0f0e17;">
						<form action="./verificacion/veri-pagar.php" method="post">
						<!-- abriendo fin-->
						<?php
							try{
					
								$usuario="asix";
								$contraseña="asix";
								$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
								$consulta="SELECT * from precios where cod_precio='".$_SESSION['tipo_ent']."';";
								$result=$bd->query($consulta);
								foreach ($result as $precio) {
									$valor_entrada=$precio['precio'];
								}
								$total_entradas=count($_SESSION['butacas']);
								$precio_total=$valor_entrada*$total_entradas;
								echo "<h3 style='color:#f9bc60'>Es un total de: $precio_total €.</h3>\n";

								$bd=null;
								$consulta=null;
							} catch (PDOException $e){
								print "¡Error!: " . $e->getMessage() . "<br/>";
							exit();
							}

						?><br>
						<h4 style="color:white">DATOS DE SU TARJETA</h4>
						<input type="text" name="tarjeta" placeholder="NÚMERO DE LA TARJETA" required style="color:white"><BR><br>
						<input type="text" name="titular" placeholder="NOMBRE Y APELLIDOS DEL TITULAR" required style="color:white"><BR><BR>
						<p style="color:white">FECHA DE CADUCIDAD FINAL:</p>
						<input type="number" name="mes_expi" placeholder="MES" min="01" max="12" required style="color:white;width: 45%;">
						<input type="number" name="año_expi" placeholder="AÑO" min="2023" max="2030" required style="color:white;width: 45%;"><br><br>
						<input type="number" name="cvc" placeholder="CVC" min="100" max="999" required style="color:white;width: 45%;"><br><br>
						<input type="submit" name="verificar" value="PAGAR">
						<!--cerrando-->
						</form>
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