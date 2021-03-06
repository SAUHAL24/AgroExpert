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
  <title>Famie - Farm Services &amp; Organic Food Store Template | Home</title>
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
                <a href="#" data-toggle="tooltip" data-placement="bottom" title="infodeercreative@gmail.com"><i class="fa fa-envelope-o" aria-hidden="true"></i> <span>Email: infodeercreative@gmail.com</span></a>
                <a href="#" data-toggle="tooltip" data-placement="bottom" title="+1 234 122 122"><i class="fa fa-phone" aria-hidden="true"></i> <span>Call Us: +84 223 9000</span></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

 
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
         
              <div class="classycloseIcon">
                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
              </div>
              <!-- Navbar Start -->
              <div class="classynav">
                <ul>
                  <li class="active"><a href="index.jsp">Home</a></li>
                <li><a href="farmerlogin.jsp">Login</a></li>
                   <li><a href="farmerregister.jsp">Register</a></li>
                </ul>
        
                
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
        <br>
		
  <div class="container">
    <div class="row">
      <div class="col-sm-6 col-md-9 col-lg-6 mx-auto">
        <div class="card card-signin my-7">
          <div class="card-body">
            <h5 class="card-title text-center">Register Here</h5>
            <form class="form-signin" action="FarmerRegisterServlet" method="post">
             <div class="form-label-group">
               <label for="inputEmail">First Name</label>
                <input type="text" id="inputEmail" pattern="^[A-Za-z]+$" name="fname" class="form-control"   placeholder="Enter First Name" required autofocus>
              
              </div>
               <div class="form-label-group">
                <label for="inputEmail">Last Name</label>
                <input type="text" id="inputEmail" name="lname" pattern="^[A-Za-z]+$" class="form-control" placeholder="Enter Last Name" required autofocus>
               
              </div>
               <div class="form-label-group">
                 <label for="inputEmail">Address</label>
                <input type="text" id="inputEmail" name="address" pattern="^[A-Za-z]+$" class="form-control" placeholder="Enter Address" required autofocus>
              
              </div>
               <div class="form-label-group">
               <label for="inputEmail">Phone No</label>
                <input type="text" id="inputEmail" name="phone"  class="form-control" placeholder="Enter PhoneNo" pattern="[789][0-9]{9}" required autofocus>
                
              </div>
              <div class="form-label-group">
              <label for="inputEmail">Email address</label>
                <input type="email" id="inputEmail" name="email" class="form-control" placeholder="Enter Email" required autofocus>
                
              </div>

              <div class="form-label-group">
              <label for="inputPassword">Password</label>
                <input type="password" id="inputPassword" name="password" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" placeholder="Enter Password" required>
                
              </div>
<button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Register</button>
              <hr class="my-4">
             <br>
             <br><br>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div></div></div></div></div></div></div>
</body>
			

      <!-- Single Welcome Slides -->
     

    </div>
  </div>
  <!-- ##### Hero Area End ##### -->

  <!-- ##### Famie Benefits Area Start ##### -->
 
  <!-- ##### Farming Practice Area End ##### -->

  
  <!-- ##### Testimonial Area End ##### -->

  <!-- ##### Contact Area Start ##### -->
  
  <!-- ##### News Area Start ##### -->
  
  <!-- ##### News Area End ##### -->

  <!-- ##### Footer Area Start ##### -->
  
  <!-- ##### Footer Area End ##### -->

  <!-- ##### All Javascript Files ##### -->
  <!-- jquery 2.2.4  -->
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