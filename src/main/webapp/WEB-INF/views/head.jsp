<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>

#v1
{
	float:right;
	margin-top:20px;
}
#v2
{
	float:left;
}
#v3
{
	text-align:center;
	margin-top:20px;
}
.nav_bar
{
background:black;
border:1px solid #000000;
width:1500px;
font-weight:bold;
padding: 10px 50px 10px 20px;
text-align:center;
margin-left:170px;
margin-top:100px;
margin-right:10px;

height:50px;

}
.nav_bar a
{
color:white;
text-decoration:none;
margin-left:20px;
margin-right:20px;
}
.nav_bar a:hover
{
 color:white;
 text-decoration: underline;
}
#carousel1
{
	width:960px;
	margin-left:170px;
}


#v4
{

	width:960px;
	height:200px;
	color:black;
	text-align:center;
	
}
#cric
{
	width:100%;
	height:400px;
	display:block;

}
#cric h2
{
	text-align:center;
	background-color:#D3BFBF;
	width:100%;
	height:500px;
}
#border
{
	text-align:center;
	border-style: solid;
	margin-left:20px;
	margin-top:10px;
	margin-bottom:10px;
	margin-right:20px;
	border-color:#000000;
	
}
.img-responsive
 {
	border-radius:50%;
}
.f7
{
	width:100%;
	background-color:#2E2C2C;
	height:700px;
	color:#6751A7;
	margin-top:50px;
	margin-left:50px;
	text-align:center;
	padding-top:50px;
}
.nav_bar
{
background:black;
border:1px solid #000000;
width:960px;
font-weight:bold;
padding: 10px 50px 10px 20px;
text-align:center;
margin-left:170px;
margin-top:100px;
margin-right:10px;

height:50px;

}
.nav_bar a
{
color:white;
text-decoration:none;
margin-left:20px;
margin-right:20px;
}
.nav_bar a:hover
{
 color:white;
 text-decoration: underline;
}
#login
{
	background-color:#9E8383;
	width:700px;
	height:500px;
	margin:auto;
	
	text-align:center;
	
	
	
	
}
#login h1
{
	text-align:center;
	padding-top:40px;
	
}
body
{

	background-image:url(220483.jpg);
	
}
#l7
{
	background-color:#F4171A;

}
/* Website template by freewebsitetemplates.com */
@media only screen and (min-width : 320px) and (max-width : 568px) {
	html {
		-webkit-text-size-adjust: none;
	}
	img {
		max-width: 100%;
	}
	body #page {
		margin: 0;
		overflow: hidden;
		padding: 0;
		width: auto;
	}
	#header {
		width: 100%;
	}
	#header div {
		max-width: none;
		overflow: hidden;
		padding: 90px 0 13%;
		width: 100%;
	}
	#header div a.logo {
		display: block;
		float: none;
		height: auto;
		margin: 0 auto;
		padding: 0;
	}
	#header div a.logo img {
		display: block;
		margin: 0 auto;
		padding: 0;
		width: 50%;
	}
	#header span#mobile-navigation {
		background: transparent url(../images/mobile/mobile-menu.png) no-repeat;
		display: block;
		height: 50px;
		margin: 0;
		padding: 0 0 0 0;
		position: absolute;
		right: 6%;
		top: 20px;
		width: 50px;
		z-index: 999;
	}
	#header div > ul#navigation {
		background-image: none;
		background: rgba(121, 101, 102, 0.91);
		border: 1px solid #f8f8f8;
		border-radius: 0;
		display: none;
		height: auto;
		padding: 0;
		position: absolute;
		right: 6%;
		top: 70px;
		width: 88%;
		z-index: 1000;
	}
	#header div > ul#navigation > li {
		border-left: 0;
		border-top: 1px solid #f8f8f8;
		margin: 0;
		padding: 0;
		position: relative;
		text-align: left;
		width: 100%;
	}
	#header div > ul#navigation > li:first-child {
		border-top: 0;
	}
	#header div > ul#navigation > li:hover {
		background-color: transparent;
	}
	#header div ul#navigation li a {
		color: #f8f8f8;
		display: block;
		font-family: Arial;
		font-size: 1.125em;
		font-weight: normal;
		height: 3em;
		line-height: 3.125em;
		padding: 0 10px;
		text-align: left;
		text-shadow: none;
		width: auto;
	}
	#header .mobile-submenu {
		background: rgba(121, 101, 102, 0.91) url(../images/mobile/mobile-expand.png) no-repeat center;
		border-left: 1px solid #f8f8f8;
		display: inline-block;
		height: 3.4em;
		position: absolute;
		right: 0;
		top: 0;
		width: 50px;
		z-index: 0;
	}
	#header div ul#navigation li ul {
		background: none;
		border-top: 1px solid #f8f8f8;
		padding: 0;
		position: static;
		right: 0;
		text-align: left;
		width: 100%;
		z-index: 999;
	}
	#header div ul#navigation li ul, #header div ul#navigation li:hover ul {
		display: none;
	}
	#header div ul#navigation li {
		width: 100%;
		z-index: 40;
	}
	#header div ul#navigation li ul li {
		background: rgba(121, 101, 102, 0.91);
		border-top: 1px solid #f8f8f8;
		display: block;
		margin: 0;
		padding: 0;
		text-align: left;
		width: 100%;
	}
	#header div ul#navigation li ul li:first-child {
		border: none;
	}
	#header div ul#navigation li ul li a {
		background: rgba(121, 101, 103, 0.91);
		color: #f8f8f8;
		padding-left: 20px;
		text-align: left;
		width: auto;
	}
	#header div ul#navigation li:hover a, #header div ul#navigation li.selected a, #header div ul#navigation li:hover ul li a, #header div ul#navigation li:hover ul li a:hover, #header div ul#navigation li ul li.selected a {
		display: block;
	}
	#header div ul#navigation li.selected > a {
		background: rgba(204, 60, 104, 0.91);
		color: #f8f8f8;
	}
	#body {
		margin: 0;
		padding: 0;
		width: 100%;
	}
	#body.home {
		margin: 0;
		padding: 0;
		width: 100%;
	}
}


