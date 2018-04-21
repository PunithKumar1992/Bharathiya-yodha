<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Blogger a Blogging Category Flat Bootstrap Responsive Website Template | Registration :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Blogger Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android  Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:700,700italic,800,300,300italic,400italic,400,600,600italic' rel='stylesheet' type='text/css'>
<!--Custom-Theme-files-->
	<link href="css/style.css" rel='stylesheet' type='text/css' />	
	<script src="js/jquery.min.js"> </script>
<!--/script-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>

</head>
<body>
	<!-- header-section-starts -->
      <div class="h-top" id="home">
		   <div class="top-header">
				  <ul class="cl-effect-16 top-nag">
						<li><a class="active" href="registration.html" data-hover="Registration">Registration</a></li> 
						<li><a href="about.html" data-hover="About">About</a></li>
						<li><a href="services.html" data-hover="SERVICES">SERVICES</a></li>
						<li><a href="userlogin.html" data-hover="Login">Login</a></li>
						<li><a href="contact.html" data-hover="CONTACT">Contact</a></li>
					</ul>
					<div class="search-box">
					    <div class="b-search">
								<form>
										<input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
										<input type="submit" value="">
								</form>
							</div>
						</div>

					<div class="clearfix"></div>
				</div>
       </div>
	<div class="full">
			<div class="col-md-3 top-nav register">
				     <div class="logo">
						<a href="index.html"><h1>Blogger</h1></a>
					</div>
					<div class="top-menu">
					 <span class="menu"> </span>

					<ul class="cl-effect-16">
						<li><a href="index.html" data-hover="HOME">Home</a></li> 
						<li><a href="about.html" data-hover="About">About</a></li>
						<li><a href="services.html" data-hover="Services">Services</a></li>
						<li><a href="contact.html" data-hover="CONTACT">Contact</a></li>
					</ul>
					<!-- script-for-nav -->
					<script>
						$( "span.menu" ).click(function() {
						  $( ".top-menu ul" ).slideToggle(300, function() {
							// Animation complete.
						  });
						});
					</script>
				<!-- script-for-nav --> 	
					<ul class="side-icons">
							<li><a class="fb" href="#"></a></li>
							<li><a class="twitt" href="#"></a></li>
							<li><a class="goog" href="#"></a></li>
							<li><a class="drib" href="#"></a></li>
					   </ul>
			    </div>
			</div>
	<div class="col-md-9 main">
	<!-- register -->
			<div class="sign-up-form">
				 <h3 class="tittle">Registration <i class="glyphicon glyphicon-file"></i></h3>
					<p>Having hands on experience in creating innovative designs,I do offer design 
						solutions which harness</p>
						 <form:form modelAttribute="userreg"  method="post" action="saveuser.html" onsubmit="return FormValidation();" onchange="return FormValidation();">
    
				<div class="sign-up">
					 <h3 class="tittle reg">Personal Information <i class="glyphicon glyphicon-user"></i></h3>
					<div class="sign-u">
						<div class="sign-up1">
							<h4 class="a">First Name* :</h4>
						</div>
						
						<div class="sign-up2">
							
						
								<form:input path="user_firstname" class="text"  id="firstname" placeholder="First name" onblur="FormValidation();" onchange="FormValidation();" />
								<div id="fnamediv"></div>

						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="sign-u">
						<div class="sign-up1">
							<h4 class="b">Last Name* :</h4>
						</div>
						<div class="sign-up2">
									<form:input path="user_lastname" class="text"  id="lastname"  placeholder="Last name" onblur="FormValidation();" />
									<div id="lnamediv"></div>

						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="sign-u">
						<div class="sign-up1">
							<h4 class="c">Email Address* :</h4>
						</div>
						<div class="sign-up2">
								 <form:input path="user_email" class="text"  id="email" placeholder="Email" onblur="FormValidation();" />
								 <div id="emaildiv"></div>

							
						</div>
						<div class="clearfix"> </div>
					</div>
					 <h3 class="tittle reg">Login Information <i class="glyphicon glyphicon-off"></i></h3>
					 <div class="sign-u">
						<div class="sign-up1">
							<h4 class="d">User Name* :</h4>
						</div>
						<div class="sign-up2">
							
								
								 <form:input path="user_loginname" class="text"  id="logname" placeholder="User name"/>
								 <input type="text" style="color:red;border-width:0px;border:none;" id="logspan" value="${namealready}"/>
								 
								 <div id="logdiv">
								 </div>

							
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="sign-u">
						<div class="sign-up1">
							<h4 class="d">Password* :</h4>
						</div>
						<div class="sign-up2">
							
								
								 <form:password path="user_password" class="Password"  id="pass" placeholder="Password"/>
								 <div id="passdiv">
								 </div>

							
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="sign-u">
						<div class="sign-up1">
							<h4>Confirm Password* :</h4>
						</div>
						<div class="sign-up2">
							
									<form:password path=""  class="Password" id="cpass"  placeholder="Confirm Password" />											 <div id="cpassdiv"></div>
	

							
						</div>
						<div class="clearfix"> </div>
					</div>
					
						<input type="submit" value="Submit">
					</form:form>
				</div>
			</div>
