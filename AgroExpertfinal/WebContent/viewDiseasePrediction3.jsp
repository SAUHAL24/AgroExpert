<!DOCTYPE html>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="org.bytedeco.opencv.opencv_core.Algorithm"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbconnect.Dataconnection2"%>
<%@page import="dbconnect.Dataconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>

<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
  <title>Famie - Farm Services &amp; Organic Food Store Template | Home</title>

  <link rel="icon" href="img/core-img/favicon.ico">

  <link rel="stylesheet" href="style.css">
  <style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 5px;
  text-align: left;    
}
</style>
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
                <!-- Search Icon -->
                
                <!-- Cart Icon -->
                
                
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
  <!-- ##### Header Area End ##### -->

  <!-- ##### Hero Area Start ##### -->
  <div class="hero-area">
    <div class="welcome-slides owl-carousel">

      <!-- Single Welcome Slides -->
      <div class="single-welcome-slides bg-img bg-overlay jarallax" style="background-image: url(img/bg-img/7.jpg);">
        <div class="container h-100">
          <div class="row h-100 align-items-center">
            <div class="col-12 col-lg-10">
              <div class="welcome-content">
                
			<body>
			
		<%
		
		
		ArrayList<String>collabrative=new ArrayList<String>();
		
		ArrayList<String>list=new ArrayList<String>();
		 String symptons1=request.getParameter("Symptons1");
		 String symptons2=request.getParameter("Symptons2");
		 String symptons3=request.getParameter("Symptons3");
		 System.out.println(symptons1);
		 System.out.println(symptons2);
		 System.out.println(symptons3);
		 
		 collabrative.add(symptons1);
		 collabrative.add(symptons2);
		 collabrative.add(symptons3);
		 
		
		 
		 Connection con=Dataconnection2.getConnection();
		 String query="select * from cropinfo where symptom1='"+request.getParameter("Symptons1")+"' and symptom2='"+request.getParameter("Symptons2")+"' and symptom3='"+request.getParameter("Symptons3")+"'";
		PreparedStatement ps=con.prepareStatement(query);
		ResultSet rs=ps.executeQuery();
		%>
  <table id="customers">

  <tr>
    <th>Disease Name</th>
    
  </tr>
 
  
    
    
 
 
  <%
  HashSet<String> h = new HashSet<String>();
  while(rs.next())
	  {
	  List<String> al=Arrays.asList(rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7));
	  list.addAll(al); 
	  
	  String disease=rs.getString(6);
	  h.add(rs.getString(6));

	  HttpSession s3=request.getSession();
	  s3.setAttribute("disease", disease);
	 
	  }
	  %>
	   <tr>
	   
	   <%
	   Iterator<String> i = h.iterator(); 
	      while (i.hasNext()) 
	          System.out.println(i.next());
	      %>
  <td><%=h.toString()%></td>
  
  </tr>

</table>

 
<% 
String disease=(String)session.getAttribute("disease");
Connection cc=Dataconnection2.getConnection();
String query1="select DISTINCT pesticides from cropinfo where disease='"+disease+"' ";
PreparedStatement pp=cc.prepareStatement(query1);
ResultSet rr=pp.executeQuery();

%>
  <table  style="width:100%"  >

  <tr>
    <th  bgcolor="#00FF00">Pesticide Recommendation</th>
    
  </tr>
 
  
     
    
 
  <tr>
  <%while(rr.next())
	  {%>
  <td bgcolor="#FFFFFF"><%=rr.getString(1)%></td>
  </tr>
 <%} %>

</table>
</body>
			</div>
              </div>
            </div>
          </div>
        </div>
      </div>

     

    </div>
  
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