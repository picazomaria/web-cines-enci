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
	<!--fin del navegador e inicio de la forma de pago -->
	<!-- página anterior -->
	<div class="sessiones col-3 col-md-2 col-sm-3">
			<form action="./butacas.php" method="post">

				<input type="submit" name="sig" value="Pag. anterior" style='width: 100%;margin-left: 250px;height: 40px;background:0;color:white;cursor:pointer;text-align: center;transition:all .3s;border: 1px solid #001e1;border-radius: 2px;outline: 0;box-shadow: 3px 3px 20px rgba(0, 0, 0, 0.2);transition: all .2s;background-color: #f9bc60;'>

			</form>
	</div><br>
	<!--fin de página anterior-->
	<!--base-->
	<div class="container">
		<div class="row">
			<div class="fondo-bajo">
				<div class="fondo-encima">
					<form action="./verificacion/veri-pago.php" method="post">
	<!--fin base-->
	<?php 
	session_start();
	//si se han comprado la entrada solo queda descargar el ticket y salir 
	if (isset($_SESSION['fin'])) {
		header('location:./entradas.php');
	}
		if (isset($_SESSION['inicio']) && isset($_SESSION['lugar']) && isset($_SESSION['pelicula']) && isset($_SESSION['hora']) && isset($_SESSION['butacas']) && isset($_SESSION['fecha'])) {
	?>
				<br><h2>SELECCIONA EL TIPO DE ENTRADA Y DONDE TRAMITARLA</h2><br>
				<?php 
					try{
					
						$usuario="asix";
						$contraseña="asix";
						$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
						$consulta="SELECT * from precios ;";
						$result=$bd->query($consulta);
						//primer select-------------------------------------------------------------------------
						echo "<select name='tipo' required>\n";
						echo "<option disabled hidden selected>Tipo de entrada:</option>\n";
						foreach ($result as $precio) {
							if ($precio['cod_precio'] == "normal") {
								echo "<option value='".$precio['cod_precio']."'>Normal</option>\n";

							}elseif ($precio['cod_precio'] == "cumpleaños") {
								echo "<option value='".$precio['cod_precio']."'>Cumpleaños</option>\n";

							}elseif ($precio['cod_precio'] == "dia_espectador") {
								echo "<option value='".$precio['cod_precio']."'>Día del espectador</option>\n";

							}elseif ($precio['cod_precio'] == "grupal") {
								echo "<option value='".$precio['cod_precio']."'>Grupal(10 personas)</option>\n";

							}elseif ($precio['cod_precio'] == "jubilados") {
								echo "<option value='".$precio['cod_precio']."'>Jubilados</option>\n";

							}elseif ($precio['cod_precio'] == "menor 8") {
								echo "<option value='".$precio['cod_precio']."'>Menor de 8 años</option>\n";

							}elseif ($precio['cod_precio'] == "carnet_joven") {
								echo "<option value='".$precio['cod_precio']."'>Carnet Joven</option>\n";
								
							}elseif ($precio['cod_precio'] == "primera_compra") {
								echo "<option value='".$precio['cod_precio']."'>Primera compra</option>\n";
							}
						}
						echo "</select><br><br><br>\n";
						//segundo select -----------------------------------------------------------------------
						echo "<select name='pago' required>\n";
						echo "<option disabled hidden selected>Donde pagar:</option>\n";
						$consulta2="SELECT * from forma_pago ;";
						$result=$bd->query($consulta2);
						foreach ($result as $forma) {
							if ($forma['cod_pago'] == 'ON') {
								echo "<option value='".$forma['cod_pago']."'>Online</option>\n";
							}elseif ($forma['cod_pago'] == 'PT-PT') {
								echo "<option value='".$forma['cod_pago']."'>Tramitar en tienda</option>\n";
							}
						}
						echo "</select><br><br><br>\n";
						$bd=null;
						$consulta=null;
						$consulta2=null;
					} catch (PDOException $e){
						print "¡Error!: " . $e->getMessage() . "<br/>";
					exit();
					}
				?>
			<input type="submit" name="siguiente" value="Comprar"><br><br>
	<?php
		}else{
			header('location:./socios.php');
		}
	?>
	<!--cerrando base-->
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--fin de cerrando base-->

</body>
</html>