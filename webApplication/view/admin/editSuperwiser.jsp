<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
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

<link rel="shortcut icon" href="adminResource/images/favicon.ico">

<!--[if lt IE 9]>
    <script src="adminResource/js/html5shiv.js"></script>
    <script src="adminResource/js/respond.min.js"></script>
    <![endif]-->
</head>
<body class="admin-validation-page" data-spy="scroll" data-target="#nav-spy" data-offset="200">

<div id="skin-toolbox">
<div class="panel">
<div class="panel-heading">
<span class="panel-icon">
<i class="fa fa-gear text-primary"></i>
</span>
<span class="panel-title"> Theme Options</span>
</div>
<div class="panel-body pn">
<ul class="nav nav-list nav-list-sm pl15 pt10" role="tablist">
<li class="active">
<a href="#toolbox-header" role="tab" data-toggle="tab">Navbar</a>
</li>
<li>
<a href="#toolbox-sidebar" role="tab" data-toggle="tab">Sidebar</a>
</li>
<li>
<a href="#toolbox-settings" role="tab" data-toggle="tab">Misc</a>
</li>
</ul>
<div class="tab-content p20 ptn pb15">
<div role="tabpanel" class="tab-pane active" id="toolbox-header">
<form id="toolbox-header-skin">
<h4 class="mv20">Header Skins</h4>
<div class="skin-toolbox-swatches">
<div class="checkbox-custom checkbox-disabled fill mb5">
<input type="radio" name="headerSkin" id="headerSkin8" checked value="">
<label for="headerSkin8">Light</label>
</div>
<div class="checkbox-custom fill checkbox-primary mb5">
<input type="radio" name="headerSkin" id="headerSkin1" value="bg-primary">
<label for="headerSkin1">Primary</label>
</div>
<div class="checkbox-custom fill checkbox-info mb5">
<input type="radio" name="headerSkin" id="headerSkin3" value="bg-info">
<label for="headerSkin3">Info</label>
</div>
<div class="checkbox-custom fill checkbox-warning mb5">
<input type="radio" name="headerSkin" id="headerSkin4" value="bg-warning">
<label for="headerSkin4">Warning</label>
</div>
<div class="checkbox-custom fill checkbox-danger mb5">
<input type="radio" name="headerSkin" id="headerSkin5" value="bg-danger">
<label for="headerSkin5">Danger</label>
</div>
<div class="checkbox-custom fill checkbox-alert mb5">
<input type="radio" name="headerSkin" id="headerSkin6" value="bg-alert">
<label for="headerSkin6">Alert</label>
</div>
<div class="checkbox-custom fill checkbox-system mb5">
<input type="radio" name="headerSkin" id="headerSkin7" value="bg-system">
<label for="headerSkin7">System</label>
</div>
<div class="checkbox-custom fill checkbox-success mb5">
<input type="radio" name="headerSkin" id="headerSkin2" value="bg-success">
<label for="headerSkin2">Success</label>
</div>
<div class="checkbox-custom fill mb5">
<input type="radio" name="headerSkin" id="headerSkin9" value="bg-dark">
<label for="headerSkin9">Dark</label>
</div>
</div>
</form>
</div>
<div role="tabpanel" class="tab-pane" id="toolbox-sidebar">
<form id="toolbox-sidebar-skin">
<h4 class="mv20">Sidebar Skins</h4>
<div class="skin-toolbox-swatches">
<div class="checkbox-custom fill mb5">
<input type="radio" name="sidebarSkin" checked id="sidebarSkin3" value="">
<label for="sidebarSkin3">Dark</label>
</div>
<div class="checkbox-custom fill checkbox-disabled mb5">
<input type="radio" name="sidebarSkin" id="sidebarSkin1" value="sidebar-light">
<label for="sidebarSkin1">Light</label>
</div>
<div class="checkbox-custom fill checkbox-light mb5">
<input type="radio" name="sidebarSkin" id="sidebarSkin2" value="sidebar-light light">
<label for="sidebarSkin2">Lighter</label>
</div>
</div>
</form>
</div>
<div role="tabpanel" class="tab-pane" id="toolbox-settings">
<form id="toolbox-settings-misc">
<h4 class="mv20 mtn">Layout Options</h4>
<div class="form-group">
<div class="checkbox-custom fill mb5">
<input type="checkbox" checked="" id="header-option">
<label for="header-option">Fixed Header</label>
</div>
</div>
<div class="form-group">
<div class="checkbox-custom fill mb5">
<input type="checkbox" checked="" id="sidebar-option">
<label for="sidebar-option">Fixed Sidebar</label>
</div>
</div>
<div class="form-group">
<div class="checkbox-custom fill mb5">
<input type="checkbox" id="breadcrumb-option">
<label for="breadcrumb-option">Fixed Breadcrumbs</label>
</div>
</div>
<div class="form-group">
<div class="checkbox-custom fill mb5">
<input type="checkbox" id="breadcrumb-hidden">
<label for="breadcrumb-hidden">Hide Breadcrumbs</label>
</div>
</div>
<h4 class="mv20">Layout Options</h4>
<div class="form-group">
<div class="radio-custom mb5">
<input type="radio" id="fullwidth-option" checked name="layout-option">
<label for="fullwidth-option">Fullwidth Layout</label>
</div>
</div>
<div class="form-group mb20">
<div class="radio-custom radio-disabled mb5">
<input type="radio" id="boxed-option" name="layout-option" disabled>
<label for="boxed-option">Boxed Layout
<b class="text-muted">(Coming Soon)</b>
</label>
</div>
</div>
</form>
</div>
</div>
<div class="form-group mn br-t p15">
<a href="#" id="clearLocalStorage" class="btn btn-primary btn-block pb10 pt10">Clear LocalStorage</a>
</div>
</div>
</div>
</div>


