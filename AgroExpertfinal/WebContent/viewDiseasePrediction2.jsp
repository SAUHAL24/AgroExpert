<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbconnect.Dataconnection2"%>
<%@page import="dbconnect.Dataconnection"%>
<%@page import="java.sql.Connection"%>

<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
                 <li class="active"><a href="farmerhome.jsp">Home</a></li>
               
                  
                    <li><a href="Weather.jsp">Weather</a></li>
                 
                    <li><a href="ViewMarket.jsp">View Market</a></li>
                     <li><a href="ViewMarketRecommendation.jsp">View Market Recommendation</a></li>
                    <li><a href="viewDiseasePrediction.jsp">View Disease Prediction</a></li>
                    
                   <li><a href="FarmerLogout">Logout</a></li>
                </ul>
               
                
                
              </div>
              <!-- Navbar End -->
            </div>
          </nav>

          <!-- Search Form -->
          <div class="search-form">
            <form action="#" method="get">
              <input type="search" name="search" id="search" placeholder="Type keywords &amp; press enter...">
              <button type="submit" class="d-none"></button>
            </form>
            <!-- Close Icon -->
            <div class="closeIcon"><i class="fa fa-times" aria-hidden="true"></i></div>
          </div>
        </div>
      </div>
    </div>
  </header>
  
  <div class="hero-area">
    <div class="welcome-slides owl-carousel">

      <!-- Single Welcome Slides -->
      <div class="single-welcome-slides bg-img bg-overlay jarallax" style="background-image: url(img/bg-img/7.jpg);">
        <div class="container h-100">
          <div class="row h-90 align-items-center">
            <div class="col-12 col-lg-10">
              <div class="welcome-content">
                
			<body>
		<!-- 	id, crop, symptom1, symptom2, symptom3, disease, pesticides -->
			<% String crop=request.getParameter("crop");
			System.out.println(crop);
			
			%>
			<% 
			Connection con=Dataconnection2.getConnection();
			
			System.out.println("Connection established....");
			String query="select DISTINCT symptom1 from cropinfo where crop='"+crop+"'";
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			
				
			
			%>
			<% 
			Connection con1=Dataconnection2.getConnection();
			
			System.out.println("Connection established....");
			String query1="select DISTINCT symptom2 from cropinfo where crop='"+crop+"'";
			PreparedStatement ps1=con.prepareStatement(query1);
			ResultSet rs1=ps1.executeQuery();
			
				
			
			%>
			<% 
			Connection con2=Dataconnection2.getConnection();
			
			System.out.println("Connection established....");
			String query2="select DISTINCT symptom3 from cropinfo where crop='"+crop+"'";
			PreparedStatement ps2=con.prepareStatement(query2);
			ResultSet rs2=ps2.executeQuery();
			
				
			
			%>
  <div class="container">
    <div class="row">
      <div class="col-sm-10 col-md-3 col-lg-8 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Enter Symptons</h5>
            <form action="viewDiseasePrediction3.jsp" method="post" class="form-signin">
            
              <div class="form-label-group">
              <label for="inputEmail">Select Symptons1</label>
                <select  id="inputEmail" class="form-control" name="Symptons1">
                <%while(rs.next())
    			{ %>
                <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
                 <%} %>
                </select>
              </div>
 <div class="form-label-group">
              <label for="inputEmail">Select Symptons2</label>
                <select  id="inputEmail" class="form-control" name="Symptons2">
                <%while(rs1.next())
    			{ %>
                <option value="<%=rs1.getString(1)%>"><%=rs1.getString(1)%></option>
                 <%} %>
                </select>
              </div>
               <div class="form-label-group">
              <label for="inputEmail">Select Symptons3</label>
                <select  id="inputEmail" class="form-control" name="Symptons3">
                <%while(rs2.next())
    			{ %>
                <option value="<%=rs2.getString(1)%>"><%=rs2.getString(1)%></option>
                 <%} %>
                </select>
              </div>
             

              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">View Disease Prediction</button>
              <hr class="my-4">
             
             
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
			</div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Single Welcome Slides -->
     

    </div>
  
 
 
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