<!-- //register -->
<!-- //login-page -->
			<div class="clearfix"> </div>
	<!--/footer-->
	     <div class="footer">
				 <div class="footer-top">
				    <div class="col-md-4 footer-grid">
					     <h4>Lorem sadipscing </h4>
				          <ul class="bottom">
							 <li>Consetetur sadipscing elitr</li>
							 <li>Magna aliquyam eratsed diam</li>
						 </ul>
				    </div>
					  <div class="col-md-4 footer-grid">
					     <h4>Message Us Now</h4>
				            <ul class="bottom">
						     <li><i class="glyphicon glyphicon-home"></i>Available 24/7 </li>
							 <li><i class="glyphicon glyphicon-envelope"></i><a href="mailto:info@example.com">mail@example.com</a></li>
						   </ul>
				    </div>
					<div class="col-md-4 footer-grid">
					     <h4>Address Location</h4>
				           <ul class="bottom">
						     <li><i class="glyphicon glyphicon-map-marker"></i>2901 Glassgow Road, WA 98122-1090 </li>
							 <li><i class="glyphicon glyphicon-earphone"></i>phone: (888) 123-456-7899 </li>
						   </ul>
				    </div>
					<div class="clearfix"> </div>
				 </div>
	        </div>
		<div class="copy">
		    <p>&copy; 2016 Blogger. All Rights Reserved | Design by <a href="http://w3layouts.com/">W3layouts</a> </p>
		</div>
	 <div class="clearfix"> </div>
	</div>
	<div class="clearfix"> </div>
</div>	
		<!--//footer-->
			<!--start-smooth-scrolling-->
						<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>


	<script type="text/javascript">
