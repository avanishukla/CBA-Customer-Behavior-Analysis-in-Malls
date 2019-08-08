<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<title>AdminDesigns - A Responsive HTML5 Admin UI Framework</title>
<meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
<meta name="description" content="AdminDesigns - A Responsive HTML5 Admin UI Framework">
<meta name="author" content="AdminDesigns">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600'>

<link rel="stylesheet" type="text/css" href="adminResource/css/theme.css">

<link rel="stylesheet" type="text/css" href="adminResource/css/admin-forms.css">

<link rel="shortcut icon" href="adminResouece/image/favicon.ico">

<!--[if lt IE 9]>
    <script src="adminResource/js/html5shiv.js"></script>
    <script src="adminResource/js/respond.min.js"></script>
    <![endif]-->
</head>
<body class="dashboard-page sb-l-o sb-r-c">




<div id="main">


 <jsp:include page="header.jsp"/>

<jsp:include page="menu.jsp"/> 




<section id="content_wrapper">


<div id="topbar-dropmenu">
<div class="topbar-menu row">
<div class="col-xs-4 col-sm-2">
<a href="#" class="metro-tile">
<span class="glyphicon glyphicon-inbox"></span>
<span class="metro-title">Messages</span>
</a>
</div>
<div class="col-xs-4 col-sm-2">
<a href="#" class="metro-tile">
<span class="glyphicon glyphicon-user"></span>
<span class="metro-title">Users</span>
</a>
</div>
<div class="col-xs-4 col-sm-2">
<a href="#" class="metro-tile">
<span class="glyphicon glyphicon-headphones"></span>
<span class="metro-title">Support</span>
</a>
</div>
<div class="col-xs-4 col-sm-2">
<a href="#" class="metro-tile">
<span class="fa fa-gears"></span>
<span class="metro-title">Settings</span>
</a>
</div>
<div class="col-xs-4 col-sm-2">
<a href="#" class="metro-tile">
<span class="glyphicon glyphicon-facetime-video"></span>
<span class="metro-title">Videos</span>
</a>
</div>
<div class="col-xs-4 col-sm-2">
<a href="#" class="metro-tile">
<span class="glyphicon glyphicon-picture"></span>
<span class="metro-title">Pictures</span>
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
<!-- <li class="crumb-trail">Manage Post</li> -->
</ol>
</div>
<!-- <div class="topbar-right">
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
<span class="badge badge-danger badge-hero">3</span>
</a>
</div>
</div> -->

<div class="topbar-right">
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
< </div>
 </div>

</div>
</header>




<section id="content" class="animated fadeIn">

<div class="row mb10">
<div class="col-sm-6 col-md-3">
<div class="panel bg-alert light of-h mb10">
<div class="pn pl20 p5">
<div class="icon-bg">
<i class="fa fa-users fa-xs"></i>
</div>
<h2 class="mt15 lh15">
<b>${sessionScope.staffList}</b>
</h2>
<h5 class="text-muted">Staff</h5>
</div>
</div>
</div>
<div class="col-sm-6 col-md-3">
<div class="panel bg-info light of-h mb10">
<div class="pn pl20 p5">
<div class="icon-bg">
<i class="fa fa-film "></i>
</div>
<h2 class="mt15 lh15">
<b>${sessionScope.videoList}</b>
</h2>
<h5 class="text-muted">Video</h5>
</div>
</div>
</div>
<div class="col-sm-6 col-md-3">
<div class="panel bg-danger light of-h mb10">
<div class="pn pl20 p5">
<div class="icon-bg">
<i class="fa fa-shopping-cart "></i>
</div>
<h2 class="mt15 lh15">
<b>${sessionScope.productList}</b>
</h2>
<h5 class="text-muted">Product</h5>
</div>
</div>
</div>
<div class="col-sm-6 col-md-3">
<div class="panel bg-warning light of-h mb10">
<div class="pn pl20 p5">
<div class="icon-bg">
<i class="fa fa-film fa-xs"></i>
</div>
<h2 class="mt15 lh15">
<b>${sessionScope.outputList}</b>
</h2>
<h5 class="text-muted">Analyzed Video</h5>
</div>
</div>
</div>
</div>

<div class="admin-panels fade-onload"><center>
<img alt="Sample Graph" src="checkExpression/image/WIN_20180405_12_08_40_Pro_video_graph.jpg">
<img alt="Sample Graph" src="checkExpression/image/WIN_20180405_12_08_46_Pro_video_graph.jpg"></center>

