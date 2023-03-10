<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">

<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
</head>
<style>
h2 {
	font-family: Sans-serif;
	font-size: 22px;
	font-style: normal;
	font-weight: bold;
	color: Blue;
	text-align: center;
}

table {
	font-family: verdana;
	color: white;
	font-size: 16px;
	font-style: normal;
	font-weight: bold;
	background: #00B074 !important;;
	border-collapse: collapse;
	/*border: 4px solid #000000;
 border-style: dashed;*/
}

table.inner {
	border: 10px
}

input[type=text], input[type=email], input[type=number] {
	width: 50%;
	padding: 6px 12px;
	margin: 5px 0;
	box-sizing: border-box;
}

input[type=submit], input[type=reset] {
	width: 15%;
	padding: 8px 12px;
	margin: 5px 0;
	box-sizing: border-box;
}
</style>
</head>

<body>


		<!-- Carousel Start -->
		<div class="container-fluid p-0">
			<div class="owl-carousel header-carousel position-relative">
				<div class="owl-carousel-item position-relative">
					<img class="img-fluid" src="img/carousel-1.jpg" alt="">
					<div
						class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center"
						style="background: rgba(43, 57, 64, .5);">
						<div class="container">
							<div class="row justify-content-start">
								<div class="col-10 col-lg-8">
									<h1 class="display-3 text-white animated slideInDown mb-4">Find
										The Perfect Job That You Deserved</h1>
									<p class="fs-5 fw-medium text-white mb-4 pb-2">Vero elitr
										justo clita lorem. Ipsum dolor at sed stet sit diam no. Kasd
										rebum ipsum et diam justo clita et kasd rebum sea elitr.</p>
									<a href=""
										class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Search
										A Job</a> <a href=""
										class="btn btn-secondary py-md-3 px-md-5 animated slideInRight">Find
										A Talent</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="owl-carousel-item position-relative">
					<img class="img-fluid" src="img/carousel-2.jpg" alt="">
					<div
						class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center"
						style="background: rgba(43, 57, 64, .5);">
						<div class="container">
							<div class="row justify-content-start">
								<div class="col-10 col-lg-8">
									<h1 class="display-3 text-white animated slideInDown mb-4">Find
										The Best Startup Job That Fit You</h1>
									<p class="fs-5 fw-medium text-white mb-4 pb-2">Vero elitr
										justo clita lorem. Ipsum dolor at sed stet sit diam no. Kasd
										rebum ipsum et diam justo clita et kasd rebum sea elitr.</p>
									<a href=""
										class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Search
										A Job</a> <a href=""
										class="btn btn-secondary py-md-3 px-md-5 animated slideInRight">Find
										A Talent</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
 
		<!-- Carousel End -->
		<!-- Registration Start -->

		<div style="background-color: #EFFDF5;">
			<br>
			<h1 style="text-align:center;">Register Here !</h1>
			<br>
			<form action="Demo" method="post">
				<table align="center" cellpadding="10">
					<!--------------------- First Name ------------------------------------------>
					<tr>
						<td>First Name</td>
						<td><input type="text" name="FirstName" maxlength="50"
							placeholder="FirstName" /> (Max 50 Char)</td>
					</tr>
					<!------------------------ Last Name --------------------------------------->
					<tr>
						<td>Last Name</td>
						<td><input type="text" name="LastName" maxlength="50"
							placeholder="LastName" /> (Max 50 Char)</td>
					</tr>
					<!-------------------------- Email ID ------------------------------------->
					<tr>
						<td>Email ID</td>
						<td><input type="email" name="EmailID" maxlength="100"
							placeholder="example@gmail.com" /></td>
					</tr>
					<!-------------------------- Mobile Number ------------------------------------->
					<tr>
						<td>Mobile Number</td>
						<td><input type="text" name="MobileNumber" maxlength="12"
							placeholder="7842xxxxxx" /> (10 Digits)</td>
					</tr>
					<!---------------------- Gender ------------------------------------->

					<!--------------------------Date Of Birth----------------------------------->
					<!------------------------- Address ---------------------------------->
					<tr>
						<td>Address<br /> <br /> <br /></td>
						<td><textarea name="Address" rows="10" cols="50"></textarea></td>
					</tr>
					<!-------------------------- City ------------------------------------->
					<tr>
						<td>City</td>
						<td><input type="text" name="City" maxlength="50"
							placeholder="City Name" /> (Max 50 Char)</td>
					</tr>
					<!----- -------------------- Pin Code-------------------------------------->
					<tr>
						<td>Pin Code</td>
						<td><input type="Number" name="PinCode" maxlength="6"
							placeholder="Enter Pin" /> (Max 6 Numbers )</td>
					</tr>
					<!---------------------------- State ----------------------------------->
					<tr>
						<td>State</td>
						<td><input type="text" name="State" maxlength="50"
							placeholder="State" /> (Max 50 Char)</td>
					</tr>
					<!------------------------------ Country --------------------------------->
					<tr>
						<td>Country</td>
						<td><input type="text" name="Country" placeholder="Country" /></td>
					</tr>
					<!------------------------- Hobbies -------------------------------------->
					<tr>
						<td>Hobbies <br /> <br /> <br /></td>
						<td><input type="text" name="Hobby" maxlength="50"
							placeholder="Hobbies" /> (Max 50 Char)</td>
					</tr>
					<!-----------------------Qualification---------------------------------------->
					<tr>
						<td> Highest Qualification <br /> <br /> <br /></td>
						<td><br /> <input type="text" name="Qualification"
							maxlength="50" placeholder="Enter Here" /></td>
					</tr>
					<!---------------------------- Courses ----------------------------------->

					<!----------------------- Submit and Reset ----------------------- -------->
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="Submit"> <%-- <a href="shri.jsp"><input type="submit" class="button_active" value="Submit"></a>--%>
							<%-- <input type="reset" value="Reset">--%></td>
					</tr>
				</table>
			</form>
		</div>
		<!-- Registration End -->





		

		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
			class="bi bi-arrow-up"></i></a>

	

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/wow/wow.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>
	
</body>
</html>