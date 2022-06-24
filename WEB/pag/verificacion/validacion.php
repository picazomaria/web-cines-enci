<?php
session_start();

if (isset($_POST['iniciar']) && !empty($_POST['passwd']) && !empty($_POST['email'])) {
	
		
		//creacion de las cookies
		if (isset($_POST['recordarme']) && !empty($_POST['email']) && !empty($_POST['passwd'])) {
			$email=filter_var($_POST['email'],FILTER_SANITIZE_EMAIL);
			$contra=filter_var($_POST['passwd'],FILTER_SANITIZE_STRING);
			setcookie("email",$email);
			setcookie("contraseña",$contra);
		}
		//funcion de validación de usuarios
			$mail=filter_var($_POST['email'],FILTER_SANITIZE_EMAIL);
			$contrasena=$_POST['passwd'];
			$contra2=md5($contrasena);
				try{
					$resultado=0;
					//$contra_cif=(md5($contrasena));
					$usuario="asix";
					$contraseña="asix";
					$bd=new PDO('mysql:host=localhost;dbname=cine',$usuario,$contraseña);
				
					$consulta='SELECT * from clientes where mail like "'.$mail.'"';
					$result=$bd->query($consulta);
					foreach ($result as $key) {
						if ($key['mail'] == $mail) {
							if ($contra2 == $key['contrasena']) {
								$resultado=1;
							}else{
								$_SESSION['contraseña']='1';
							}
						}
					
					}

					if ($resultado == 1) {
						
						$_SESSION['inicio']=$mail;
						header('Location: ../seleccion.php');
					}else{
						$_SESSION['fallo']='si';
						header('Location: ../socios.php');
						
						
					}

					$bd=null;
					$consulta=null;
				} catch (PDOException $e){
					print "¡Error!: " . $e->getMessage() . "<br/>";
				exit();
				}

			
			

			


}
if (!isset($_SESSION['inicio'])) {
	header('location:../socios.php');
}
    
	?>