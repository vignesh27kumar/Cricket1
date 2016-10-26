<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<c:import url="/head-meta" />

</head>

<body>
	<c:import url="/head" />
	<div class="nav_bar">
 <a href="first">Home</a>&nbsp;&nbsp;|
 <a href="register">RegisterHere</a>&nbsp;&nbsp;|
 <a href="login">Login</a>&nbsp;&nbsp;|
 <a href="#">Product</a>&nbsp;&nbsp;|
 <a href="aboutus">About us</a>&nbsp;&nbsp;|
 <a href="contactus">Contact us</a>&nbsp;&nbsp;

 </div>
	<br>


	<script type="text/css">
</script>
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-centered">
				<div class="table-responsive">


					<table style="width: 80%;" class="table center">
					
					<tr>
									<td colspan="2"><img src="${pageContext.request.contextPath}/resources/images/${x.ProductImage}"></img></td>
									
								</tr>
								
						<tr>
							<td><label>Product Name:</label></td>
							<td>${ProductName}</td>

						</tr>
						<tr>
							<td><label>Product Category:</label></td>
							<td>${ProductCateogry}</td>

						</tr>

						<tr>
							<td>Product Price:</td>
							<td>${ProductPrice}</td>
						</tr>
						
						<tr>
							<td>Product Quantity:</td>
							<td>${ProductQuantity}</td>
						</tr>
						
						<tr>
							<td>Product Description:</td>
							<td>${ProductDescription}</td>
						</tr>
						<tr>
							<td>Product Image:</td>
							<td>${ProductImage}</td>
						</tr>

				</table>

				</div>
			</div>
		</div>
	</div>