</style>
<header>
<header id="v1">
<a href="/https://www.facebook.com/?stype=lo&jlou=AfexEBeNNwzkc7Tx6rqWH6bdyyCvMhTW657AG7SUFCgRlEUSAV6FR6S1beMO91658JgTjBug0PhoWqgA0E5anuM21mOVVbYEjbM498g3c2etPw&smuh=1939&lh=Ac_GgFXjPIisaFGp">
<img src="${pageContext.request.contextPath}/resources/images/fb.png" alt="..."width="70" height="70"/>
 </a>
 <a href="https://twitter.com/?lang=en">
<img src="${pageContext.request.contextPath}/resources/images/twitter.jpg" alt="..."width="70" height="70"/> </a>
 <a href="https://www.youtube.com/?gl=IN">
<img src="${pageContext.request.contextPath}/resources/images/youtube.png" alt="..."width="70" height="70"/> </a>
 <a href="https://in.linkedin.com/">
<img src="${pageContext.request.contextPath}/resources/images/linked.png" alt="..."width="70" height="70"/>
 </a>
 </header>
 
 <header id="v2">
<img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="..."> </header>
 <header id="v3">
 <h1>Cric Bazaar</h1>
 <p>Live The Game</p>
 </header>
</header>
<div class="nav_bar">
 <a href="first">Home</a>&nbsp;&nbsp;|
 <a href="register">RegisterHere</a>&nbsp;&nbsp;|
 <a href="login">Login</a>&nbsp;&nbsp;|
 <a href="#">Product</a>&nbsp;&nbsp;|
 <a href="aboutus">About us</a>&nbsp;&nbsp;|
 <a href="contactus">Contact us</a>&nbsp;&nbsp;

 </div>
