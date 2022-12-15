<?php 
	include "config.php";
	session_start();
	  
	include "cart.class.php";
	$cart=new Cart();
  

?>
<html>
	<head>
        <title>Home</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		<link rel="icon" type="image/png" src="images/favicon.png">
		<link href="css/stylehome.css" rel="stylesheet" />
    </head>
    
    <body>
		<?php include "navbar.php"; ?>
   <img src="images/Home_Portada.jpg" >
 	<div class='container mt-5 pb-5'>
			<h2 class='text-muted mb-4 text-center'><a class="navbar-brand" href="home.php"><img src="images/logo1.png"></a></h2>
			<div class='row'>
				<h3 class='text-muted mb-4'>Tienda Online de artesanía árabe al mejor precio.</h3>

				<h5 class='text-muted mb-4'>La primera tienda online de productos árabes en España, tus productos estarán en tu casa en 48h. Esperamos que tengas la mejor experiencia de tu vida con nosotros.</h4>

				<h6 class='text-muted mb-4'>
					Apostamos por productos artesanales y ecológicos al 100%, por lo que contamos con un gran abanico de productos con las mejores ofertas.</h6>

<h6 class='text-muted mb-4'>Productos para decorar tu casa<br> 
	<ul>
	<li>Entrada: En esta categoría encontrarás una amplia selección de productos para decorar la entrada de tu casa.</li>
		<li>Cocina: En esta categoría encontrarás una amplia selección de productos para decorar la cocina de tu casa.</li>
		<li>Salón: En esta categoría encontrarás una amplia selección de productos para decorar el salón de tu casa.</li>
		<li>Dormitorio: En esta categoría encontrarás una amplia selección de productos para decorar el dormitorio de tu casa.</li>
		<li>Baño: En esta categoría encontrarás una amplia selección de productos para decorar el baño de tu casa.</li>
		<li>Jardín: En esta categoría encontrarás una amplia selección de productos para decorar el jardín de tu casa.</li>
	</ul>

				</h6>	

				<div class='col-md-3 mt-2'>
						<div class="card">
							<img src="images/envio.png" height="150px" width="100px">
							<h6 class='text-muted mb-4'>Envío gratis<br>
							En pedidos superiores a 200€</h6>
						</div>
				</div>
				<div class='col-md-3 mt-2'>
						<div class="card">
							<img src="images/devolution.png" height="150px" width="100px">
							<h6 class='text-muted mb-4'>Garantía de devolución<br>
							14 días de plazo</h6>
						</div>
				</div>
				<div class='col-md-3 mt-2'>
						<div class="card">
							<img src="images/Services_atention.png" height="150px" width="100px">
							<h6 class='text-muted mb-4'>Atención al cliente<br>
							+34 000 000 000</h6>
						</div>
				</div>
				<div class='col-md-3 mt-2'>
						<div class="card">
							<img src="images/garanted.png" height="150px" width="100px">
							<h6 class='text-muted mb-4'>Clientes Satisfechos<br>
							Garantía de satisfacción</h6>
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