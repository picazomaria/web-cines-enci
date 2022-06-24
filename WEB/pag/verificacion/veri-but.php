<?php 
session_start();
$_SESSION['error1']="0";
$_SESSION['error5']="0";
$_SESSION['new']='No';
$_SESSION['butocu']='No';

if (isset($_SESSION['inicio']) && isset($_SESSION['lugar']) && isset($_SESSION['pelicula']) && isset($_SESSION['fecha'])) {

	if (isset($_POST['fila']) && isset($_POST['butaca'])) {
		
		if ($_POST['fila'] == 1) {
			if ($_POST['butaca']>=2 && $_POST['butaca']<=10) {
				//hacemos consulta para entradas para comprobar que las butacas no estan vendidas para esa sesion
				try{
					
					$usuario="asix";
					$contraseña="asix";
					$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
				
					$consulta='select count(*)
						from horario h
						join peliculas p on h.cod_peli=p.cod_peli
						join salas s on h.cod_sala=s.cod_sala
						join butacas b on s.cod_sala=b.cod_sala
						join entradas e on b.cod_butacas=e.cod_butacas
						where h.cod_hora="'.$_SESSION['hora'].'" && p.nombre="'.$_SESSION['pelicula'].'" && b.fila='.$_POST['fila'].' && b.butaca='.$_POST['butaca'].' && e.dia='.$_SESSION['fecha'].'
						';
					$result=$bd->query($consulta);
					foreach ($result as $key) {
						if ($key['count(*)']==0) {
							//en el caso de que no haya ninguna entrada con esas caracteristicas creamos una array con la fila/butaca y volvemos por si quieren mas de una entrada
							$_SESSION['butacas'][]="".$_POST['fila']." ".$_POST['butaca']."";
							$_SESSION['new']='Si';
							header('location: ../butacas.php');
						}else{
							$_SESSION['butocu']='Si';
							header('Location:../butacas.php');

						}
					
					}

					$bd=null;
					$consulta=null;
				} catch (PDOException $e){
					print "¡Error!: " . $e->getMessage() . "<br/>";
				exit();
				}

			}else{
				$_SESSION['error1']='1';
				header('location: ../butacas.php');
			}
		}elseif ($_POST['fila'] == 5) {
			if ($_POST['butaca']>=1 && $_POST['butaca']<=10) {
				try{
					
					$usuario="asix";
					$contraseña="asix";
					$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
				
					$consulta='select count(*)
						from horario h
						join peliculas p on h.cod_peli=p.cod_peli
						join salas s on h.cod_sala=s.cod_sala
						join butacas b on s.cod_sala=b.cod_sala
						join entradas e on b.cod_butacas=e.cod_butacas
						where h.cod_hora="'.$_SESSION['hora'].'" && p.nombre="'.$_SESSION['pelicula'].'" && b.fila='.$_POST['fila'].' && b.butaca='.$_POST['butaca'].' && e.dia='.$_SESSION['fecha'].'
						';
					$result=$bd->query($consulta);
					foreach ($result as $key) {
						if ($key['count(*)']==0) {
							//en el caso de que no haya ninguna entrada con esas caracteristicas creamos una array con la fila/butaca y volvemos por si quieren mas de una entrada
							$_SESSION['butacas'][]="".$_POST['fila']." ".$_POST['butaca']."";
							$_SESSION['new']='Si';
							header('location: ../butacas.php');
						}else{
							$_SESSION['butocu']='Si';
							header('Location:../butacas.php');

						}
					
					}

					$bd=null;
					$consulta=null;
				} catch (PDOException $e){
					print "¡Error!: " . $e->getMessage() . "<br/>";
				exit();
				}
			}else{
				$_SESSION['error5']='1';
				header('location: ../butacas.php');
			}
		}else{
			try{
					
					$usuario="asix";
					$contraseña="asix";
					$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
				
					$consulta='select count(*)
						from horario h
						join peliculas p on h.cod_peli=p.cod_peli
						join salas s on h.cod_sala=s.cod_sala
						join butacas b on s.cod_sala=b.cod_sala
						join entradas e on b.cod_butacas=e.cod_butacas
						where h.cod_hora="'.$_SESSION['hora'].'" && p.nombre="'.$_SESSION['pelicula'].'" && b.fila='.$_POST['fila'].' && b.butaca='.$_POST['butaca'].' && e.dia='.$_SESSION['fecha'].'
						';
					$result=$bd->query($consulta);
					foreach ($result as $key) {
						if ($key['count(*)']==0) {
							//en el caso de que no haya ninguna entrada con esas caracteristicas creamos una array con la fila/butaca y volvemos por si quieren mas de una entrada
							$_SESSION['butacas'][]="".$_POST['fila']." ".$_POST['butaca']."";
							$_SESSION['new']='Si';
							header('location: ../butacas.php');
						}else{
							$_SESSION['butocu']='Si';
							header('Location:../butacas.php');

						}
					
					}

					$bd=null;
					$consulta=null;
				} catch (PDOException $e){
					print "¡Error!: " . $e->getMessage() . "<br/>";
				exit();
				}
		}
	}
	
}
if (!isset($_SESSION['inicio'])) {
	header('location:../socios.php');
}

?>