<div id="main">

<jsp:include page="header.jsp"/>

<jsp:include page="menu.jsp"/>

<section id="content_wrapper">

<div id="topbar-dropmenu">
<div class="topbar-menu row">
<div class="col-xs-4 col-sm-2">
<a href="#" class="metro-tile">
<span class="metro-icon glyphicon glyphicon-inbox"></span>
<p class="metro-title">Messages</p>
</a>
</div>
<div class="col-xs-4 col-sm-2">
<a href="#" class="metro-tile">
<span class="metro-icon glyphicon glyphicon-user"></span>
<p class="metro-title">Users</p>
</a>
</div>
<div class="col-xs-4 col-sm-2">
<a href="#" class="metro-tile">
<span class="metro-icon glyphicon glyphicon-headphones"></span>
<p class="metro-title">Support</p>
</a>
</div>
<div class="col-xs-4 col-sm-2">
<a href="#" class="metro-tile">
<span class="metro-icon fa fa-gears"></span>
<p class="metro-title">Settings</p>
</a>
</div>
<div class="col-xs-4 col-sm-2">
<a href="#" class="metro-tile">
<span class="metro-icon glyphicon glyphicon-facetime-video"></span>
<p class="metro-title">Videos</p>
</a>
</div>
<div class="col-xs-4 col-sm-2">
<a href="#" class="metro-tile">
<span class="metro-icon glyphicon glyphicon-picture"></span>
<p class="metro-title">Pictures</p>
</a>
</div>
</div>
</div>


