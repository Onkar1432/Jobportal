<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
.Loginpage {
	text-align: center;
}

.wrapper {
	position: relative;
	max-width: 430px;
	width: 100%;
	background: #00FA9A;
	padding: 34px;
	border-radius: 6px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}

.wrapper h2 {
	position: relative;
	font-size: 22px;
	font-weight: 600;
	color: #333;
}

.wrapper h2::before {
	content: '';
	position: absolute;
	left: 0;
	bottom: 0;
	height: 3px;
	width: 28px;
	border-radius: 12px;
	background: #4070f4;
}

.wrapper form {
	margin-top: 30px;
}

.wrapper form .input-box {
	height: 52px;
	margin: 18px 0;
}

form .input-box input {
	height: 100%;
	width: 100%;
	outline: none;
	padding: 0 15px;
	font-size: 17px;
	font-weight: 400;
	color: #333;
	border: 1.5px solid #C7BEBE;
	border-bottom-width: 2.5px;
	border-radius: 6px;
	transition: all 0.3s ease;
}

.input-box input:focus, .input-box input:valid {
	border-color: #4070f4;
}

form .policy {
	display: flex;
	align-items: center;
}

form h3 {
	color: #707070;
	font-size: 14px;
	font-weight: 500;
	margin-left: 10px;
}

.input-box.button input {
	color: #fff;
	letter-spacing: 1px;
	border: none;
	background: #4070f4;
	cursor: pointer;
}

.input-box.button input:hover {
	background: #0e4bf1;
}

form .text h3 {
	color: #333;
	width: 100%;
	text-align: center;
}

form .text h3 a {
	color: #4070f4;
	text-decoration: none;
}

form .text h3 a:hover {
	text-decoration: underline;
}
</style>
<div class="container-xxl bg-white p-0">


	<!-- Navbar Start -->
	<nav
		class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
		<a href="index.html"
			class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5">
			<h1 class="m-0 text-primary">JobEntry</h1>
		</a>
		<button type="button" class="navbar-toggler me-4"
			data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<div class="navbar-nav ms-auto p-4 p-lg-0"></div>
			<a href=""
				class="btn btn-primary rounded-0 py-4 px-lg-5 d-none d-lg-block">Post
				A Job<i class="fa fa-arrow-right ms-3"></i>
			</a>
		</div>
	</nav>
</div>
<!-- Navbar End -->
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
<br>
<!-- Carousel End -->
<!-- Login Start -->


<!--  <h2>Registration</h2> -->
<div class="Loginpage">
	<div class="wrapper">

		<form action="Operation.jsp" method="post">
			<div class="input-box">
				<input type="text" name="Name" placeholder="Enter Username" required>
			</div>
			<!-- <div class="input-box">
				<input type="text" name = "Email"placeholder="Enter your email" required>
			</div>-->
			<div class="input-box">
				<input type="password" name="Password" placeholder="Enter Password"
					required>
					
			</div>
			<%-- <div class="input-box">
				<input type="password" placeholder="Confirm password" required>
			</div> 
			<div class="policy">
				<input type="checkbox">
				<h3>I accept all terms & condition</h3>
			</div>--%>
			<div class="input-box button">
				<input type="Submit" value="Log In">
			</div>
			<%--<div class="text">
				<h3>
					Already have an account? <a href="#">Login now</a>
				</h3>
			</div>--%>
		</form>
		<p>Forgot Password?</p>
		<a href="Registration.jsp">
			<p class="">Create new JobEntry account</p>
		</a>
	</div>
</div>