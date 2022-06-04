<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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
  <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Mixed Weather Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!-- //custom-theme -->
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/owl.carousel1.css" rel="stylesheet" type="text/css"
	media="all">
<link
	href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext"
	rel="stylesheet">
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
                  <li class="active"><a href="index.jsp">Home</a></li>
               
                  
                  <li><a href="Weather.jsp">Weather</a></li>
                 
                    <li><a href="ViewMarket.jsp">View Market</a></li>
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
          <div class="row h-90 align-items-center">
            <div class="col-12 col-lg-10">
              <div class="welcome-content">
                
			<body>
  <div class="container">
    <div class="row">
      <div class="col-sm-10 col-md-3 col-lg-8 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">View crop recommendation</h5>
            <form action="ApproriAlgo" method="post" class="form-signin">
            
              <div class="form-label-group">
              <label for="inputEmail">Select Region</label>
                <select  id="inputEmail" class="form-control" name="region">
                <option value="Pune">Pune</option>
                 <option value="Solapur">Solapur</option>
                  <option value="Nashik">Nashik</option>
                   <option value="Sangali">Sangali</option>
                   <option value="Ahemadnagar">Ahemadnagar</option>
                </select>
              </div>

              <div class="form-label-group">
              <label for="inputPassword">Enter Season</label>
                <select  id="inputPassword" class="form-control" name="region">
                <option value="Summer">Summer</option>
                 <option value="Winter">Winter</option>
                  <option value="Rainy">Rainy</option>
                </select>
              </div>