</div>
</section>


<jsp:include page="footer.jsp"/>

</section>



</aside>

</div>



<script src="adminResource/js/jquery-3.1.1.min.js"></script>
<script src="adminResource/js/jquery-migrate-3.0.0.min.js"></script>
<script src="adminResource/js/jquery-ui.min.js"></script>

<script src="adminResource/js/highcharts.js"></script>

<script src="adminResource/js/jquery.sparkline.min.js"></script>

<script src="adminResource/js/circles.js"></script>

<script src="adminResource/js/jquery.jvectormap.min.js"></script>
<script src="adminResource/js/jquery-jvectormap-us-lcc-en.js"></script>

<script src="adminResource/js/utility.js"></script>
<script src="adminResource/js/demo.js"></script>
<script src="adminResource/js/main.js"></script>

<script src="adminResource/js/widgets.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {

        "use strict";

        // Init Theme Core      
        Core.init();

        // Init Demo JS
        Demo.init();

        // Init Widget Demo JS
        // demoHighCharts.init();

        // Because we are using Admin Panels we use the OnFinish 
        // callback to activate the demoWidgets. It's smoother if
        // we let the panels be moved and organized before 
        // filling them with content from various plugins

        // Init plugins used on this page
        // HighCharts, JvectorMap, Admin Panels

        // Init Admin Panels on widgets inside the ".admin-panels" container
        $('.admin-panels').adminpanel({
            grid: '.admin-grid',
            draggable: true,
            preserveGrid: true,
            mobile: false,
            onStart: function() {
                // Do something before AdminPanels runs
            },
            onFinish: function() {
                $('.admin-panels').addClass('animated fadeIn').removeClass('fade-onload');

                // Init the rest of the plugins now that the panels
                // have had a chance to be moved and organized.
                // It's less taxing to organize empty panels
                setTimeout(function() {
                    runVectorMaps(); // function below
                    demoHighCharts.init();
                },300)

            },
            onSave: function() {
                $(window).trigger('resize');
            }
        });

        // Widget VectorMap
        function runVectorMaps() {

            // Jvector Map Plugin
            var runJvectorMap = function() {
                // Data set
                var mapData = [900, 700, 350, 500];
                // Init Jvector Map
                $('#WidgetMap').vectorMap({
                    map: 'us_lcc_en',
                    //regionsSelectable: true,
                    backgroundColor: 'transparent',
                    series: {
                        markers: [{
                            attribute: 'r',
                            scale: [3, 7],
                            values: mapData
                        }]
                    },
                    regionStyle: {
                        initial: {
                            fill: '#E5E5E5'
                        },
                        hover: {
                            "fill-opacity": 0.3
                        }
                    },
                    markers: [{
                        latLng: [37.78, -122.41],
                        name: 'San Francisco,CA'
                    }, {
                        latLng: [36.73, -103.98],
                        name: 'Texas,TX'
                    }, {
                        latLng: [38.62, -90.19],
                        name: 'St. Louis,MO'
                    }, {
                        latLng: [40.67, -73.94],
                        name: 'New York City,NY'
                    }],
                    markerStyle: {
                        initial: {
                            fill: '#a288d5',
                            stroke: '#b49ae0',
                            "fill-opacity": 1,
                            "stroke-width": 10,
                            "stroke-opacity": 0.3,
                            r: 3
                        },
                        hover: {
                            stroke: 'black',
                            "stroke-width": 2
                        },
                        selected: {
                            fill: 'blue'
                        },
                        selectedHover: {}
                    },
                });
                // Manual code to alter the Vector map plugin to 
                // allow for individual coloring of countries
                var states = ['US-CA', 'US-TX', 'US-MO',
                    'US-NY'
                ];
                var colors = [bgWarningLr, bgPrimaryLr, bgInfoLr, bgAlertLr];
                var colors2 = [bgWarning, bgPrimary, bgInfo, bgAlert];
                $.each(states, function(i, e) {
                    $("#WidgetMap path[data-code=" + e + "]").css({
                        fill: colors[i]
                    });
                });
                $('#WidgetMap').find('.jvectormap-marker')
                    .each(function(i, e) {
                        $(e).css({
                            fill: colors2[i],
                            stroke: colors2[i]
                        });
                    });
            }

            if ($('#WidgetMap').length) {
                runJvectorMap();
            }
        }

    });
    </script>

</body>
</html>
