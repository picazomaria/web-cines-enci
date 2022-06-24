<?php
setcookie("fallo","0",time() - 10 );
if (isset($_POST['hecho']) && !empty($_POST['nombre']) && !empty($_POST['dni']) && !empty($_POST['contra'])) {
	

	
		//funcion de validación de empleados
			$nombre=filter_var($_POST['nombre'],FILTER_SANITIZE_STRING);
			$dni=filter_var($_POST['dni'],FILTER_SANITIZE_STRING);
			$contrasena=$_POST['contra'];
			$contra2=md5($contrasena);
				try{
					$resultado=0;
					$usuario="asix";
					$contraseña="asix";
					$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);

					$consulta='SELECT * from empleados where nombre like "'.$nombre.'"';
					$result=$bd->query($consulta);
					foreach ($result as $key) {
						if ($contra2 == $key['contrasena']) {
							if ($dni == $key['dni']) {
								$resultado=1;
								session_start();
								$_SESSION['lugar']=$key['lugar_tra'];
							}
						}
						
					}

					if ($resultado == 1) {
						
						$_SESSION['inicio-emp']=$dni;
						
						header('Location: ../seleccion-emp.php');
					}else{
						setcookie("fallo","0",time() + 10 );
						header('Location: ../empleados.php');
						
						
					}

					$bd=null;
					$consulta=null;
				} catch (PDOException $e){
					print "¡Error!: " . $e->getMessage() . "<br/>";
				exit();
				}

			
			

			


}
if (!isset($_SESSION['inicio-emp'])) {
	header('location:../empleados.php');
}
    
	?>