<header id="topbar">
<div class="topbar-left">
<ol class="breadcrumb">
<!-- <li class="crumb-active">
<a href="loadIndex.htm">Dashboard</a>
</li> -->
<li class="crumb-icon">
<!-- <a href="loadIndex.htm">
<span class="glyphicon glyphicon-home"></span>
</a> -->
</li>
<li class="crumb-link">
<a href="loadIndex.htm">Home</a>
</li>
<li class="crumb-trail">Manage Superwiser</li>
</ol>
</div>
<div class="topbar-right">
<div class="ib topbar-dropdown">
<label for="topbar-multiple" class="control-label pr10 fs11 text-muted">Reporting Period</label>
<select id="topbar-multiple" class="hidden">
<optgroup label="Filter By:">
<option value="1-1">Last 30 Days</option>
<option value="1-2" selected="selected">Last 60 Days</option>
<option value="1-3">Last Year</option>
</optgroup>
</select>
</div>
<div class="ml15 ib va-m" id="toggle_sidemenu_r">
<a href="#" class="pl5">
<i class="fa fa-sign-in fs22 text-primary"></i>
<span class="badge badge-hero badge-danger">3</span>
</a>
</div>
</div>
</header>


<section id="content" class="table-layout animated fadeIn">

<div class="tray tray-center">

<div class="content-header">
<h2>Form for Editing Superwiser </h2>
</div>

<div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
<div class="panel heading-border">
<f:form action="updateSuperwiser.htm" modelAttribute="data" method="post"  id="admin-form">
<div class="panel-body bg-light">
<div class="section-divider mt20 mb40">
<span>Update details here</span>
</div>

<f:hidden path="superwiserId"/>
<f:hidden path="slv.superwiserLoginId"/>

<div class="section row" id="spy1">
<div class="col-md-6">
<label class="field prepend-icon">
<f:input type="text" path="superwiserFirstName"  id="firstname" class="gui-input" placeholder="First name..." />
<label  class="field-icon">
<i class="fa fa-user"></i>
</label>
</label>
</div>

<div class="col-md-6">
<label class="field prepend-icon">
<f:input type="text" path="superwiserLastName"  id="lastname" class="gui-input" placeholder="Last name..." />
<label class="field-icon">
<i class="fa fa-user"></i>
</label>
</label>
</div>

</div>

<div class="section">
<label class="field prepend-icon">
<f:input type="email" path="slv.username"  id="useremail" class="gui-input" placeholder="Email address" />
<label class="field-icon">
<i class="fa fa-envelope"></i>
</label>
</label>
</div>

<div class="section">
<label class="field select">
<f:select id="post" path="pv.postId">
<%-- <f:option value="">${list.pv.postName}</f:option> --%>
 <c:forEach var="p" items="${post}" >
	<f:option value="${p.postId}">${p.postName}</f:option>
	</c:forEach>
</f:select>
<i class="arrow double"></i>
</label>
</div>

<div class="section">
<label  class="field prepend-icon">
<f:input type="text" path="superwiserMobileNO"  id="mobile_phone" class="gui-input phone-group" placeholder="Mobile number" />
<label class="field-icon">
<i class="fa fa-mobile-phone"></i>
</label>
</label>

</div>

<!-- <div class="section-divider mv40" id="spy4">
<span> Equal - Matching elements </span>
</div> -->

<div class="section">
<label class="field prepend-icon">
<f:input type="text" path="slv.password"  id="password" class="gui-input" placeholder="Create a password" />
<label class="field-icon">
<i class="fa fa-lock"></i>
</label>
</label>
</div>

<div class="section">
<label for="repeatPassword" class="field prepend-icon">
<input type="password" name="repeatPassword" id="repeatPassword" class="gui-input" placeholder="Repeat Password" >
<label for="repeatPassword" class="field-icon">
<i class="fa fa-unlock-alt"></i>
</label>
</label>
</div>



<div class="panel-footer text-right">
<button type="submit" class="button btn-primary"> Update </button>
<button type="reset" class="button"> Cancel </button>
</div>

</f:form>
</div>
</div>

</div>

</section>


</section>

<aside id="sidebar_right" class="nano affix">