function FormValidation()
{
  var fn=document.getElementById('firstname').value;
    if(fn == ""){
        //alert('Please Enter First Name');
        document.getElementById('firstname').style.borderColor = "red";
        document.getElementById('fnamediv').innerHTML="<p style='color:#f70000;'>*First name is empty*</p>"
        return false;
    }else{
        document.getElementById('firstname').style.borderColor = "green";
        document.getElementById('fnamediv').innerHTML=""
    }
    if (/^[0-9]+$/.test(document.getElementById("firstname").value)) {
       //alert("First Name Contains Numbers!");
        document.getElementById('firstname').style.borderColor = "red";
        document.getElementById('fnamediv').innerHTML="<p style='color:#f70000;'>*First name is must start with alphabetic characters*</p>"
        return false;
    }else{
        document.getElementById('firstname').style.borderColor = "green";
        document.getElementById('fnamediv').innerHTML=""
    }
    if(fn.length <=2){
        //alert('Your Name is To Short');
        document.getElementById('firstname').style.borderColor = "red";
        document.getElementById('fnamediv').innerHTML="<p style='color:#f70000;'>*First name is too short*</p>"
        return false;
    }else{
        document.getElementById('firstname').style.borderColor = "green";
        document.getElementById('fnamediv').innerHTML=""
    }
    
    
    
    var ln=document.getElementById('lastname').value;
    if(ln == ""){
        //alert('Please Enter First Name');
        document.getElementById('lastname').style.borderColor = "red";
        document.getElementById('lnamediv').innerHTML="<p style='color:#f70000;'>*Last name is empty*</p>"
        return false;
    }else{
        document.getElementById('lastname').style.borderColor = "green";
        document.getElementById('lnamediv').innerHTML=""
    }
    if (/^[0-9]+$/.test(document.getElementById("lastname").value)) {
       //alert("First Name Contains Numbers!");
        document.getElementById('lastname').style.borderColor = "red";
        document.getElementById('lnamediv').innerHTML="<p style='color:#f70000;'>*Last name is must start with alphabetic characters*</p>"
        return false;
    }else{
        document.getElementById('lastname').style.borderColor = "green";
        document.getElementById('lnamediv').innerHTML=""
    }
    if(ln.length <=2){
        //alert('Your Name is To Short');
        document.getElementById('lastname').style.borderColor = "red";
        document.getElementById('lnamediv').innerHTML="<p style='color:#f70000;'>*Last name is too short*</p>"
        return false;
    }else{
        document.getElementById('lastname').style.borderColor = "green";
        document.getElementById('lnamediv').innerHTML=""
        
    }
    
    
    var em=document.getElementById('email').value;
    if(em=="")
 	   {
 	   document.getElementById('email').style.borderColor = "red";
 	  document.getElementById('emaildiv').innerHTML="<p style='color:#f70000;'>*Email is empty*</p>"
 	   
        return false;
    }else{
        document.getElementById('email').style.borderColor = "green";
        document.getElementById('emaildiv').innerHTML=""
       	    
    }
    if(/^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/.test(document.getElementById("email").value))
    	{
    	document.getElementById('email').style.borderColor = "green";
       
    	
    	}
    else
	   {
	   document.getElementById('email').style.borderColor = "red";
	   document.getElementById('emaildiv').innerHTML="<p style='color:#f70000;'>*Enter the valid Email *</p>"
		 	  
	   return false;
	   }
   
    var logname=document.getElementById('logname').value;
    if(logname == ""){
        //alert('Please Enter First Name');
        document.getElementById('logname').style.borderColor = "red";
        document.getElementById('logdiv').innerHTML="<p style='color:#f70000;'>*Login name is empty*</p>"
        return false;
    }else{
        document.getElementById('logname').style.borderColor = "green";
        document.getElementById('logdiv').innerHTML=""
    }
   
    if(logname.length <=2){
        //alert('Your Name is To Short');
        document.getElementById('logname').style.borderColor = "red";
        document.getElementById('logdiv').innerHTML="<p style='color:#f70000;'>*Login name is too short*</p>"
        return false;
    }else{
        document.getElementById('logname').style.borderColor = "green";
        document.getElementById('logdiv').innerHTML=""
    }
   
   var pass=document.getElementById('pass').value;
   if(pass=="")
	   {
	   document.getElementById('pass').style.borderColor = "red";
	   document.getElementById('passdiv').innerHTML="<p>Password is empty</p>"
       return false;
   }else{
       document.getElementById('pass').style.borderColor = "green";
       document.getElementById('passdiv').innerHTML=""
   }
   if(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}/.test(document.getElementById("pass").value))
	   {
	   document.getElementById('passdiv').innerHTML="<p style='color:#3aa003;'>Valid Password</p>";
	   document.getElementById('pass').style.borderColor = "green";
	   }
   else
   {
	   document.getElementById('passdiv').innerHTML="<p style='color:#f70000;'>*password must contain Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character *</p>";
   document.getElementById('pass').style.borderColor = "red";
   return false;
   }
   
   var cpass= document.getElementById('cpass').value;
   var pass = document.getElementById('pass').value;
   if(cpass == pass)
	   {
	   document.getElementById('cpassdiv').innerHTML="<p style='color:#3aa003;'>Both Password match</p>"
	   document.getElementById('cpass').style.borderColor = "green";
	   }
   else
	   {
	   document.getElementById('cpass').style.borderColor = "red";
	   document.getElementById('cpassdiv').innerHTML="<p style='color:#f70000;'>Password missmatch</p>"
	   return false;
	   }
   
   
   
   
   
   
	   
}


  
		
	</script>


	<script type="text/javascript">
		$("#logname").on('click ', function() {

			$("#logspan").hide();

		})
	</script>


<script type="text/javascript">
$(document).ready(function(){

	var str= $("#logspan").val();
	if(str=="")
		{
		$("#logspan").hide();
		}
	
});


</script>


</body>
</html>