<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page isELIgnored="false"%>
      
      	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="/head-meta"/>

<style>


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


<h1>Register with us</h1><br><br><br>
<div class="login-page">
  <div class="form">
  <div class="reg">
    
      
     
      
					 <form  method="post" action="ADDUser" modelAttribute ="User">
						
						
						
			
						FIRST NAME<input title="Enter First Name" path="fIRSTNAME" id="fIRSTNAME"  type="text" NAME="FIRSTNAME" required="">
					
					
				
					LAST NAME<input title="Enter Last Name" path="lASTNAME" id="lASTNAME"  type="text" NAME="LASTNAME" required>
				
				
					 
					
					EMAIL<input  title="Enter Email Address"  path="eMAILID" id="eMAILID" type="text"  NAME="EMAILID" pattern="[^ @]*@[^ @]*"required>
					
					
					
						
					PASSWORD<input title="Enter New Password" path="pASSWORD" id="pASSWORD" type="password"  NAME="PASSWORD" required>
					
					
					
					CONFIRM PASSWORD<input title="Enter Confirm Password" type="password"  path="rEENTERPASSWORD" id="rEENTERPASSWORD" NAME="REENTERPASSWORD" required>
					
					
					
						
					MOBILE<input title="Enter Mobile Number" type="text" path="mOBILENO" id="mOBILENO" NAME="MOBILENO" maxlength="10" required>
					
					<div class="form-group">
    <span class="text-muted"><em> Indicates required field</em></span>
  </div>					
					<input type="submit" value="REGISTERNOW">
					<input type="submit" value="RESET">
    </form>
  </div>
  </div>
  </div>

</body>
</html>