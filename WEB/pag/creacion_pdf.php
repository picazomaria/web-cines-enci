<?php 
session_start();
if (isset($_SESSION['inicio']) && isset($_SESSION['lugar']) && isset($_SESSION['fecha']) && isset($_SESSION['pelicula']) && isset($_SESSION['hora']) && isset($_SESSION['butacas']) && isset($_SESSION['tipo_ent']) && isset($_SESSION['tipo_pago'])) {

	// CONFIGURACIÓN PREVIA
	ob_start();
	require('../librerias/fpdf184/fpdf.php');
	define('EURO',chr(128)); // Constante con el símbolo Euro.
	$pdf = new FPDF('P','mm',array(80,150)); // Tamaño tickt 80mm x 150 mm (largo aprox)
	$pdf->AddPage();
	// CABECERA
	$pdf->SetFont('Helvetica','',12);
	$pdf->Cell(60,4,'enci.com',0,1,'C');
	$pdf->SetFont('Helvetica','',8);
	$pdf->Ln(3);
	$pdf->Cell(60,4,'C.I.F.: 01234567A',0,1,'C');
	
		//LUGAR
						if ($_SESSION['lugar']=='V') {
							$lug='Valencia';
						}elseif ($_SESSION['lugar']=='S') {
							$lug='Sueca';
						}elseif ($_SESSION['lugar']=='A') {
							$lug='Albal';
						}elseif ($_SESSION['lugar']=='G') {
							$lug='Gandia';
						}elseif ($_SESSION['lugar']=='C') {
							$lug='Carcagente';
						}elseif ($_SESSION['lugar']=='T') {
							$lug='Torrente';
						}
	$pdf->Cell(60,4,$lug,0,1,'C');
	$pdf->Cell(60,4,'958 988 588',0,1,'C');
	$pdf->Cell(60,4,'cines.enci@gmail.com',0,1,'C');
	 
	// DATOS FACTURA        
	$pdf->Ln(5);
	try{
						
			$usuario="asix";
			$contraseña="asix";
			$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
			$consulta="SELECT count(*) from entradas";
			$result=$bd->query($consulta);
			foreach ($result as $precio) {
				$num_entradas=$precio['count(*)'];
			}
			$bd=null;
			$consulta=null;
		} catch (PDOException $e){
			print "¡Error!: " . $e->getMessage() . "<br/>";
		exit();
		}
	$pdf->Cell(60,4,'Factura Simpl.: '.$num_entradas.'',0,1,'');
							$fecha_seg = getdate();
						 	 	$dia=$fecha_seg['mday'];
						 	 	$mes=$fecha_seg['mon'];
						 	 	$año=$fecha_seg['year'];
						 	 $fechahoy=$dia."-".$mes."-".$año;
	
	$pdf->Cell(60,4,'Fecha: '.$fechahoy.'',0,1,'');
	$pdf->Cell(60,4,'Metodo de pago: '.$_SESSION['tipo_pago'].'',0,1,'');
	// COLUMNAS
	$pdf->SetFont('Helvetica', 'B', 7);
	$pdf->Cell(30, 10, 'Articulo', 0);
	$pdf->Cell(5, 10, 'Ud',0,0,'R');
	$pdf->Cell(10, 10, 'Precio',0,0,'R');
	$pdf->Cell(15, 10, 'Total',0,0,'R');
	$pdf->Ln(8);
	$pdf->Cell(60,0,'','T');
	$pdf->Ln(0);
	 
	// PRODUCTOS
		//consulta para saber el precio de la entrada seleccionado anteriormente
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
			
			//saber a la hora que fue
			$consulta2="select hora from horario where cod_hora = '".$_SESSION['hora']."'";
			$result2=$bd->query($consulta2);
			foreach ($result2 as $hora) {
				$hora=$hora['hora'];							
			}
			$bd=null;
			$consulta=null;
			$consulta2=null;
		} catch (PDOException $e){
			print "¡Error!: " . $e->getMessage() . "<br/>";
		exit();
		}
		//fin de la consulta
	$pdf->SetFont('Helvetica', '', 7);
	$pdf->MultiCell(30,4,$_SESSION['pelicula'],0,'L'); 
	$pdf->Cell(35, -5, $total_entradas,0,0,'R');

	$pdf->Cell(10, -5, $valor_entrada.EURO,0,0,'R');
	$pdf->Cell(15, -5, $precio_total.EURO,0,0,'R');
	$pdf->Ln(3);

	// SUMATORIO DE LOS PRODUCTOS Y EL IVA
	$pdf->Ln(6);
	$pdf->Cell(60,0,'','T');
	$pdf->Ln(2);    
	$pdf->Cell(25, 10, 'TOTAL SIN I.V.A.', 0);    
	$pdf->Cell(20, 10, '', 0);
	$pdf->Cell(15, 10, number_format(round((round($valor_entrada)/1.21),2), 2, ',', ' ').EURO,0,0,'R');
	$pdf->Ln(3);    
	$pdf->Cell(25, 10, 'I.V.A. 21%', 0);    
	$pdf->Cell(20, 10, '', 0);
	$pdf->Cell(15, 10, $valor_entrada.EURO,0,0,'R');
	$pdf->Ln(3);    
	$pdf->Cell(25, 10, 'TOTAL', 0);    
	$pdf->Cell(20, 10, '', 0);
	$pdf->Cell(15, 10,$precio_total.EURO,0,0,'R');
	 // PIE DE PAGINA
	$pdf->Ln(10);
	$pdf->Cell(60,0,'MUCHAS GRACIAS POR COMPRAR EN CINES ENCI',0,1,'C');
	$pdf->Ln(3);
	$pdf->Cell(60,0,'ESPERAMOS QUE DESFRUTES DE TU PELICULA',0,1,'C');
	$pdf->Ln(10);
	$pdf->Cell(60,0,'FECHA : '.$_SESSION['fecha'].'',0,1,'C');
	$pdf->Ln(3);
	$pdf->Cell(60,0,'SESSION: '.$hora.'',0,1,'C');
	$pdf->Ln(3);
	foreach ($_SESSION['butacas'] as $key => $value) {
	 
		$fila=substr($value, 0, 1); 
		$butaca=substr($value, 2, 2); 
	 	$pdf->Cell(60,0,'FILA: '.$fila.'-BUTACA: '.$butaca.'',0,1,'C');
	 	$pdf->Ln(3);
	 	
	 }
	$pdf->Output();
	ob_end_flush();
}else{
	header('location:./socios.php');
}
?>