<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<title>Navarasa Natana Academy::Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="admincss/bootstrap.min.css" >
<!-- //bootstrap-css -->                      
<!-- Custom CSS -->
<link href="admincss/style.css" rel='stylesheet' type='text/css' />
<link href="admincss/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="admincss/font.css" type="text/css"/>
<link href="admincss/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="admincss/morris.css" type="text/css"/>
<!-- calendar -->
<link rel="stylesheet" href="admincss/monthly.css">
<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="adminjs/jquery2.0.3.min.js"></script>
<script src="adminjs/raphael-min.js"></script>
<script src="adminjs/morris.js"></script>
<link rel="stylesheet" href="admincss/lightbox.css">
 <script src="adminjs/lightbox-plus-jquery.min.js"> </script>
</head>
<body>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="dashboard.html" class="logo">
        <img src="adminimages/logo.png" alt="nna" style="width: 68%; margin-top: -17%;">
		
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->

<div class="top-nav clearfix">
    <!--search & user info start-->
     <ul class="nav pull-right top-menu">
       
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="adminimages/2.png">
                <span class="username">${sessionScope.activeuser}</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                <li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
                <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
                <li><a href="adminlogout.html"><i class="fa fa-key"></i> Log Out</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->
       
    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="dashboard.html">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                
                <li class="sub-menu">
                    <a href="adminarticle.html">
                        <i class="fa fa-book"></i>
                        <span>Article</span>
                    </a>
                            </li>
                <li>
                    <a href="adminbanner.html">
                         <i class="fa fa-glass"></i>
                        <span>Banner</span>
                    </a>
                </li>
				 <li class="sub-menu">
                    <a href="admincomment.html">
                        <i class="fa fa-book"></i>
                        <span>Comments</span>
                    </a>
                            </li>
                                   
				
				<li>
                    <a href="admission.html">
                       <i class="fa fa-comments-o" aria-hidden="true"></i>
                        <span>Admission</span>
                    </a>
                </li>
				<li>
                    <a href="faculty.html">
                       <i class="fa fa-comments-o" aria-hidden="true"></i>
                        <span>Faculty</span>
                    </a>
                </li>
				<li>
                    <a href="gallery.html">
                       <i class="fa fa-comments-o" aria-hidden="true"></i>
                        <span>Gallery</span>
                    </a>
                </li>
				<li>
                    <a href="audition.html">
                       <i class="fa fa-comments-o" aria-hidden="true"></i>
                        <span>Auditions</span>
                    </a>
                </li>
				
				<li>
                    <a href="feedback.html">
                       <i class="fa fa-registered" aria-hidden="true"></i>
                        <span>Feedback</span>
                    </a>
                </li>             
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside><!--main content start-->
<section id="main-content">
	
		<div class="table-agile-info">
  <div class="panel panel-default" style="margin-top: 10%;">
    <div class="panel-heading">
      Comments
    </div>
     <div class="table-responsive">
      <table class="table table-striped b-t b-light">
        <thead>
          <tr>
            <th style="width:20%">Commenter Name</th>
            <th style="width:20%">Commenter email</th>
            <th style="width:20%">Commenter Message</th>
            <th style="width:20%">For Article
            <th style="width:20%"> Action</th>
          </tr>
        </thead>
        <tbody>
       
        
        <c:forEach var="commentlist" items="${commentarticles}">
        
        <c:url var="deletecomment"  value="admindeletecomment.html">
        <c:param name="comment_id" value="${commentlist.comment_id}"></c:param>
        
        </c:url>
        <c:url var="replay1" value="index.html">
      	
        </c:url>
	 <tr>
	 <td>${commentlist.commenter_name}</td>
	 <td>${commentlist.commenter_email}</td>
	 <td>${commentlist.commenter_message}</td>
	 <td><p style="text-align: justify;">${commentlist.article.article_caption}</p></td>
	 
			<td>
		  <a href="${deletecomment}"><i class="fa fa-trash" aria-hidden="true"></i></a>
		  <a href="${replay1}"><i class="fa fa-reply" aria-hidden="true"></i></a>
		  </td>
		  
		   </tr>
		   
    </c:forEach>
		 
		    <script src="adminjs/lightbox-plus-jquery.min.js"> </script>
	
        </tbody>
      </table>
    </div>
    
  </div>
</div>
 <!-- footer -->
		  <div class="footer">
			<div class="wthree-copyright">
			  <p>Â© 2018 Bharatiya Yodha. All rights reserved | Design by <a href="http://appfonehub.com">Appfone Hub Private Limited.</a></p>
			</div>
		  </div>
  <!-- / footer -->
</section>
<!--main content end-->
</section>
<script src="adminjs/bootstrap.js"></script>
<script src="adminjs/jquery.dcjqaccordion.2.7.js"></script>
<script src="adminjs/scripts.js"></script>
<script src="adminjs/jquery.slimscroll.js"></script>
<script src="adminjs/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="adminjs/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->	

</body>
</html>
