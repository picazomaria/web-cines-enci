<?php 
if (isset($_POST['nombre']) && isset($_POST['apellidos']) && isset($_POST['email']) && isset($_POST['contra01']) && isset($_POST['contra02']) && isset($_POST['dni']) && isset($_POST['fecha_naci'])) {
	

	$contra1=filter_var($_POST['contra01'],FILTER_SANITIZE_STRING);
	$contra2=filter_var($_POST['contra02'],FILTER_SANITIZE_STRING);
	$largo=strlen($contra1);
	$mail=filter_var($_POST['email'],FILTER_SANITIZE_EMAIL);
	$nombre_usu=filter_var($_POST['nombre'],FILTER_SANITIZE_STRING);
	$apellidos_usu=filter_var($_POST['apellidos'],FILTER_SANITIZE_STRING);
	$dni=filter_var($_POST['dni'],FILTER_SANITIZE_STRING);
	$date=$_POST['fecha_naci'];
/*
	$to = $mail;
	$subject = "Verificación de cuenta";
	$num=rand(1000,9999);
	$message = "Hola ".$nombre_usu." te deseamos la bienvenida a nuetra página web, y esperamos verte pronto por nuetsros cines. Tu código de verificación de usuario es: ".$num.", tenga en cuenta que será válido por 3 minutos";

	if (mail($to, $subject, $message)) {
		echo "todo ha salido como esperaba";
	}else{
		echo "error de email";
	};
*/
//"phpmailer/phpmailer": "~6.1";
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Incluir la libreria PHPMailer
//use PHPMailer\PHPMailer\PHPMailer;
//use PHPMailer\PHPMailer\Exception;
//use PHPMailer\PHPMailer\SMTP;
//include_once('C:\xampp\htdocs\PF\WEB\librerias\PHPMailer\src\PHPMailerAutoload.php');
require '../librerias/PHPMailer/src/Exception.php';
require '../librerias/PHPMailer/src/PHPMailer.php';
require '../librerias/PHPMailer/src/SMTP.php';

// Inicio
$mail = new PHPMailer(true);

try {
    // Configuracion SMTP
    $mail->SMTPDebug = SMTP::DEBUG_SERVER;                         // Mostrar salida (Desactivar en producción)
    $mail->isSMTP();                                               // Activar envio SMTP
    $mail->Host  = 'smtp.gmail.com';                     // Servidor SMTP
    $mail->SMTPAuth  = true;                                       // Identificacion SMTP
    $mail->Username  = 'CONFIGURAR_USUARIO_SMTP';                  // Usuario SMTP
    $mail->Password  = 'CONFIGURAR_CONTRASEÑA_SMTP';	          // Contraseña SMTP
    $mail->SMTPSecure = 'SSL';
    $mail->Port  = 465;
    $mail->setFrom('cines.enci@gmail.com', 'ENCI Cines');                // Remitente del correo

    // Destinatarios
    $mail->addAddress($mail, $nombre);  // Email y nombre del destinatario
 	$num=rand(1000,9999);
    // Contenido del correo
    $mail->isHTML(true);
    $mail->Subject = 'Código de verificación';
    $mail->Body  = "<p>Hola <b>".$nombre_usu."</p><p>te deseamos la bienvenida a nuetra página web, y esperamos verte pronto por nuestros cines.</p><p>Tu código de verificación de usuario es: <b>".$num."</b>, tenga en cuenta que será válido por 3 minutos</p>";
    $mail->AltBody = "Hola ".$nombre_usu." te deseamos la bienvenida a nuetra página web, y esperamos verte pronto por nuetsros cines. Tu código de verificación de usuario es: ".$num.", tenga en cuenta que será válido por 3 minutos";
  
	if ($mail->send()) {
		echo "email enviado";
	}else{
		echo "el email no se ha enviado";
	}
    
    //echo 'El mensaje se ha enviado';
} catch (Exception $e) {
    echo "El mensaje no se ha enviado. Mailer Error: {$mail->ErrorInfo}";
}





}else{
	echo "Te has perdido";
}





?>