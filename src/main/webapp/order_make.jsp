<%@page import="models.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
	List<Product> products = (List<Product>) request.getAttribute("products");
%>

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
	
	<style>
	
		.product {
			width: 18rem;
			height: 395px;
		    position: relative;
		    float: left;
		    margin-right: 25px;
		    text-align: center;
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
			
				<form action="<%=request.getContextPath()%>/orders/make" method="post">
				
					<% for(Product prod : products){ %>
						
							<div class="card mb-3 product">
							
							  <img src="<%= request.getContextPath() %>/assets/imgs/products/<%= prod.getImageUri() %>" class="card-img-top" style="max-width: 80%; text-align: center; margin: auto;">
							
							  <div class="card-body">
							    
							    <h5 class="card-title"><%= prod.getName() %></h5>
							   				    
							    <p class="card-text"><%= prod.getDescription() %></p>
							    <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
							    
							    <input type="checkbox" name="product_id_input" value="<%= prod.getId() %>" />
							    
							  </div>
							  
							</div>
					<% } %>	
					
					<div style="clear: both;"></div>
					
					<input type="submit" class="btn btn-primary" value="realizar pedido">
				
				</form>
				
			</div>
		
		</div>
	
	</div>

	<!-- Bootstrap Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	
	<script>
	
		
		if (navigator.geolocation) {
	    	navigator.geolocation.getCurrentPosition(function (location) {
	    		let lat = location.coords.latitude;
	    		let lon = location.coords.longitude;
	    		
	    		console.log(lat, lon);
	        });	
	   	}
		

		  
		  
  </script>

</body>
</html>