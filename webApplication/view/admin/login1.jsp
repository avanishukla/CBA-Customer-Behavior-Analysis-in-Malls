<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<title>AdminDesigns - A Responsive HTML5 Admin UI Framework</title>
<meta name="keywords"
	content="HTML5 Bootstrap 3 Admin Template UI Theme" />
<meta name="description"
	content="AdminDesigns - A Responsive HTML5 Admin UI Framework">
<meta name="author" content="AdminDesigns">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel='stylesheet' type='text/css'
	href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>

<link rel="stylesheet" type="text/css"
	href="adminResource/css/theme.css">

<link rel="stylesheet" type="text/css"
	href="adminResource/css/admin-forms.css">

<link rel="shortcut icon" href="assets/img/favicon.ico">

<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="adminResource/js/respond.min.js"></script>
    <![endif]-->
</head>
<body class="external-page sb-l-c sb-r-c">

	<div id="main" class="animated fadeIn">

		<section id="content_wrapper">

		<div id="canvas-wrapper">
			<canvas id="demo-canvas"></canvas>
		</div>

		<section id="content">
		<div class="admin-form theme-info" id="login1">
			<div class="row mb15 table-layout">
				
					<div class="login-links">
						<a href="pages_login.html" class="active" title="Sign In">Sign
							In for staff member</a> <span class="text-white">  </span><!--  <a
							href="pages_register.html" class="" title="Register">Register</a> -->
					</div>
				
			</div>
			<div class="panel panel-info mt10 br-n">
				<!-- <div class="panel-heading heading-border bg-white">
					<span class="panel-title hidden"> <i class="fa fa-sign-in"></i>Register
					</span>
					<div class="section row mn">
						<div class="col-sm-4">
							<a href="#"
								class="button btn-social facebook span-left mr5 btn-block">
								<span> <i class="fa fa-facebook"></i>
							</span>Facebook
							</a>
						</div>
						<div class="col-sm-4">
							<a href="#"
								class="button btn-social twitter span-left mr5 btn-block"> <span>
									<i class="fa fa-twitter"></i>
							</span>Twitter
							</a>
						</div>
						<div class="col-sm-4">
							<a href="#"
								class="button btn-social googleplus span-left btn-block"> <span>
									<i class="fa fa-google-plus"></i>
							</span>Google+
							</a>
						</div>
					</div>
				</div> -->

				<form method="post" action="j_spring_security_check" >
					<div class="panel-body bg-light p30">
						<div class="row">
							<div class="col-sm-7 pr30">
								<div class="section row hidden">
									<div class="col-md-4">
										<a href="#"
											class="button btn-social facebook span-left mr5 btn-block">
											<span> <i class="fa fa-facebook"></i>
										</span>Facebook
										</a>
									</div>
									<div class="col-md-4">
										<a href="#"
											class="button btn-social twitter span-left mr5 btn-block">
											<span> <i class="fa fa-twitter"></i>
										</span>Twitter
										</a>
									</div>
									<div class="col-md-4">
										<a href="#"
											class="button btn-social googleplus span-left btn-block">
											<span> <i class="fa fa-google-plus"></i>
										</span>Google+
										</a>
									</div>
								</div>
								<div class="section">
									<label for="username" class="field-label text-muted fs18 mb10">Username</label>
									<label for="username" class="field prepend-icon"> <input type="text" name="username" class="gui-input"
										placeholder="Enter username"> <label for="username"
										class="field-icon"> <i class="fa fa-user"></i>
									</label>
									</label>
								</div>

								<div class="section">
									<label for="username" class="field-label text-muted fs18 mb10">Password</label>
									<label for="password" class="field prepend-icon"> <input
										type="password" name="password"
										class="gui-input" placeholder="Enter password"> <label
										for="password" class="field-icon"> <i
											class="fa fa-lock"></i>
									</label>
									</label>
								</div>

							</div>
							
						</div>
					</div>


					<div class="panel-footer clearfix p10 ph15">
						<button type="submit" class="button btn-primary mr10 pull-right">Sign
							In</button>
						<!-- <label class="switch ib switch-primary pull-left input-align mt10">
							<input type="checkbox" name="remember" id="remember" checked>
							<label for="remember" data-on="YES" data-off="NO"></label> <span>Remember
								me</span>
						</label> -->
					</div>

				</form>
			</div>
		</div>
		</section> </section>

	</div>



	<script src="adminResource/js/jquery-3.1.1.min.js"></script>
	<script src="adminResource/js/jquery-migrate-3.0.0.min.js"></script>
	<script src="adminResource/js/jquery-ui.min.js"></script>

	<script src="adminResource/js/canvasbg.js"></script>

	<script src="adminResource/js/utility.js"></script>
	<!-- <script src="adminResource/js/demo.js"></script>  -->
	<script src="adminResource/js/main.js"></script>

	<script type="text/javascript">
		jQuery(document).ready(function() {

			"use strict";

			// Init Theme Core      
			Core.init();

			// Init Demo JS
			Demo.init();

			// Init CanvasBG and pass target starting location
			CanvasBG.init({
				Loc : {
					x : window.innerWidth / 2,
					y : window.innerHeight / 3.3
				},
			});

		});
	</script>

</body>
</html>
