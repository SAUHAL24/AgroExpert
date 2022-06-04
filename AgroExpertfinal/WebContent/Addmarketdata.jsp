<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbconnect.Dataconnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <!-- Title -->
  <title>Home</title>
  <!-- Favicon -->
  <link rel="icon" href="img/core-img/favicon.ico">
  <!-- Core Stylesheet -->
  <link rel="stylesheet" href="style.css">
</head>

<body>
  <!-- Preloader -->
  <div class="preloader d-flex align-items-center justify-content-center">
    <div class="spinner"></div>
  </div>

  <!-- ##### Header Area Start ##### -->
  <header class="header-area">
    <!-- Top Header Area -->
    <div class="top-header-area">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="top-header-content d-flex align-items-center justify-content-between">
              <!-- Top Header Content -->
              <div class="top-header-meta">
                <p>Welcome to <span>FarmBuddy</span>, we hope you will enjoy our service and have good experience</p>
              </div>
              <!-- Top Header Content -->
              <div class="top-header-meta text-right">
                <a href="#" data-toggle="tooltip" data-placement="bottom" title="Agroexpert@gmail.com"><i class="fa fa-envelope-o" aria-hidden="true"></i> <span>Email: infodeercreative@gmail.com</span></a>
                <a href="#" data-toggle="tooltip" data-placement="bottom" title="+1 234 122 122"><i class="fa fa-phone" aria-hidden="true"></i> <span>Call Us: +84 223 9000</span></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Navbar Area -->
    <div class="famie-main-menu">
      <div class="classy-nav-container breakpoint-off">
        <div class="container">
          <!-- Menu -->
          <nav class="classy-navbar justify-content-between" id="famieNav">
            <!-- Nav Brand -->
            <a href="index.html" class="nav-brand"><img src="" alt=""></a>
            <!-- Navbar Toggler -->
            <div class="classy-navbar-toggler">
              <span class="navbarToggler"><span></span><span></span><span></span></span>
            </div>
            <!-- Menu -->
            <div class="classy-menu">
              <!-- Close Button -->
              <div class="classycloseIcon">
                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
              </div>
              <!-- Navbar Start -->
              <div class="classynav">
                <ul>
                  <li class="active"><a href="index.jsp">Home</a></li>
               
                  
                 <li><a href="#">Add Market Data</a></li>
                   <li><a href="VendorLogout">Logout</a></li>
                </ul>
                <!-- Search Icon -->
                
                <!-- Cart Icon -->
                
              </div>
              <!-- Navbar End -->
            </div>
          </nav>

          
        </div>
      </div>
    </div>
  </header>
  <!-- ##### Header Area End ##### -->

  <!-- ##### Hero Area Start ##### -->
  <div class="hero-area">
    <div class="welcome-slides owl-carousel">

      <!-- Single Welcome Slides -->
      <div class="single-welcome-slides bg-img bg-overlay jarallax" style="background-image: url(img/bg-img/7.jpg);">
        <div class="container h-100">
          <div class="row h-90 align-items-center">
            <div class="col-12 col-lg-10">
              <div class="welcome-content">
          
  
  <% Connection con=Dataconnection.getConnection();
			 String query="Select * from crop";
			 PreparedStatement ps=con.prepareStatement(query);
			 ResultSet rs=ps.executeQuery();
			%>
        <div class="overlay"></div>
  <div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="" alt=""/>
                        
                        <br>
                        <p></p>
                       
                    </div>
                    <br>
                    <div class="col-md-8 register-right">
                     <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab" required autofocus>
                               <form action="AddMarketData" method="post">
                               <br>
                               <br>
                               <br>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                        
                                           <!--  <input type="text" class="form-control" placeholder="Enter Crop Name *" Name="cropname" > -->
                                            <select  id="inputEmail" class="form-control" name="cropname" required autofocus>
                  <%while(rs.next()){ %>
                <option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option>
              <%} %>
                 
                </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="date" class="form-control" placeholder="Location/Area *" name="date"  required autofocus>
                                        </div>
                                       
                                        <div class="form-group">
                                            <input type="text" class="form-control"  placeholder="Enter Market Address*" name="address" required autofocus  >
                                        </div>
                                        
                                    </div>
                                    <div class="col-md-6">
                                        
                                          <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Enter Current Rate*"  name="rate" required autofocus >
                                        </div>
                                        <div class="form-group">
                                            <input type="text"  name="Lowrate" class="form-control" placeholder="Enter Low Rate *" required autofocus>
                                        </div>
                                       
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Enter High Rate*" name="HighRate" value=""  required autofocus/>
                                        </div>
                                       
                                        
                                         <div class="form-group">
                                        <select  class="form-control" name="season">
                <option value="Summer"> Summer</option>
                 <option value="Winter">Winter</option>
                  <option value="Rainy">Rainy</option>
                
                </select>
                  </div>
                  <input type="submit" class="btnRegister"  value="Add Market Data">
                                    </div>
                                </div>
                                </form>
                            </div>
                            
                        </div>
                    </div>
                </div>

            </div>
</div></div></div></div></div></div></div>

 
  <script src="js/jquery.min.js"></script>
  <!-- Popper js -->
  <script src="js/popper.min.js"></script>
  <!-- Bootstrap js -->
  <script src="js/bootstrap.min.js"></script>
  <!-- Owl Carousel js -->
  <script src="js/owl.carousel.min.js"></script>
  <!-- Classynav -->
  <script src="js/classynav.js"></script>
  <!-- Wow js -->
  <script src="js/wow.min.js"></script>
  <!-- Sticky js -->
  <script src="js/jquery.sticky.js"></script>
  <!-- Magnific Popup js -->
  <script src="js/jquery.magnific-popup.min.js"></script>
  <!-- Scrollup js -->
  <script src="js/jquery.scrollup.min.js"></script>
  <!-- Jarallax js -->
  <script src="js/jarallax.min.js"></script>
  <!-- Jarallax Video js -->
  <script src="js/jarallax-video.min.js"></script>
  <!-- Active js -->
  <script src="js/active.js"></script>
</body>

</html>