<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
      	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="/head-meta"/>
<style type="text/css">


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

<div class="login-page">
  <div class="form">
<form action="log" method="post">
       
user name<input type="text" name="username" required>
Password <input type="password" name="password" required>

<a href="adminhomepage"></a><button type="submit">login as Admin</button></a>
      
    </form>
    <form action="login" method="post">
    <button type="submit">submit</button>
    
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