<div class="form-label-group">
<label for="inputPassword">Land</label>
                <select type="text" id="inputPassword" class="form-control" name="region">
                <option value="Warkas land"> Warkas land</option>
                 <option value="Jirayat land (Dry crop)">Jirayat land (Dry crop)</option>
                  <option value="Bagayat or irrigated land"> Bagayat or irrigated land</option>
                  <option value="Rice land">Rice land</option>
                </select>
              </div>
              <div class="form-label-group">
              <label for="inputPassword">Weather</label>
                <select  id="inputPassword" class="form-control" name="region">
                <option value="Cloudy">Cloudy</option>
                 <option value="Sunny">Sunny</option>
                  <option value="Overcast">Overcast</option>
                </select>
              </div>
              <div class="form-label-group">
              <label for="inputPassword">temprature</label>
                <select  id="inputPassword" class="form-control" name="region">
                <option value="10-20">10-20</option>
                 <option value="20-30">20-30</option>
                  <option value="30-40">30-40</option>
                </select>
              </div>
              
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">View Recommendation</button>
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
  
 
  <!-- ##### Newsletter Area End ##### -->

  <!-- ##### Farming Practice Area Start ##### -->
  
       

       
        
       
  
  <div class="main">
		<h1>Mixed Weather Widget</h1>
		<div class="w3_agile_main_grids">
			<div class="agile_main_grid">
				<div class="agileits_w3layouts_main_grid_left">
					<div class="wthree_main_grid agileinfo_main_grid">
						<div class="w3ls_main_grid">
							<div class="agileits_main_grid_left">
								<div class="agileits_main_grid_leftl">
									<%
										List<List<String>> wheatherForcastList = (List<List<String>>) session.getAttribute("wheatherForcastList");
										System.out.println("\n" + wheatherForcastList.size());
									%>
									<!-- temp -->
									<h3 style="font-size: 24px"><%=wheatherForcastList.get(0).get(3)%><span><sup>
												°</sup></span>c
									</h3>
								</div>
								<div class="agileits_main_grid_leftr">
									<!-- wheather -->
									<h4><%=wheatherForcastList.get(0).get(1)%></h4>
									<!-- date -->
									<%
										String[] string0 = wheatherForcastList.get(0).get(0).split(" ");
									%>
									<!-- date wise city -->
									<p>
										<%=string0[0]%>,
										<%=wheatherForcastList.get(0).get(9)%></p>
								</div>
								<div class="clear"></div>
							</div>
							<div class="agileits_main_grid_right">
								<!-- hours -->
								<p><%=string0[1]%></p>
							</div>
							<div class="clear"></div>
						</div>
						<div class="w3l_main_grid_list">
							<ul id="owl-demo" class="owl-carousel owl-theme">
								<!-- hourse wise detail wheather -->
								<li>
									<h4><%=string0[0]%></h4>
									<h4><%=string0[1]%></h4>
									<div class="w3layouts_icon">
										<!-- image -->
										<img src="img/<%=wheatherForcastList.get(0).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(0).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(0).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(0).get(6)%>%
									</h5>
								</li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string1 = wheatherForcastList.get(1).get(0).split(" ");
								%>
								<li><h4><%=string1[0]%></h4>
									<h4><%=string1[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(1).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(1).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(1).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(1).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string2 = wheatherForcastList.get(2).get(0).split(" ");
								%>
								<li><h4><%=string2[0]%></h4>
									<h4><%=string2[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(2).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(2).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(2).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(2).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string3 = wheatherForcastList.get(3).get(0).split(" ");
								%>
								<li><h4><%=string3[0]%></h4>
									<h4><%=string3[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(3).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(3).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(3).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(3).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string4 = wheatherForcastList.get(4).get(0).split(" ");
								%>
								<li><h4><%=string4[0]%></h4>
									<h4><%=string4[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(4).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(4).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(4).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(4).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string5 = wheatherForcastList.get(5).get(0).split(" ");
								%>
								<li><h4><%=string5[0]%></h4>
									<h4><%=string5[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(5).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(5).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(5).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(5).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string6 = wheatherForcastList.get(6).get(0).split(" ");
								%>
								<li><h4><%=string6[0]%></h4>
									<h4><%=string6[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(6).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(6).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(6).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(6).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string7 = wheatherForcastList.get(7).get(0).split(" ");
								%>
								<li><h4><%=string7[0]%></h4>
									<h4><%=string7[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(7).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(7).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(7).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(7).get(6)%>%
									</h5></li>


								<!-- hourse wise detail wheather -->
								<%
									String[] string8 = wheatherForcastList.get(8).get(0).split(" ");
								%>
								<li>
									<h4><%=string8[0]%></h4>
									<h4><%=string8[1]%></h4>
									<div class="w3layouts_icon">
										<!-- image -->
										<img src="img/<%=wheatherForcastList.get(8).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(8).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(8).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(8).get(6)%>%
									</h5>
								</li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string9 = wheatherForcastList.get(9).get(0).split(" ");
								%>
								<li><h4><%=string9[0]%></h4>
									<h4><%=string9[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(9).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(9).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(9).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(9).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string10 = wheatherForcastList.get(10).get(0).split(" ");
								%>
								<li><h4><%=string10[0]%></h4>
									<h4><%=string10[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(10).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(10).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(10).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(10).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string11 = wheatherForcastList.get(11).get(0).split(" ");
								%>
								<li><h4><%=string11[0]%></h4>
									<h4><%=string11[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(11).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(11).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(11).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(11).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string12 = wheatherForcastList.get(12).get(0).split(" ");
								%>
								<li><h4><%=string12[0]%></h4>
									<h4><%=string12[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(12).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(12).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(12).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(12).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string13 = wheatherForcastList.get(13).get(0).split(" ");
								%>
								<li><h4><%=string13[0]%></h4>
									<h4><%=string13[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(5).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(13).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(13).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(13).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string14 = wheatherForcastList.get(14).get(0).split(" ");
								%>
								<li><h4><%=string14[0]%></h4>
									<h4><%=string14[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(14).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(14).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(14).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(14).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string15 = wheatherForcastList.get(15).get(0).split(" ");
								%>
								<li><h4><%=string15[0]%></h4>
									<h4><%=string15[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(15).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(15).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(15).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(15).get(6)%>%
									</h5></li>
								<!-- hourse wise detail wheather -->
								<%
									String[] string16 = wheatherForcastList.get(16).get(0).split(" ");
								%>
								<li>
									<h4><%=string16[0]%></h4>
									<h4><%=string16[1]%></h4>
									<div class="w3layouts_icon">
										<!-- image -->
										<img src="img/<%=wheatherForcastList.get(16).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(16).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(16).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(16).get(6)%>%
									</h5>
								</li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string17 = wheatherForcastList.get(17).get(0).split(" ");
								%>
								<li><h4><%=string17[0]%></h4>
									<h4><%=string17[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(1).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(17).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(17).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(17).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string18 = wheatherForcastList.get(18).get(0).split(" ");
								%>
								<li><h4><%=string18[0]%></h4>
									<h4><%=string18[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(18).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(18).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(18).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(18).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string19 = wheatherForcastList.get(19).get(0).split(" ");
								%>
								<li><h4><%=string19[0]%></h4>
									<h4><%=string19[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(19).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(19).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(19).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(19).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string20 = wheatherForcastList.get(20).get(0).split(" ");
								%>
								<li><h4><%=string20[0]%></h4>
									<h4><%=string20[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(20).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(20).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(20).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(20).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string21 = wheatherForcastList.get(21).get(0).split(" ");
								%>
								<li><h4><%=string21[0]%></h4>
									<h4><%=string21[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(21).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(21).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(21).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(21).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string22 = wheatherForcastList.get(22).get(0).split(" ");
								%>
								<li><h4><%=string22[0]%></h4>
									<h4><%=string22[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(22).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(22).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(22).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(22).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string23 = wheatherForcastList.get(23).get(0).split(" ");
								%>
								<li><h4><%=string23[0]%></h4>
									<h4><%=string23[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(23).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(23).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(23).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(23).get(6)%>%
									</h5></li>


								<!-- hourse wise detail wheather -->
								<%
									String[] string24 = wheatherForcastList.get(24).get(0).split(" ");
								%>
								<li>
									<h4><%=string24[0]%></h4>
									<h4><%=string24[1]%></h4>
									<div class="w3layouts_icon">
										<!-- image -->
										<img src="img/<%=wheatherForcastList.get(24).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(24).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(24).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(24).get(6)%>%
									</h5>
								</li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string25 = wheatherForcastList.get(25).get(0).split(" ");
								%>
								<li><h4><%=string25[0]%></h4>
									<h4><%=string25[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(25).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(25).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(25).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(25).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string26 = wheatherForcastList.get(26).get(0).split(" ");
								%>
								<li><h4><%=string26[0]%></h4>
									<h4><%=string26[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(26).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(26).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(26).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(26).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string27 = wheatherForcastList.get(27).get(0).split(" ");
								%>
								<li><h4><%=string27[0]%></h4>
									<h4><%=string27[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(27).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(27).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(27).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(27).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string28 = wheatherForcastList.get(28).get(0).split(" ");
								%>
								<li><h4><%=string28[0]%></h4>
									<h4><%=string28[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(28).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(28).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(28).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(28).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string29 = wheatherForcastList.get(29).get(0).split(" ");
								%>
								<li><h4><%=string29[0]%></h4>
									<h4><%=string29[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(29).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(29).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(29).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(29).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string30 = wheatherForcastList.get(30).get(0).split(" ");
								%>
								<li><h4><%=string30[0]%></h4>
									<h4><%=string30[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(30).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(30).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(30).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(30).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string31 = wheatherForcastList.get(31).get(0).split(" ");
								%>
								<li><h4><%=string31[0]%></h4>
									<h4><%=string31[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(31).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(31).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(31).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(31).get(6)%>%
									</h5></li>
								<!-- hourse wise detail wheather -->
								<%
									String[] string32 = wheatherForcastList.get(32).get(0).split(" ");
								%>
								<li><h4><%=string32[0]%></h4>
									<h4><%=string32[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(32).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(32).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(32).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(32).get(6)%>%
									</h5></li>

								<!-- hourse wise detail wheather -->
								<%
									String[] string33 = wheatherForcastList.get(33).get(0).split(" ");
								%>
								<li><h4><%=string33[0]%></h4>
									<h4><%=string33[1]%></h4> <!-- image -->
									<div class="w3layouts_icon">
										<img src="img/<%=wheatherForcastList.get(33).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> <!--min and max temp -->
									<h5><%=wheatherForcastList.get(33).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(33).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(33).get(6)%>%
									</h5></li>
							</ul>
						</div>
					</div>
				</div>
				
				
	<script src="js/jquery-2.2.3.min.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script>
		$(document).ready(function() {
			$("#owl-demo,#owl-demo1,#owl-demo3,#owl-demo4").owlCarousel({
				autoPlay : 3000, //Set AutoPlay to 3 seconds

				items : 4,
				itemsDesktop : [ 768, 3 ],
				itemsDesktopSmall : [ 414, 2 ]

			});

		});
	</script>
	<!-- //js -->
  <!-- ##### Farming Practice Area End ##### -->

  
  <!-- ##### Testimonial Area End ##### -->

  <!-- ##### Contact Area Start ##### -->
 
  <!-- ##### Contact Area End ##### -->

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