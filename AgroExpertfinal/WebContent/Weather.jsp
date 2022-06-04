
<!DOCTYPE html>
<html>
<head>
<title> Weather </title>

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
<style type="text/css">
#mainform {
	background: rgba(245, 214, 7, 0.3);
	width: 300px;
	height: 100px;
	margin-left: 300px;
	margin-right: 500px;
	padding: 55px;
	border-radius: 30px;
	margin-left: 400px;
}

input[type=text] {
	width: 300px;
	height: 50px;
	border: none;
	border-radius: 30px;
	text-align: center;
}

input[type=text], select {
	width: 300px;
	height: 50px; border : none;
	border-radius: 30px;
	text-align: center;
	border: none;
}
</style>
</head>
<body>
	<div class="main">
		<h1>Enter The City Name</h1>
		<div id="mainform">
			<form  action="<%=request.getContextPath()%>/WheatherForcastingController" method="post">
				<input type="text" name="cityname" placeholder="Enter City Name">
				<br> <br>
				<button type="submit">Submit</button>
			</form>
		</div>
	</div>
	<!-- js -->
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

</body>
</html>