<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Blog</title>
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


<style>
.scroll
{
overflow-Y:scroll;
 height:500px;
}

/* width */
.scroll::-webkit-scrollbar {
    width: 8px;
}

/* Track */
.scroll::-webkit-scrollbar-track {
    box-shadow: inset 0 0 4px grey; 
    border-radius: 3px;
}
 
/* Handle */
.scroll::-webkit-scrollbar-thumb {
    background: #ffd28e; 
    border-radius: 3px;
}

/* Handle on hover */
.scroll::-webkit-scrollbar-thumb:hover {
    background: #ffd28e; 
}
</style>

</head>
<body>
	<!-- header-section-starts -->
      <div class="h-top" id="home">
		   <div class="top-header">
				  <ul class="cl-effect-16 top-nag">
						<li><a href="registration.html" data-hover="Registration">Registration</a></li> 
						<li><a href="about.html" data-hover="About">About</a></li>
						<li><a href="services.html" data-hover="SERVICES">SERVICES</a></li>
						<li><a href="login.html" data-hover="Login">Login</a></li>
						<li><a href="contact.html" data-hover="CONTACT">Contact</a></li>
					</ul>
					<div class="search-box">
					    <div class="b-search">
								<form >
										<input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
										<input type="submit" value="">
								</form>
							</div>
						</div>

					<div class="clearfix"></div>
				</div>
       </div>
	<div class="full">
			<div class="col-md-3 top-nav sing-page">
				    <div class="logo">
						<a href="index.html"><img src="images/logoimage/logo.png"></a>
					</div>
					<div class="top-menu">
					 <span class="menu"> </span>

					<ul class="cl-effect-16">
						<li><a class="active" href="index.html" data-hover="HOME">Home</a></li> 
					<!--	<li><a href="about.html" data-hover="About">About</a></li>
						<li><a href="grid.html" data-hover="Grids">Grids</a></li>
						<li><a href="services.html" data-hover="Services">Services</a></li>
						<li><a href="gallery.html" data-hover="Gallery">Gallery</a></li>
						<li><a href="contact.html" data-hover="CONTACT">Contact</a></li>-->
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
		<!--banner-section-->
		<div class="banner-section">
		   <h3 class="tittle">${currentarticle.article_caption}</h3>
			<div class="single">
			   <img src="images/articleimages/${currentarticle.article_image}" class="img-responsive" alt="" />
			    <div class="b-bottom"> 
			      <h5 class="top"><a href="#"></a></h5>
				  
				  <p class="sub">${currentarticle.article_detail}</p>
               
				</div>
			 </div>
			  <div class="single-bottom">
								<div class="single-middle">
								<ul class="social-share">
									<li><span>SHARE</span></li>
									<li><a href="#"><i> </i></a></li>						
									<li><a href="#"><i class="tin"> </i></a></li>
									<li><a href="#"><i class="message"> </i></a></li>				
								</ul>
								<a href="#"><i class="arrow"> </i></a>
								<div class="clearfix"> </div>
						   </div>

					    </div>
						<!--<div class="response">
					<h4>Responses</h4>
					<div class="media response-info">
						<div class="media-left response-text-left">
							<a href="#">
								<img class="media-object" src="images/sin1.jpg" alt=""/>
							</a>
							<h5><a href="#">Username</a></h5>
						</div>
						<div class="media-body response-text-right">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
								sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
							<ul>
								<li>Sep 21, 2015</li>
								<li><a href="single.html">Reply</a></li>
							</ul>
							<div class="media response-info">
								<div class="media-left response-text-left">
									<a href="#">
										<img class="media-object" src="images/sin2.jpg" alt=""/>
									</a>
									<h5><a href="#">Username</a></h5>
								</div>
								<div class="media-body response-text-right">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
										sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
									<ul>
										<li>July 17, 2015</li>
										<li><a href="single.html">Reply</a></li>
									</ul>		
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="media response-info">
						<div class="media-left response-text-left">
							<a href="#">
								<img class="media-object" src="images/sin1.jpg" alt=""/>
							</a>
							<h5><a href="#">Username</a></h5>
						</div>
						<div class="media-body response-text-right">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
								sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
							<ul>
								<li>Mar 28, 2015</li>
								<li><a href="single.html">Reply</a></li>
							</ul>
							<div class="media response-info">
								<div class="media-left response-text-left">
									<a href="#">
										<img class="media-object" src="images/sin2.jpg" alt=""/>
									</a>
									<h5><a href="#">Username</a></h5>
								</div>
								<div class="media-body response-text-right">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
										sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
									<ul>
										<li>Feb 19, 2015</li>
										<li><a href="single.html">Reply</a></li>
									</ul>		
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>	-->
				
				<div class="response">
					<h4>Responses</h4>
					<div class="media response-info scroll">
					<c:forEach var="cmmtrply" items="${cmmtrply}">
						<div class="media-left response-text-left">
							<a href="#">
								<img class="media-object" src="images/person.png" alt=""/>
							</a>
							<h5><a href="#">${cmmtrply.commenter_name}</a></h5>
						</div>
						<div class="media-body response-text-right">
							<p>${cmmtrply.commenter_message}</p>
							<ul>
								<li>Sep 21, 2015</li>
								<li><a href="single.html">Reply</a></li>
							</ul>
							<div class="media response-info">
								<div class="media-left response-text-left">
									<a href="#">
										<img class="media-object" src="images/person.png" alt=""/>
									</a>
									<h5><a href="#">Username</a></h5>
								</div>
								<div class="media-body response-text-right">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
										sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
									<ul>
										<li>July 17, 2015</li>
										<li><a href="single.html">Reply</a></li>
									</ul>		
								</div>
								
								
							</div>
						</div>
						<div class="clearfix"> </div>
							</c:forEach>					
					</div>
				
				</div>
				
				
				
				
				
				
				
				
				<div class="coment-form">
					<h4>Leave your comment</h4>
					<form:form action="postComment.html" onsubmit="return FormValidation();" onchange="return FormValidation();" modelAttribute="comments">
					<form:input path="commenter_name" placeholder="Name" id="name" name="name" Value=""/>
					<form:input path="commenter_email" placeholder="Email" id="email" name="email"/>	
					<form:textarea path="commenter_message" Placeholder="Your Comment" id="comment"/>
				<input type="hidden" value="${commentarticleid}" name="commentarticleid">
						<input type="submit" value="Submit Comment" >
					</form:form>
				</div>	
				<div class="clearfix"></div>
			</div>
			<!--//banner-->
					<!--//banner-section-->
			<div class="banner-right-text">
			 <h3 class="tittle">Article  <i class="glyphicon glyphicon-facetime-video"></i></h3>
			<!--/general-news-->
			 <div class="general-news">
				<div class="general-inner">
				<c:forEach begin="0" end="0" var="usergridlist" items="${usergridlist}">
				<c:url  var="viewarticle" value="viewarticle.html">
				<c:param name="article_id" value="${usergridlist.article_id}"></c:param>
				</c:url>
					<div class="general-text">
						 <a href="${viewarticle}"><img src="images/articlegridimages/${usergridlist.article_gridimage}" class="img-responsive" alt=""></a>
						    <h5 class="top"><a href="${viewarticle}">${usergridlist.article_person}</a></h5>
							<p class="sub" style="text-align: justify;">${usergridlist.article_brief}</p>
						    <p>${usergridlist.article_date} <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>${usergridlist.article_comment}</a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>${usergridlist.article_view}</a><a class="span_link" href="${viewarticle}"><span class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
					 </div>
					 </c:forEach>
				<marquee behavior="scroll" direction="up" onmouseover="this.stop();" onmouseout="this.start();">
				
					 <div class="edit-pics">
					 <c:forEach var="usergridlist" items="${usergridlist}">
					 <c:url  var="viewarticle" value="viewarticle.html">
				<c:param name="article_id" value="${usergridlist.article_id}"></c:param>
				</c:url>
					 		      <div class="editor-pics">
										 <div class="col-md-3 item-pic">
										   <img src="images/articlegridimages/${usergridlist.article_gridimage}" class="img-responsive" alt="">

										   </div>
											<div class="col-md-9 item-details">
												<h5 class="inner two" style="text-align: justify;"><a href="${viewarticle}">${usergridlist.article_brief}</a></h5>
												 <div class="td-post-date two"><i class="glyphicon glyphicon-time"></i>${usergridlist.article_date}<a href="#"><i class="glyphicon glyphicon-comment"></i>${usergridlist.article_comment}</a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>${usergridlist.article_view}</a><a class="span_link" href="${viewarticle}"><span class="glyphicon glyphicon-circle-arrow-right"></span></a></div>
											 		
											 </div>
											<div class="clearfix"></div>
										</div>
										</c:forEach>
					
										
										
									</div>
									</marquee>
								<div class="media">	
								 <h3 class="tittle media">Media <i class="glyphicon glyphicon-floppy-disk"></i></h3>
								  <div class="general-text two">
									 <a href="single2.html"><img src="images/gen3.jpg" class="img-responsive" alt=""></a>
										<h5 class="top"><a href="single2.html">ಭಾರತಿ ಮಗದುಮ</a></h5>
										 <p class="sub">ಕಿತ್ತೂರು ಕ್ಷೇತ್ರದಲ್ಲಿ ಚನ್ನಮ್ಮನ ನಂತರ ಕಿತ್ತೂರು ಕ್ಷೇತ್ರವನ್ನು ಆಳಲು ಮಹಿಳೆಗೇ ಮಣೆ ಹಾಕಿದ ಭಾರತೀಯ ಜನತಾ ಪಕ್</p>
										<p>On Jun 27 <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0 </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a><a class="span_link" href="single.html"><span class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
								  </div>
					         </div>
					    <div class="general-text two">
						    <a href="single.html"><img src="images/gen2.jpg" class="img-responsive" alt=""></a>
						    <h5 class="top"><a href="single.html">ನರೇಂದ್ರ ದಾಮೋದರದಾಸ್ ಮೋದಿ</a></h5>
								<p class="sub">ವಿಶ್ವದ ದೊಡ್ಡಣ್ಣ ಎನಿಸಿಕೊಂಡಿರುವ ಅಮೆರಿಕ ದೇಶಕ್ಕೆ ವಿಶ್ವದ ಯಾವುದೇ ರಾಷ್ಟ್ರದ ಪ್ರಧಾನಿ ಹೋದರು ಅವರನ್ನು ಬೆನ್ನಿಗೆ ತಟ್ಟಿ ಸ್ವಾಗತ ಕೋರುವುದು, .</p>
						    <p>On Jun 27 <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0 </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a><a class="span_link" href="single.html"><span class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
					    </div>
				 </div>
			</div>	
			<!--//general-news-->
			<!--/news-->
			<!--/news-->
		 </div>
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
	var fn=document.getElementById('name').value;
	
    if(fn == "")
    {
        //alert('Please Enter First Name');
        document.getElementById('name').style.borderColor = "red";
        return false;
    }
    else
    {
        document.getElementById('name').style.borderColor = "green";
    }
    if (/^[0-9]+$/.test(document.getElementById("name").value)) 
    {
       //alert("First Name Contains Numbers!");
        document.getElementById('name').style.borderColor = "red";
        return false;
    }
    else
    {
        document.getElementById('name').style.borderColor = "green";
    }
    if(fn.length <=2)
    {
        //alert('Your Name is To Short');
        document.getElementById('name').style.borderColor = "red";
        return false;
    }
    else
    {
        document.getElementById('name').style.borderColor = "green";
    }
    

    
    var em=document.getElementById('email').value;
    if(em=="")
 	   {
 	   document.getElementById('email').style.borderColor = "red";
        return false;
    }
    else
    {
        document.getElementById('email').style.borderColor = "green";
    }
    if(/^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/.test(document.getElementById("email").value))
    	{
    	document.getElementById('email').style.borderColor = "green";
    	}
    else
	   {
	   document.getElementById('email').style.borderColor = "red";
	   return false;
	   }
    
   
    
    

   var comment=document.getElementById('comment').value;
	
   if(comment=="")
   {
       //alert('Please Enter First Name');
       document.getElementById('comment').style.borderColor = "red";
       return false;
   }
   else
   {
       document.getElementById('comment').style.borderColor = "green";
   }
   if (/^[0-9]+$/.test(document.getElementById("comment").value)) 
   {
      //alert("First Name Contains Numbers!");
       document.getElementById('comment').style.borderColor = "red";
       return false;
   }
   else
   {
       document.getElementById('comment').style.borderColor = "green";
   }
   if(commnet.length <=2)
   {
       //alert('Your Name is To Short');
       document.getElementById('commnet').style.borderColor = "red";
       return false;
   }
   else
   {
       document.getElementById('commnet').style.borderColor = "green";
   }
   
    	
   	
}
</script>
</body>
</html>