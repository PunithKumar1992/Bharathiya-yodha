<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>BLOG</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Blogger Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android  Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:700,700italic,800,300,300italic,400italic,400,600,600italic' rel='stylesheet' type='text/css'>
 
 <!-- article slide image slider -->
  <link rel="stylesheet" href="css/flickity.css">

      <link rel="stylesheet" href="css/articlestyle.css">
       <script src="js/flickity.pkgd.js"></script>
    <script  src="js/articleindex.js"></script>
 
 
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
						<li><a href="registration.html" data-hover="Registration">Registration</a></li> 
						<li><a href="about.html" data-hover="About">About</a></li>
						<li><a href="services.html" data-hover="SERVICES">SERVICES</a></li>
						<li><a href="login.html" data-hover="Login">Login</a></li>
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
			<div class="col-md-3 top-nav">
				     <div class="logo">
						<a href="index.html"><img src="images/logoimage/logo.png"/></a>
					</div>
					<div class="top-menu">
					 <span class="menu"> </span>

					<ul class="cl-effect-16">
						<li><a class="active" href="index.html" data-hover="HOME">Home</a></li> 
						<!--<li><a href="about.html" data-hover="About">About</a></li>
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
		   
			<div class="banner">
			
                 <div  class="callbacks_container">
					<ul class="rslides" id="slider4">
					
					<c:forEach var="userbannerlist" items="${userbannerlist}">
							
					       <li>
					       <h3 class="tittle"> ${userbannerlist.banner_caption}</h3>
							 <img src="images/banner/${userbannerlist.banner_image}" class="img-responsive" alt="" />
							 <div class="b-bottom"> 
			      <h3 class="top" style="padding: 1em;margin-top: -4%;">${userbannerlist.banner_content}</h3>
				</div>

							</li>
							</c:forEach>
					
						</ul>
					</div>
					<!--banner-->
	  			<script src="js/responsiveslides.min.js"></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager:true,
			        nav:true,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
		 <div class="clearfix"> </div>
			    
			 </div>
			   <!--//banner-->
			  <!--/top-news-->
			  <div class="top-news">
				<div class="top-inner">
				<c:forEach var="usergridlist" items="${usergridlist}">
				<c:url  var="viewarticle" value="viewarticle.html">
				<c:param name="article_id" value="${usergridlist.article_id}"></c:param>
				</c:url>
					<div class="col-md-6 top-text">
						 <a href="${viewarticle}"><img src="images/articlegridimages/${usergridlist.article_gridimage}" class="img-responsive" alt=""></a>
						    <h5 class="top"> ${usergridlist.article_person}<a href="${viewarticle}"></a></h5>
				<p class="sub" style="text-align: justify;">${usergridlist.article_brief}&nbsp;&nbsp;<a href="${viewarticle}">Read more</a></p>
						  
			 
					 </div>
					 </c:forEach>
				
					
					 <div class="clearfix"> </div>
				 </div>
				<!-- <div class="top-inner second">
					<div class="col-md-6 top-text">
						 <a href="single.html"><img src="images/pic3.jpg" class="img-responsive" alt=""></a>
						    <h5 class="top"><a href="single.html">Consetetur sadipscing elit</a></h5>
							<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt labore dolore magna aliquyam eratsed diam justo duo dolores rebum.</p>
						    <p>On Jun 25 <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0 </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a><a class="span_link" href="single.html"><span class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
					 </div>
					<div class="col-md-6 top-text two">
						 <a href="single.html"><img src="images/pic4.jpg" class="img-responsive" alt=""></a>
						    <h5 class="top"><a href="single.html">Consetetur sadipscing elit</a></h5>
							<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt labore dolore magna aliquyam eratsed diam justo duo dolores rebum.</p>
						    <p>On Jun 27 <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>0 </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>56 </a><a class="span_link" href="single.html"><span class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
					 </div>
					 <div class="clearfix"> </div>
				 </div>-->
	            </div>
					<!--//top-news-->
		     </div>
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
							<a href="${viewarticle}"><p class="sub" style="text-align: justify;">${usergridlist.article_brief}</p></a>
						    <p>${usergridlist.article_date} <a class="span_link" href="#"><span class="glyphicon glyphicon-comment"></span>${usergridlist.article_comment} </a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>${usergridlist.article_view} </a><a class="span_link" href="${viewarticle}"><span class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
					 </div>
					 </c:forEach>
				<marquee behavior="scroll" direction="up" onmouseover="this.stop();" onmouseout="this.start();">

					 <div class="edit-pics">
					 <c:forEach var="usergridlist" items="${usergridlist}" >
					 <c:url  var="viewarticle" value="viewarticle.html">
				<c:param name="article_id" value="${usergridlist.article_id}"></c:param>
				</c:url>
					 		      <div class="editor-pics">
										 <div class="col-md-3 item-pic">
										   <img src="images/articlegridimages/${usergridlist.article_gridimage}" class="img-responsive" alt="">

										   </div>
											<div class="col-md-9 item-details">
												<h5 class="inner two" style="text-align: justify;"><a href="${viewarticle}">${usergridlist.article_brief}</a></h5>
												 <div class="td-post-date two"><i class="glyphicon glyphicon-time"></i>${usergridlist.article_date}<a href="#"><i class="glyphicon glyphicon-comment"></i>${usergridlist.article_comment}</a><a class="span_link" href="#"><span class="glyphicon glyphicon-eye-open"></span>${usergridlist.article_view} </a></div>
											
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


</body>
</html>