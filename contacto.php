<?php 
include("config.php");

$nombre = $_REQUEST["nombre"];
$correo = $_REQUEST["email"];
$opiniones 	= $_REQUEST["message"];
$sql ="INSERT INTO opiniones (id, nombre, correo, opiniones) VALUES ('id','$nombre','$correo','$opiniones')";
if(mysqli_query($con, $sql)){
	echo "<script> alert('Su opinion se ha enviado correctamante.');window.location= 'home.php' </script>"; 

}else{
	echo "ERROR: $sql. " 
	. mysqli_error($con);
}

?>