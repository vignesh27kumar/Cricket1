
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    
<html>
<head>

<c:import url="/head-meta"/>

</head>

<body>
<c:import url="/head"/>
<br>
<div class="nav_bar">
 <a href="first">Home</a>&nbsp;&nbsp;|
 <a href="register">RegisterHere</a>&nbsp;&nbsp;|
 <a href="login">Login</a>&nbsp;&nbsp;|
 <a href="#">Product</a>&nbsp;&nbsp;|
 <a href="aboutus">About us</a>&nbsp;&nbsp;|
 <a href="contactus">Contact us</a>&nbsp;&nbsp;

 </div>

<center>
	<h3>Add Products Here!!!</h3>
</center>

<div class="form">
<script type="text/css">
					</script>
					
					<div class="container">
					<div class="row">
					    <div class="col-lg-12 col-centered">
					    	<div class="table-responsive">
					    	
					    	<c:if test="${success != null}">
			                <div class="alert alert-success">
			                	<p>${success}</p>
			                </div>
			                </c:if>
			                
			                <c:if test="${error != null}">
			                <div class="alert alert-danger">
			                	<p>${error}</p>
			                </div>
			                </c:if>
					    
	<form method="post" action="ADDProduct" modelAttribute="Product" >

		<!--  -->
		<table style="width: 80%;" class="table center">
			
			<tr>
			
				<td>ProductName:<input path="ProductName" name="ProductName" type="ProductName"  class="form-control" id="ProductPrice" autofocus="true"/></td>
				
			</tr>
			
							  	
			<tr>
				
				<td>ProductCateogry <input path="ProductCategory" name="ProductCateogry" type="ProductCategory"  class="form-control" id="ProductCategory" autofocus="true" /></td>
				
			</tr>
				
				<tr>
				
				<td>ProductDescription<input path="ProductDescription" name="ProductDescription" type="ProductDescription"  class="form-control" id="ProductDescription" autofocus="true" /></td>
				
			</tr>
							  	
			<tr>
				
				<td>ProductImage<input path="ProductImage" name="ProductImage" type="file" class="form-control" id="ProductImage" autofocus="true"/></td>
				
			</tr>
				
			<tr>
				
				<td>ProductPrice: <input path="ProductPrice" name="ProductPrice" type="ProductPrice"  class="form-control" id="ProductPrice" autofocus="true" /> </td>
				<td>  
				
			</tr>
			
			<tr>
				
				<td>ProductQuantity: <input path="ProductQuantity" name="ProductQuantity" type="ProductQuantity"  class="form-control" id="ProductQuantity" autofocus="true" /> </td>
				<td>  <button type="submit">Submit</button></td>
				
			</tr>
		  	
				  	
		  </table>
		<!--  -->
	
	</form>		