<div class="sidebar-right-content nano-content p15">
<h5 class="title-divider text-muted mb20"> Server Statistics
<span class="pull-right"> 2013
<i class="fa fa-caret-down ml5"></i>
</span>
</h5>
<div class="progress mh5">
<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 44%">
<span class="fs11">DB Request</span>
</div>
</div>
<div class="progress mh5">
<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 84%">
<span class="fs11 text-left">Server Load</span>
</div>
</div>
<div class="progress mh5">
<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 61%">
<span class="fs11 text-left">Server Connections</span>
</div>
</div>
<h5 class="title-divider text-muted mt30 mb10">Traffic Margins</h5>
<div class="row">
<div class="col-xs-5">
<h3 class="text-primary mn pl5">132</h3>
</div>
<div class="col-xs-7 text-right">
<h3 class="text-success-dark mn">
<i class="fa fa-caret-up"></i> 13.2% </h3>
</div>
</div>
<h5 class="title-divider text-muted mt25 mb10">Database Request</h5>
<div class="row">
<div class="col-xs-5">
<h3 class="text-primary mn pl5">212</h3>
</div>
<div class="col-xs-7 text-right">
<h3 class="text-success-dark mn">
<i class="fa fa-caret-up"></i> 25.6% </h3>
</div>
</div>
<h5 class="title-divider text-muted mt25 mb10">Server Response</h5>
<div class="row">
<div class="col-xs-5">
<h3 class="text-primary mn pl5">82.5</h3>
</div>
<div class="col-xs-7 text-right">
<h3 class="text-danger mn">
<i class="fa fa-caret-down"></i> 17.9% </h3>
</div>
</div>
<h5 class="title-divider text-muted mt40 mb20"> Server Statistics
<span class="pull-right text-primary fw600">USA</span>
</h5>
</div>
</aside>

</div>


<style>
    /* demo page styles */
    
    body {
        min-height: 2300px;
    }
    
    .content-header b,
    .admin-form .panel.heading-border:before,
    .admin-form .panel .heading-border:before {
        transition: all 0.7s ease;
    }
    /* responsive demo styles */
    
    @media (max-width: 800px) {
        .admin-form .panel-body {
            padding: 18px 12px;
        }
    }
    </style>

<script src="adminResource/js/jquery-3.1.1.min.js"></script>
<script src="adminResource/js/jquery-migrate-3.0.0.min.js"></script>
<script src="adminResource/js/jquery-ui.min.js"></script>

<script src="adminResource/js/jquery.validate.min.js"></script>

