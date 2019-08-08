<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta charset="utf-8">
<title>AdminDesigns - A Responsive HTML5 Admin UI Framework</title>
<meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
<meta name="description" content="AdminDesigns - A Responsive HTML5 Admin UI Framework">
<meta name="author" content="AdminDesigns">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>

<link rel="stylesheet" type="text/css" href="adminResource/css/theme.css">

<link rel="stylesheet" type="text/css" href="adminResource/css/admin-forms.css">

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

<section id="content" class="">
<div class="admin-form theme-info mw700" style="margin-top: 3%;" id="login1">
<div class="row mb15 table-layout">
<div class="col-xs-6 va-m pln">
<a href="loadIndex.htm" title="Return to Dashboard">
<img src="adminResource/image/logo_white.png" title="AdminDesigns Logo" class="img-responsive w250">
</a>
</div>
<div class="col-xs-6 text-right va-b pr5">
<div class="login-links">
<a href="pages_login.html" class="" title="Sign In">Sign In</a>
<span class="text-white"> | </span>
<a href="pages_register.html" class="active" title="Register">Register</a>
</div>
</div>
</div>
<div class="panel panel-info mt10 br-n">
<div class="panel-heading heading-border bg-white">
<div class="section row mn">
<div class="col-sm-4">
<a href="#" class="button btn-social facebook span-left mr5 btn-block">
<span>
<i class="fa fa-facebook"></i>
</span>Facebook</a>
</div>
<div class="col-sm-4">
<a href="#" class="button btn-social twitter span-left mr5 btn-block">
<span>
<i class="fa fa-twitter"></i>
</span>Twitter</a>
</div>
<div class="col-sm-4">
<a href="#" class="button btn-social googleplus span-left btn-block">
<span>
<i class="fa fa-google-plus"></i>
</span>Google+</a>
</div>
</div>
</div>
<form method="post" action="/" id="account2">
<div class="panel-body p25 bg-light">
<div class="section-divider mt10 mb40">
<span>Set up your account</span>
</div>

<div class="section row">
<div class="col-md-6">
<label for="firstname" class="field prepend-icon">
<input type="text" name="firstname" id="firstname" class="gui-input" placeholder="First name...">
<label for="firstname" class="field-icon">
<i class="fa fa-user"></i>
</label>
</label>
</div>

<div class="col-md-6">
<label for="lastname" class="field prepend-icon">
<input type="text" name="lastname" id="lastname" class="gui-input" placeholder="Last name...">
<label for="lastname" class="field-icon">
<i class="fa fa-user"></i>
</label>
</label>
</div>

</div>

<div class="section">
<label for="email" class="field prepend-icon">
<input type="email" name="email" id="email" class="gui-input" placeholder="Email address">
<label for="email" class="field-icon">
<i class="fa fa-envelope"></i>
</label>
</label>
</div>

<div class="section">
<div class="smart-widget sm-right smr-120">
<label for="username" class="field prepend-icon">
<input type="text" name="username" id="username" class="gui-input" placeholder="Choose your username">
<label for="username" class="field-icon">
<i class="fa fa-user"></i>
</label>
</label>
<label for="username" class="button">.envato.com</label>
</div>

</div>

<div class="section">
<label for="password" class="field prepend-icon">
<input type="password" name="password" id="password" class="gui-input" placeholder="Create a password">
<label for="password" class="field-icon">
<i class="fa fa-unlock-alt"></i>
</label>
</label>
 </div>

<div class="section">
<label for="confirmPassword" class="field prepend-icon">
<input type="password" name="confirmPassword" id="confirmPassword" class="gui-input" placeholder="Retype your password">
<label for="confirmPassword" class="field-icon">
<i class="fa fa-lock"></i>
</label>
</label>
</div>

<div class="section-divider mv40">
<span>Review the Terms</span>
</div>

<div class="section mb15">
<label class="option block">
<input type="checkbox" name="trial">
<span class="checkbox"></span>Sign me up for a
<a href="#" class="theme-link"> 7-day free PRO trial. </a>
</label>
<label class="option block mt15">
<input type="checkbox" name="terms">
<span class="checkbox"></span>I agree to the
<a href="#" class="theme-link"> terms of use. </a>
</label>
</div>

</div>

<div class="panel-footer clearfix">
<button type="submit" class="button btn-primary pull-right">Create Account</button>
</div>

</form>
</div>
</div>
</section>

</section>

</div>



<script src="adminResource/js/jquery-3.1.1.min.js"></script>
<script src="adminResource/js/jquery-migrate-3.0.0.min.js"></script>
<script src="adminResource/js/jquery-ui.min.js"></script>

<script src="adminResource/js/canvasbg.js"></script>

<script src="adminResource/js/utility.js"></script>
<script src="adminResource/js/demo.js"></script>
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
            Loc: {
                x: window.innerWidth / 2.1,
                y: window.innerHeight / 4.2
            },
        });
    });
    </script>

</body>
</html>
