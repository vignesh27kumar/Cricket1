<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
      	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="/head-meta"/>
<style type="text/css">
body {
	 background: #1D486B; /* fallback for old browsers */
  background: -webkit-linear-gradient(#1D486B);
  background: -moz-linear-gradient(#1D486B);
  background: -o-linear-gradient(#1D486B);
  background: linear-gradient(#1D486B);
   
}

h1
{
	text-align:center;
}
.form{
  width: 360px;
  padding: auto;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #5C6C92;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #000000;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: blue;
}
.form .register-form {
  display: none;
}
</style>


</head>
<body>
<c:import url="/head"/>
<h1>welcome please login</h1><br><br>
<div class="nav_bar">
 <a href="crickart.html">Home</a>&nbsp;&nbsp;|
 <a href="signup.html">RegisterHere</a>&nbsp;&nbsp;|
 <a href="login.html">Login</a>&nbsp;&nbsp;|
 <a href="#">Current Offers</a>&nbsp;&nbsp;|
 <a href="aboutus.html">About us</a>&nbsp;&nbsp;|
 <a href="contactus.html">Contact us</a>&nbsp;&nbsp;
 </div><br><br>
<div class="login-page">
  <div class="form">
<form class="login-form">
       <input type="text" class="form-control" name="username"
                required
                data-fv-notempty-message="The username is required" placeholder="username" pattern="[A-Za-z-0-9]+\s[A-Za-z-'0-9]"+/>
              
        <input type="text" class="form-control" name="password"
                required
                data-fv-notempty-message="password is required" placeholder="password"/>
      <button onclick="">login</button>
      <p class="message">Not registered? <a href="Register.jsp">Create an account</a></p>
    </form>
    <script>
$(document).ready(function() {
    $('#signInForm').formValidation();
});
</script>
    </div>
    </div>	
</body>
</html>