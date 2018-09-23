<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 //EN">
<html lang="zh_CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Unicenter">

    <!-- Font Awesome fonts -->
    <link rel="stylesheet" href="${ctx}/css/font-awesome.min.css">

    <!-- Bootstrap core CSS  Bootstrap核心样式表 -->
    <link href="${ctx}/css/bootstrap.min.css" rel="stylesheet">


    <!-- Bootstrap Material Design -->
    <link href="${ctx}/css/vendor/bootstrap-material-design.css" rel="stylesheet">
    <link href="${ctx}/css/vendor/ripples.min.css" rel="stylesheet">

    <!-- Dropdown.js -->
    <link href="${ctx}/css/vendor/jquery.dropdown.css" rel="stylesheet">

    <!-- Custom styles for this template  自定义样式 -->
    <link href="${ctx}/css/unicenter.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="${ctx}/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="${ctx}/js/vendor/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries使IE8能够支持HTML5元素和媒体文件 -->

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body contextPath="${ctx}">

<noscript>您的浏览器禁用了JavaScript，请允许JavaScript运行！</noscript>
<nav class="navbar navbar-default  navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <%--<a class="navbar-brand" href="#">Unicenter</a>--%>
        <a class="navbar-brand" href="${ctx}/clients/login">
            <img src="${ctx}/img/logo.png" alt="ksyc" title="logo"/>
        </a>
    </div>

    <!-- /.navbar-header -->

</nav> <!-- nav -->

<div class="container">
</div>
<script src="${ctx}/js/vendor/jquery.min.js"></script>
<script src="${ctx}/js/vendor/bootstrap.min.js"></script>

<!-- Material Design for Bootstrap -->
<script src="${ctx}/js/vendor/material.js"></script>
<!-- Material Design的动画效果-->
<script src="${ctx}/js/vendor/ripples.min.js"></script>

<!-- Sliders 小巧的jquery区域范围滑块插件-->
<script src="${ctx}/js/vendor/jquery.nouislider.min.js"></script>
<!-- Dropdown.js一个简单的下拉列表效果插件 -->
<script src="${ctx}/js/vendor/jquery.dropdown.js"></script>

<script type="text/javascript" src="${ctx}/js/metisMenu.min.js"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="${ctx}/js/vendor/ie10-viewport-bug-workaround.js"></script>


<script src="${ctx}/js/unicenter.simple.min.js"></script>
</body>
</html>