
<!DOCTYPE html>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<html>
<head>
<title>Mixed Weather Widget Flat Responsive Widget Template ::
	w3layouts</title>
<!-- custom-theme -->
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
								
								<li>
									<h4><%=string0[0]%></h4>
									<h4><%=string0[1]%></h4>
									<div class="w3layouts_icon">
										
										<img src="img/<%=wheatherForcastList.get(0).get(2)%>.png"
											alt=" " class="w3_img_responsive" />
									</div> 
									<h5><%=wheatherForcastList.get(0).get(4)%><span><sup>°</sup></span>c
										<span><%=wheatherForcastList.get(0).get(5)%><span><sup>
													°</sup></span>c</span>
									</h5> <!-- humidity -->
									<h5>
										humidity :<%=wheatherForcastList.get(0).get(6)%>%
									</h5>
								</li>

								
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
</div></div></div></body>
</html>