<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100;200;300;400&family=Roboto:wght@100;300;400&display=swap" rel="stylesheet">
	
	<link rel="stylesheet" href="https://unpkg.com/leaflet@1.0.3/dist/leaflet.css" integrity="sha512-07I2e+7D8p6he1SIM+1twR5TIrhUQn9+I6yjqD53JQjFiMf8EtC93ty0/5vJTZGF8aAocvHYNEDJajGdNx1IsQ==" crossorigin=""/>
    
    <style>
      #location-map{
        background: #fff;
        border: none;
        height: 540px;
        width: 100%;

        box-sizing: border-box;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
      }
      
    </style>
	
	
	<title>Hello, world!</title>
</head>

<body>

	<div class="container-fluid">
	
		<header class="bd-header bg-dark py-3 d-flex align-items-stretch border-bottom border-dark">
		  <div class="container d-flex align-items-center">
		    <h1 class="d-flex align-items-center fs-4 text-white mb-0">
		      IFDelivery
		    </h1>
		  </div>
		</header>

	</div>

	<div class="container mt-5">
	
		<div class="row">
		
			<div class="col-md-12">
			
			    <h1>Pedido #1</h1>
			    
			    <ul>
			    	<li>Produto 1</li>
			    	<li>Produto 2</li>
			    	<li>Produto 3</li>
			    </ul>
			    
			    <div id="location-map"></div>
			
			    <div class="mb-5 mt-5">
			      <a href="#" class="btn btn-primary btn-lg px-4">entregue</a>
			      <a href="#" class="btn btn-primary btn-lg px-4">pendente</a>
			    </div>	
				
			</div>
		
		</div>
	
	</div>
	
    
    <script src="https://unpkg.com/leaflet@1.0.3/dist/leaflet.js" integrity="sha512-A7vV8IFfih/D732iSSKi20u/ooOfj/AGehOKq0f4vLT1Zr2Y+RX7C+w8A1gaSasGtRUZpF/NZgzSAu4/Gc41Lg==" crossorigin=""></script>

    <script type="text/javascript">
      var map = L.map('location-map').setView([	-25.50473561857043, -54.5766547852112], 17);
      mapLink = '<a href="https://openstreetmap.org">OpenStreetMap</a>';
      L.tileLayer(
        'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
          attribution: 'Map data &copy; ' + mapLink,
          maxZoom: 20,
        }).addTo(map);
        var marker = L.marker([-1.4572002, -48.4653295]).addTo(map);
    </script>

	<!-- Bootstrap Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>

</body>
</html>