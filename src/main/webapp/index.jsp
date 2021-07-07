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
		
			<div class="col-md-6">
			
				<h1>Faça seu pedido que entregamos pra você</h1>
				<p class="mt-2">Escolha os produtos e receba em poucos minutos em sus porta</p>
				<a type="button" class="btn btn-primary" href="<%=request.getContextPath()%>/orders/make" style="font-family: 'Roboto'">fazer pedido</a>	
					
			</div>
			
			<div class="col-md-6">
				<!-- A pasta raiz é a pasta webapp -->
				<img src="assets/imgs/home.png" alt="" style="max-width:100%" />
			</div>
		
		</div>
	
	</div>

	<!-- Bootstrap Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>

</body>
</html>