<script src="adminResource/js/additional-methods.min.js"></script>

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

        /* @custom validation method (smartCaptcha) 
        ------------------------------------------------------------------ */

        $.validator.methods.smartCaptcha = function(value, element, param) {
            return value == param;
        };

        $("#admin-form").validate({

            /* @validation states + elements 
            ------------------------------------------- */

            errorClass: "state-error",
            validClass: "state-success",
            errorElement: "em",

            /* @validation rules 
            ------------------------------------------ */

            rules: {
                firstname: {
                    required: true
                },
                lastname: {
                    required: true
                },
                useremail: {
                    required: true,
                    email: true
                },
                
                post: {
                    required: true
                },
                
                mobileos: {
                    required: true
                },
                comment: {
                    required: true,
                    minlength: 30
                },
                mobile_phone: {
                    required: true
                },
                password: {
                    required: true,
                    minlength: 6,
                    maxlength: 16
                },
                repeatPassword: {
                    required: true,
                    minlength: 6,
                    maxlength: 16,
                    equalTo: '#password'
                },
               
            },

            /* @validation error messages 
            ---------------------------------------------- */

            messages: {
                firstname: {
                    required: 'Enter first name'
                },
                lastname: {
                    required: 'Enter last name'
                },
                useremail: {
                    required: 'Enter email address',
                    email: 'Enter a VALID email address'
                },
                
                post: {
                    required: 'Choose a post'
                },
               
                mobile_phone: {
                    require_from_group: 'Fill at least a mobile contact'
                },
                
                password: {
                    required: 'Please enter a password'
                },
                repeatPassword: {
                    required: 'Please repeat the above password',
                    equalTo: 'Password mismatch detected'
                },
                

            },

            /* @validation highlighting + error placement  
            ---------------------------------------------------- */

            highlight: function(element, errorClass, validClass) {
                $(element).closest('.field').addClass(errorClass).removeClass(validClass);
            },
            unhighlight: function(element, errorClass, validClass) {
                $(element).closest('.field').removeClass(errorClass).addClass(validClass);
            },
            errorPlacement: function(error, element) {
                if (element.is(":radio") || element.is(":checkbox")) {
                    element.closest('.option-group').after(error);
                } else {
                    error.insertAfter(element.parent());
                }
            }

        });

        // Cache several DOM elements
        var pageHeader = $('.content-header').find('b');
        var adminForm = $('.admin-form');
        var options = adminForm.find('.option');
        var switches = adminForm.find('.switch');
        var buttons = adminForm.find('.button');
        var Panel = adminForm.find('.panel');

        // Form Skin Switcher
        $('#skin-switcher a').on('click', function() {
            var btnData = $(this).data('form-skin');

            $('#skin-switcher a').removeClass('item-active');
            $(this).addClass('item-active')

            adminForm.each(function(i, e) {
                var skins = 'theme-primary theme-info theme-success theme-warning theme-danger theme-alert theme-system theme-dark'
                var panelSkins = 'panel-primary panel-info panel-success panel-warning panel-danger panel-alert panel-system panel-dark'
                $(e).removeClass(skins).addClass('theme-' + btnData);
                Panel.removeClass(panelSkins).addClass('panel-' + btnData);
                pageHeader.removeClass().addClass('text-' + btnData);
            });

            $(options).each(function(i, e) {
                if ($(e).hasClass('block')) {
                    $(e).removeClass().addClass('block mt15 option option-' + btnData);
                } else {
                    $(e).removeClass().addClass('option option-' + btnData);
                }
            });

            // var sliders = $('.ui-timepicker-div', adminForm).find('.ui-slider');
            $('body').find('.ui-slider').each(function(i, e) {
                $(e).addClass('slider-primary');
            });

            $(switches).each(function(i, ele) {
                if ($(ele).hasClass('switch-round')) {
                    if ($(ele).hasClass('block')) {
                        $(ele).removeClass().addClass('block mt15 switch switch-round switch-' + btnData);
                    } else {
                        $(ele).removeClass().addClass('switch switch-round switch-' + btnData);
                    }
                } else {
                    if ($(ele).hasClass('block')) {
                        $(ele).removeClass().addClass('block mt15 switch switch-' + btnData);
                    } else {
                        $(ele).removeClass().addClass('switch switch-' + btnData);
                    }
                }

            });
            buttons.removeClass().addClass('button btn-' + btnData);
        });

        setTimeout(function() {
            adminForm.addClass('theme-primary');
            Panel.addClass('panel-primary');
            pageHeader.addClass('text-primary');

            $(options).each(function(i, e) {
                if ($(e).hasClass('block')) {
                    $(e).removeClass().addClass('block mt15 option option-primary');
                } else {
                    $(e).removeClass().addClass('option option-primary');
                }
            });

            // var sliders = $('.ui-timepicker-div', adminForm).find('.ui-slider');
            $('body').find('.ui-slider').each(function(i, e) {
                $(e).addClass('slider-primary');
            });

            $(switches).each(function(i, ele) {
                if ($(ele).hasClass('switch-round')) {
                    if ($(ele).hasClass('block')) {
                        $(ele).removeClass().addClass('block mt15 switch switch-round switch-primary');
                    } else {
                        $(ele).removeClass().addClass('switch switch-round switch-primary');
                    }
                } else {
                    if ($(ele).hasClass('block')) {
                        $(ele).removeClass().addClass('block mt15 switch switch-primary');
                    } else {
                        $(ele).removeClass().addClass('switch switch-primary');
                    }
                }
            });
            buttons.removeClass().addClass('button btn-primary');
        }, 800);

    });
    </script>

</body>
</html>
