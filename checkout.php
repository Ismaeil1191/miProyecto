<?php 
include "config.php";
session_start();

include "cart.class.php";
$cart=new Cart();

if(isset($_POST["submit"])){
	
	$name=mysqli_real_escape_string($con,$_POST["name"]);
	$email=mysqli_real_escape_string($con,$_POST["email"]);
	$contact=mysqli_real_escape_string($con,$_POST["contact"]);
	$address=mysqli_real_escape_string($con,$_POST["address"]);
	$city=mysqli_real_escape_string($con,$_POST["city"]);
	
	$sql="insert into users (NAME,EMAIL,CONTACT,ADDRESS,CITY) values ('{$name}','{$email}','{$contact}','{$address}','{$city}')";
	if($con->query($sql)){
		$uid=$con->insert_id;

		
		$order_no=rand(10000,100000);
		$total_amt=$cart->get_cart_total();
		$sql="insert into orders (ORDER_NO,ORDER_DATE,UID,TOTAL_AMT) values ('{$order_no}',NOW(),'{$uid}','{$total_amt}')";
		if($con->query($sql)){
			$oid=$con->insert_id;
			
			
			$sql="insert into order_details (OID,PID,PNAME,PRICE,QTY,TOTAL) values ";
			$rows=[];
			foreach($cart->get_all_items() as $item){
				$rows[]="('{$oid}','{$item["id"]}','{$item["name"]}','{$item["price"]}','{$item["qty"]}','{$item["total"]}')";
			}
			$sql.=implode(",",$rows);
			if($con->query($sql)){
				$cart->destroy();
				header("location:complete.php?Compra-realizada-con-éxito");
			}
		}
		
	}
	
}
?>
<html>
<head>
	<title>Finalizar compra</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<?php include "navbar.php"; ?>
	<div class='container mt-5'>
		<h2 class='text-muted mb-4'>Detalles del pedido</h2>
		<div class='row'>
			<div class='col-md-6 mx-auto'>
				<form method='post'  autocomplete="off">
					<div class='form-group'>
						<label>Nombre</label>
						<input type='text' name='name' class='form-control' required placeholder='Nombre'>
					</div>
					<div class='form-group'>
						<label>Correo Electrónico</label>
						<input type='email' name='email' class='form-control' required placeholder='Correo Electrónico'>
					</div>
					<div class='form-group'>
						<label>Número de teléfono</label>
						<input type='text' name='contact' class='form-control' required placeholder='Nº teléfono'>
					</div>
					<div class='form-group'>
						<label>Dirección</label>
						<textarea class='form-control' required name='address' placeholder='Dirección'></textarea>
					</div>
					<div class='form-group'>
						<label>Ciudad</label>
						<input type='text' name='city' class='form-control' required placeholder='Ciudad'>
					</div>
					<input type='submit' name='submit' value='Finalizar ' class='btn btn-primary'>
				</form>
			</div>
		</div>
	</div>



	<footer class="text-center text-lg-start bg-light text-muted">
		<section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
			
		</section>
		<section class="">
			<div class="container text-center text-md-start mt-5">
				<div class="row mt-3">
					
					<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
						
						<h6 class="text-uppercase fw-bold mb-4">
							<i class="fas fa-gem me-3"></i><img src="images/logo1.png">
						</h6>
						<p>
							La tienda online más especializada en productos árabes y que ofrece las mejores ofertas en artesanía árabe. Se encarga de vender productos hechos a mano y llevarlos hasta tu casa. 
						</p>
					</div>
					
					<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
						<h6 class="text-uppercase fw-bold mb-4">
							Productos
						</h6>
						<p>
							<a href="index.php" class="text-reset">Entrada</a>
						</p>
						<p>
							<a href="cocina.php" class="text-reset">Cocina</a>
						</p>
						<p>
							<a href="salon.php" class="text-reset">Salón</a>
						</p>
						<p>
							<a href="dormitorio.php" class="text-reset">Dormitorio</a>
						</p>
						<p>
							<a href="baño.php" class="text-reset">Baño</a>
						</p>
						<p>
							<a href="jardin.php" class="text-reset">Jardín</a>
						</p>
					</div>
					<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
						<h6 class="text-uppercase fw-bold mb-4">
							Enlaces de interés
						</h6>
						<p>
							<a href="home.php" class="text-reset">Home</a>
						</p>
						<p>
							<a href="outlet.php" class="text-reset">Outlet</a>
						</p>
						<p>
							<a href="#" class="text-reset">About</a>
						</p>
					</div>
					<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
						
						<h6 class="text-uppercase fw-bold mb-4">Contacto</h6>
						<p><i class="fas fa-home me-3"></i>Galicia-A Coruña-15005</p>
						<p>
							<i class="fas fa-envelope me-3"></i>
							info@al-madina.es
						</p>
						<p><i class="fas fa-phone me-3"></i> +34 000 000 000</p>
					</div>
				</div>
			</div>
		</section>
		<div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
			© 2022 Copyright:
			<a class="text-reset fw-bold" href="home.php">Al-Madina</a>
		</div>
	</footer>
</body>
</html> 