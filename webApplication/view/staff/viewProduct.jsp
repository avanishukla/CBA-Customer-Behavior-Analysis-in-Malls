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

<link rel="stylesheet" type="text/css" href="adminResource/css/datatables.min.css">
<link rel="stylesheet" type="text/css" href="adminResource/css/datatables_addons.min.css">

<link rel="stylesheet" type="text/css" href="adminResource/css/theme.css">

<link rel="shortcut icon" href="assets/img/favicon.ico">

<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="adminResource/js/respond.min.js"></script>
    <![endif]-->
</head>
<body class="datatables-page" data-spy="scroll" data-target="#nav-spy" data-offset="300">

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

<jsp:include page="menu1.jsp"/>

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
<li class="crumb-trail">Manage Product</li>
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
<div class="row">

<div class="col-md-12">
<div class="panel panel-visible" id="spy2">
<div class="panel-heading">
<div class="panel-title hidden-xs">
<span class="glyphicon glyphicon-tasks"></span>Search Bar Filtering</div>
</div>
<div class="panel-heading">
<div class="panel-title hidden-xs">
<span class="glyphicon glyphicon-tasks"></span><a href="loadAddProduct1.htm">Add product</a></div>
</div>
<table class="table table-striped table-hover" id="datatable2" cellspacing="0" width="100%">
<thead>
<tr>
<th>Product Id</th>
<th>Product Name</th>
<th>Product Description</th>
<th>Action</th>
<th></th>
</tr>
</thead>
<tbody>
<c:forEach var="list" items="${productList}">
<tr>
<td>${list.productId}</td>
<td>${list.productName}</td>
<td>${list.productDescription}</td>
<td><a href="editProduct1.htm?productId=${list.productId}&&productName=${list.productName}&&productDescription=${list.productDescription}">Edit</a>/<a href="deleteProduct1.htm?productId=${list.productId}&&productName=${list.productName}&&productDescription=${list.productDescription}">Delete</a></td>
<td><a href="loadAnalysis1.htm?productId=${list.productId}"><input type="button" value="Start Analysis" ></a></td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
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



<script src="adminResource/js/jquery-3.1.1.min.js"></script>
<script src="adminResource/js/jquery-migrate-3.0.0.min.js"></script>
<script src="adminResource/js/jquery-ui.min.js"></script>

<script src="adminResource/js/datatables.min.js"></script>

