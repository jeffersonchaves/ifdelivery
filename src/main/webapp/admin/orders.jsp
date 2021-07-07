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
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" />
	
	<title>Hello, world!</title>
	
	<style>
	
		.product {
			width: 18rem;
		    position: relative;
		    float: left;
		    margin-right: 25px;
		    text-align: center;
		}
		
		.table {
			font-family: 'Roboto Slab';
		}
	
	</style>
	
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
			
				<table class="table">
				  <thead>
				    <tr>
				      <th scope="col">#</th>
				      <th scope="col">latitude</th>
				      <th scope="col">longitude</th>
				      <th scope="col">moment</th>
				      <th scope="col">status</th>
				      <th scope="col"></th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row">1</th>
				      <td>213123</td>
				      <td>12323</td>
				      <td>2021-06-02 03:43:59</td>
				      <td>PENDENTE</td>
				      <td><a href="<%=request.getContextPath()%>/admin/orders/item">ver</a></td>
				    </tr>
				    
				    <tr>
				      <th scope="row">2</th>
				      <td>213123</td>
				      <td>12323</td>
				      <td>2021-06-02 03:43:59</td>
				      <td>PENDENTE</td>
				      <td>ver</td>
				      
				    </tr>

				  </tbody>
				</table>
	
				
			</div>
		
		</div>
	
	</div>

	<!-- Bootstrap Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>

</body>
</html>