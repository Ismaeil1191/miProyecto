<?php 
	include "config.php";
	session_start();
	
	include "cart.class.php";
	$cart=new Cart();

?>
<html>
	<head>
        <title>Finalizar</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    </head>
    <body>
		<?php include "navbar.php"; ?>
        <div class='container mt-5'>
			<h2 class='text-muted mb-4'>Pedido hecho completamente</h2>
			<div class='row'>
				<div class='col-md-12'>
						<div class='alert alert-success'>Tu pedido se ha realizado correctamente, Gracias por confiar en nostros.</div>
					</div>
					
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
						<!-- Links -->
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