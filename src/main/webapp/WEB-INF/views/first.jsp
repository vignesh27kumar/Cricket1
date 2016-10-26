<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 		<c:import url="/head-meta"/>
 		<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="HandheldFriendly" content="true">	
 	
 </head>
<body>

 		<c:import url="/head"/>	
 		
 		
 
 <div id="carousel1" class="carousel slide" data-ride="carousel">
   <ol class="carousel-indicators">
     <li data-target="#carousel1" data-slide-to="0" class="active"></li>
     <li data-target="#carousel1" data-slide-to="1"></li>
     <li data-target="#carousel1" data-slide-to="2"></li>
   </ol>
   <div class="carousel-inner" role="listbox">
     <div class="item active"><img src="${pageContext.request.contextPath}/resources/images/ca1.png" alt="First slide image" class="center-block">
       <div class="carousel-caption">
         <h3>First slide Heading</h3>
         <p>First slide Caption</p>
       </div>
     </div>
     <div class="item"><img src="${pageContext.request.contextPath}/resources/images/ca2.png" alt="Second slide image" class="center-block">
       <div class="carousel-caption">
         <h3>Second slide Heading</h3>
         <p>Second slide Caption</p>
       </div>
     </div>
     <div class="item"><img src="${pageContext.request.contextPath}/resources/images/ca3.png" alt="Third slide image" class="center-block">
       <div class="carousel-caption">
         <h3>Third slide Heading</h3>
         <p>Third slide Caption</p>
       </div>
     </div>
   </div>
   <a class="left carousel-control" href="#carousel1" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">Previous</span></a><a class="right carousel-control" href="#carousel1" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span><span class="sr-only">Next</span></a></div>

 <div id="border">
 
 <h2> featured products</h2>
 
 
 </div>
 
<div class="row">


 <div class="col-md-4">
 <p> <i> <strong> <a href="bat.jpg" align= right>bats</a>  </strong>  </i> </p>
 <img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/bat.jpg" alt="strwpie" width="170" height="170" hspace="30" />
 <p>A cricket bat is a specialised piece of equipment used by batsmen in the sport of cricket to hit the ball, typically consisting of a cane handle attached to a flat-fronted willow-wood blade.</p>
 
 </div>


   <div class="col-md-4">
   <p> <i> <strong> <a href="html_images.asp" align= center>balls </a> </strong>  </i> </p>
<img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/ball.jpg" alt="cupcc" width="170" height="170"  hspace="20"/>
<p>A cricket ball is a hard, solid ball used to play cricket. A cricket ball consists of cork covered by leather, and manufacture is regulated by cricket law at first class level.The manipulation of a cricket ball, through employment of its various physical properties, is a staple component of bowling and dismissing batsmenMovement in the air, and off the ground, is influenced by the condition of the ball, the efforts of the bowler .</p>
</div>
<div class="col-md-4">
 <p> <i> <strong> <a href="bat.jpg" align= right>stumps</a>  </strong>  </i> </p>
 <img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/stumps.png" alt="strwpie" width="170" height="170" hspace="30"/>
 <p>In cricket, the stumps are the three vertical posts that support the "bails" and form the wicket. Stumping or being stumped is a method of dismissing a batsmanThe overall width of each wicket is 9 inches (22.9 cm). Each stump is 28 inches (71.1 cm) tall with maximum and minimum diameters of 11⁄2 inches (3.81 cm) and 13⁄8 inches (3.49 cm). They have a spike at one end for inserting into the ground, and the other end has a U-shaped 'through groove' to provide a resting place for the bails..</p>
 
 </div>
 
</div>

<footer class="f7">
  <p>Posted by: S.M.Vignesh Kumar</p>
  <p>Contact information: <a href="${pageContext.request.contextPath}/mailto:vigneshkumar@gmail.com">vigneshkumar@gmail.com</a></p>
</footer>

</body>
</html>