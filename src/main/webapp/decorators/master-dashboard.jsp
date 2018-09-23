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

    <!--Metis Menu-->
    <link href="${ctx}/css/metisMenu.min.css" rel="stylesheet">

    <!-- Custom styles for this template  自定义样式 -->
    <link href="${ctx}/css/unicenter.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="${ctx}/js/vendor/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="${ctx}/js/vendor/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries使IE8能够支持HTML5元素和媒体文件 -->

    <!--[if lt IE 9]>
    <script src="${ctx}/js/vendor/html5shiv.min.js"></script>
    <script src="${ctx}/js/vendor/respond.min.js"></script>
    <![endif]-->

    <decorator:getProperty property="page.additionalCss"/>

    <title><decorator:title default="Unicenter"/></title>
    <decorator:head/>
</head>

<body contextPath="${ctx}">

<noscript>您的浏览器禁用了JavaScript，请允许JavaScript运行！</noscript>
<div id="wrapper">
    <nav class="navbar navbar-default  navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <%--<a class="navbar-brand" href="#">Unicenter</a>--%>
            <a class="navbar-brand" href="${ctx}/">
                <img src="${ctx}/img/logo.png" alt="ksyc" title="logo"/>
            </a>
        </div>
        <div class="navbar-collapse collapse navbar-responsive-collapse">
            <!--<ul class="nav navbar-nav navbar-right">
              <li><a href="javascript:void(0)">待录入 <span class="badge badge-warning">42</span></a></li>
              <li><a href="javascript:void(0)">待审核 <span class="badge badge-info">3</span></a></li>
            </ul>-->
        </div>
        <!-- /.navbar-header -->

        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="/registration/person/">
                        <span class="fa-stack fa-fw">
                          <i class="fa fa-circle-thin fa-stack-2x"></i>
                          <i class="fa fa-user-o fa-stack-1x"></i>
                        </span>
                            &nbsp; 期货个人开户<span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/registration/person/domestic/"><i class="fa fa-id-card-o fa-fw"></i>&nbsp; 境内个人</a>
                            </li>
                            <li>
                                <a href="/registration/person/greenCard/"><i class="fa fa-id-card fa-fw"></i>&nbsp; 绿卡个人</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="/registration/institution/">
                        <span class="fa-stack fa-fw">
                          <i class="fa fa-circle-thin fa-stack-2x"></i>
                          <i class="fa fa-university fa-stack-1x"></i>
                        </span>
                            &nbsp; 期货单位开户<span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/registration/institution/domestic/normal/"><i class="fa fa-cube fa-fw"></i>&nbsp; 境内一般单位</a>
                                <a href="/registration/institution/domestic/special/"><i class="fa fa-cube fa-fw">*</i>&nbsp; 境内特殊单位</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="/registration/assets/">
                        <span class="fa-stack fa-fw">
                            <i class="fa fa-circle-thin fa-stack-2x"></i>
                            <i class="fa fa-money fa-stack-1x"></i>
                        </span>
                            &nbsp; 期货资管开户<span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/registration/assets/person/domestic/">
                                    <i class="fa fa-money fa-fw"></i>
                                    <i class="fa fa-id-card-o fa-fw"></i>
                                    &nbsp; 个人</a>
                            </li>
                            <li>
                                <a href="/registration/assets/person/greenCard/">
                                    <i class="fa fa-money fa-fw"></i>
                                    <i class="fa fa-id-card fa-fw"></i>
                                    &nbsp; 绿卡个人</a>
                            </li>
                            <li>
                                <a href="/registration/assets/institution/domestic/normal/">
                                <i class="fa fa-money fa-fw"></i>
                                <i class="fa fa-cube fa-fw"></i>
                                &nbsp; 一般单位</a>
                            </li>
                            <li>
                                <a href="/registration/assets/institution/domestic/special/">
                                    <i class="fa fa-money fa-fw"></i>
                                    <i class="fa fa-cube fa-fw">*</i>
                                    &nbsp; 特殊单位</a>
                            </li>
                            <li>
                                <a href="/registration/assets/institution/domestic/onetomany/">
                                    <i class="fa fa-money fa-fw"></i>
                                    <i class="fa fa-cubes fa-fw"></i>
                                    &nbsp; 单位一对多</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="/search">
                        <span class="fa-stack fa-fw">
                          <i class="fa fa-circle-thin fa-stack-2x"></i>
                          <i class="fa fa-tachometer fa-stack-1x"></i>
                        </span>
                            &nbsp; 管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/search/registration"><i class="fa fa-search fa-fw"></i>&nbsp; 查询</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <li>
                            <a href="/"><i class="fa  fa-users fa-fw"></i>&nbsp; 操作员管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="${ctx}/operator/createOperatorPage"><i class="fa fa-user-plus fa-fw"></i>&nbsp; 操作员创建</a>
                                </li>
                                <li>
                                    <a href="${ctx}/operator/findAllOperators"><i class="fa fa-list-alt fa-fw"></i>&nbsp; 操作员列表</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </sec:authorize>
                    <li>
                        <a href="/me">
                        <span class="fa-stack fa-fw">
                          <i class="fa fa-circle-thin fa-stack-2x"></i>
                          <i class="fa fa-gear fa-stack-1x"></i>
                        </span>
                            &nbsp; 我<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/me/changePassword"><i class="fa fa-key fa-fw"></i>&nbsp; 修改密码</a>
                            </li>
                            <li>
                                <a href="/me/signout"><i class="fa fa-sign-out fa-fw"></i>&nbsp; 退出</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                </ul>
            </div> <!-- /.sidebar-collapse -->
        </div> <!-- /.navbar-static-side -->
    </nav> <!-- nav -->

    <div class="container-fluid dashboard">
        <div id="page-wrapper">
            <decorator:body/>
        </div> <!-- /#page-wrapper -->
    </div> <!-- /#container-fluid -->

</div> <!-- /#wrapper -->
<script src="${ctx}/js/browser.js"></script>

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

<decorator:getProperty property="page.additionalJs"/>

<script src="${ctx}/js/unicenter.min.js"></script>
<decorator:getProperty property="page.additionalJsAfterUnicenter"/>
</body>
</html>