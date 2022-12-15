<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</style>
<nav class="navbar navbar-expand-sm bg-secondary navbar-dark">
  <div class='container'>
    <a class="navbar-brand" href="home.php"><img src="images/logo1.png"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav ml-auto">
        <ul class="nav navbar-nav">
          <li>
            <a class="nav-item nav-link" href="home.php">Home</a>
          </li>
          <li class="nav-item dropdown">
            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Mobiliario</a>
            <div class="dropdown-menu">
              <a href="index.php" class="dropdown-item">Entrada</a>
              <a href="cocina.php" class="dropdown-item">Cocina</a>
              <a href="salon.php" class="dropdown-item">Salón</a>
              <a href="dormitorio.php" class="dropdown-item">Dormitorio</a>
              <a href="baño.php"class="dropdown-item">Baño</a>
              <a href="jardin.php" class="dropdown-item">Jardín</a>
            </div>
          </li>
          <li>
            <a class="nav-item nav-link" href="outlet.php">Outlet</a>
          </li>
          <li>
            <a class="nav-item nav-link" href="contacto1.php">Contacto</a>
          </li>
          <li>
            <a class="nav-item nav-link" href="view_cart.php"><img src="images/cesta.png" width="25px" height="25px"> (<?php echo $cart->get_cart_count();?>)</a>
          </li> 
        </ul>
      </div>
    </div>
  </div>
</nav>