<script src="adminResource/js/datatables_addons.min.js"></script>
<script src="adminResource/js/datatables_editor.min.js"></script>



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

        // Init DataTables
        $('#datatable').DataTable({
            // dom: "Bfrtip",
            // dom: "rtip",
            dom: 'rt<"bottom"p>'
            // select: true
            // buttons: [{
            //         extend: "create",
            //         editor: editor
            //     }, {
            //         extend: "edit",
            //         editor: editor
            //     }, {
            //         extend: "remove",
            //         editor: editor
            // }]
            // "sDom": 't<"dt-panelfooter clearfix"ip>',
            // "oTableTools": {
            //     "sSwfPath": "vendor/plugins/datatables/extensions/TableTools/swf/copy_csv_xls_pdf.swf"
            // }
        });

        $('#datatable2').dataTable({
            // dom: "Bfrtip",
            // dom: "rtip",
            dom: '<"top"fl>rt<"bottom"ip>'
            // select: true
        });

        $('#datatable3').dataTable({
            dom: '<"top"Bf>rt<"bottom"ip>',
            buttons: [ 'copy', 'excel', 'pdf', 'csv', 'print' ]
            // select: true
            // "aoColumnDefs": [{
            //     'bSortable': false,
            //     'aTargets': [-1]
            // }],
            // "oLanguage": {
            //     "oPaginate": {
            //         "sPrevious": "",
            //         "sNext": ""
            //     }
            // },
            // "iDisplayLength": 5,
            // "aLengthMenu": [
            //     [5, 10, 25, 50, -1],
            //     [5, 10, 25, 50, "All"]
            // ],
            // "sDom": '<"dt-panelmenu clearfix"Tfr>t<"dt-panelfooter clearfix"ip>',
            // "oTableTools": {
            //     "sSwfPath": "vendor/plugins/datatables/extensions/TableTools/swf/copy_csv_xls_pdf.swf"
            // }
        });

        // $('#datatable4').dataTable({
        //     "aoColumnDefs": [{
        //         'bSortable': false,
        //         'aTargets': [-1]
        //     }],
        //     "oLanguage": {
        //         "oPaginate": {
        //             "sPrevious": "",
        //             "sNext": ""
        //         }
        //     },
        //     "iDisplayLength": 5,
        //     "aLengthMenu": [
        //         [5, 10, 25, 50, -1],
        //         [5, 10, 25, 50, "All"]
        //     ],
        //     "sDom": 'T<"panel-menu dt-panelmenu"lfr><"clearfix">tip',

        //     "oTableTools": {
        //         "sSwfPath": "vendor/plugins/datatables/extensions/TableTools/swf/copy_csv_xls_pdf.swf"
        //     }
        // });

        // // Multi-Column Filtering
        // $('#datatable5 thead th').each(function() {
        //     var title = $('#datatable5 tfoot th').eq($(this).index()).text();
        //     $(this).html('<input type="text" class="form-control" placeholder="Search ' + title + '" />');
        // });

        // // DataTable
        // var table5 = $('#datatable5').DataTable({
        //     "sDom": 't<"dt-panelfooter clearfix"ip>',
        //     "ordering": false
        // });

        // // Apply the search
        // table5.columns().eq(0).each(function(colIdx) {
        //     $('input', table5.column(colIdx).header()).on('keyup change', function() {
        //         table5
        //             .column(colIdx)
        //             .search(this.value)
        //             .draw();
        //     });
        // });

        // ABC FILTERING
        var table6 = $('#datatable6').DataTable({
            // dom: 't<"dt-panelfooter clearfix"ip>',
            dom: 'rt<"bottom pv10"ip>',
            "ordering": false
        });

        var alphabet = $('<div class="dt-abc-filter"/>').append('<span class="abc-label">Search: </span> ');
        var columnData = table6.column(0).data();
        var bins = bin(columnData);

        $('<span class="active"/>')
            .data('letter', '')
            .data('match-count', columnData.length)
            .html('None')
            .appendTo(alphabet);

        for (var i = 0; i < 26; i++) {
            var letter = String.fromCharCode(65 + i);

            $('<span/>')
                .data('letter', letter)
                .data('match-count', bins[letter] || 0)
                .addClass(!bins[letter] ? 'empty' : '')
                .html(letter)
                .appendTo(alphabet);
        }

        $('#datatable6').parents('.panel').find('.panel-menu').addClass('dark').html(alphabet);

        alphabet.on('click', 'span', function() {
            alphabet.find('.active').removeClass('active');
            $(this).addClass('active');

            _alphabetSearch = $(this).data('letter');
            table6.draw();
        });

        var info = $('<div class="alphabetInfo"></div>')
            .appendTo(alphabet);

        var _alphabetSearch = '';

        $.fn.dataTable.ext.search.push(function(settings, searchData) {
            if (!_alphabetSearch) {
                return true;
            }
            if (searchData[0].charAt(0) === _alphabetSearch) {
                return true;
            }
            return false;
        });

        function bin(data) {
            var letter, bins = {};
            for (var i = 0, ien = data.length; i < ien; i++) {
                letter = data[i].charAt(0).toUpperCase();

                if (bins[letter]) {
                    bins[letter]++;
                } else {
                    bins[letter] = 1;
                }
            }
            return bins;
        }

        // // ROW GROUPING
        // var table7 = $('#datatable7').DataTable({
        //     "columnDefs": [{
        //         "visible": false,
        //         "targets": 2
        //     }],
        //     "order": [
        //         [2, 'asc']
        //     ],
        //     "sDom": 't<"dt-panelfooter clearfix"ip>',
        //     "displayLength": 25,
        //     "drawCallback": function(settings) {
        //         var api = this.api();
        //         var rows = api.rows({
        //             page: 'current'
        //         }).nodes();
        //         var last = null;

        //         api.column(2, {
        //             page: 'current'
        //         }).data().each(function(group, i) {
        //             if (last !== group) {
        //                 $(rows).eq(i).before(
        //                     '<tr class="row-label ' + group.replace(/ /g, '').toLowerCase() + '"><td colspan="5">' + group + '</td></tr>'
        //                 );
        //                 last = group;
        //             }
        //         });
        //     }
        // });

        // // Order by the grouping
        // $('#datatable7 tbody').on('click', 'tr.row-label', function() {
        //     var currentOrder = table7.order()[0];
        //     if (currentOrder[0] === 2 && currentOrder[1] === 'asc') {
        //         table7.order([2, 'desc']).draw();
        //     } else {
        //         table7.order([2, 'asc']).draw();
        //     }
        // });

        // $('#datatable8').DataTable({
        //     "sDom": 'Rt<"dt-panelfooter clearfix"ip>',
        // });

        // // COLLAPSIBLE ROWS
        // function format(d) {
        //     // `d` is the original data object for the row
        //     return '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">' +
        //         '<tr>' +
        //         '<td class="fw600 pr10">Full name:</td>' +
        //         '<td>' + d.name + '</td>' +
        //         '</tr>' +
        //         '<tr>' +
        //         '<td class="fw600 pr10">Extension:</td>' +
        //         '<td>' + d.extn + '</td>' +
        //         '</tr>' +
        //         '<tr>' +
        //         '<td class="fw600 pr10">Extra info:</td>' +
        //         '<td>And any further details here (images etc)...</td>' +
        //         '</tr>' +
        //         '</table>';
        // }

        // var table = $('#datatable9').DataTable({
        //     "sDom": 'Rt<"dt-panelfooter clearfix"ip>',
        //     "ajax": "vendor/plugins/datatables/examples/data_sources/objects.txt",
        //     "columns": [{
        //         "className": 'details-control',
        //         "orderable": false,
        //         "data": null,
        //         "defaultContent": ''
        //     }, {
        //         "data": "name"
        //     }, {
        //         "data": "position"
        //     }, {
        //         "data": "office"
        //     }, {
        //         "data": "salary"
        //     }],
        //     "order": [
        //         [1, 'asc']
        //     ]
        // });

        // // Add event listener for opening and closing details
        // $('#datatable9 tbody').on('click', 'td.details-control', function() {
        //     var tr = $(this).closest('tr');
        //     var row = table.row(tr);

        //     if (row.child.isShown()) {
        //         // This row is already open - close it
        //         row.child.hide();
        //         tr.removeClass('shown');
        //     } else {
        //         // Open this row
        //         row.child(format(row.data())).show();
        //         tr.addClass('shown');
        //     }
        // });

        // // MISC DATATABLE HELPER FUNCTIONS

        // // Add Placeholder text to datatables filter bar
        // $('.dataTables_filter input').attr("placeholder", "Enter Terms...");

    });
    </script>

</body>
</html>
