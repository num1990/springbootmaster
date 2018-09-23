<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>
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
    <!--[if lt IE 9]>
    <script src="${ctx}/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="${ctx}/js/vendor/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries使IE8能够支持HTML5元素和媒体文件 -->

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <decorator:getProperty property="page.additionalCss"/>

    <title><decorator:title default="Unicenter"/></title>
    <decorator:head/>
</head>

<body contextPath="${ctx}">

<noscript>您的浏览器禁用了JavaScript，请允许JavaScript运行！</noscript>
<div id="wrapper">
    <nav class="navbar navbar-default  navbar-static-top hidden-print" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${ctx}/">
                <img src="${ctx}/img/logo.png" alt="ksyc" title="logo"/>
            </a>
        </div>
        <div class="navbar-collapse collapse navbar-responsive-collapse">

            <ul class="nav navbar-nav navbar-right">
                <sec:authorize access="hasAnyRole('ROLE_INVESTOR_RW','ROLE_INVESTOR_RA','ROLE_MATCH_RA','ROLE_CLIENT_RA','ROLE_CONVERSION_RA','ROLE_CLIENT_RA')">
                    <li class="dropdown">
                        <a href="#" data-target="#" class="dropdown-toggle" data-toggle="dropdown">
                            提醒<span class="mls badge badge-success" id="count_total">0</span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <sec:authorize access="hasRole('ROLE_INVESTOR_RW')">
                                <li><a href="${ctx}/suitability/notice/search?status=PENDING">待通知<span class="badge" id="count_noticeCount">0</span></a>
                                </li>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_INVESTOR_RW')">
                                <li><a href="${ctx}/suitability/visit/search?status=PENDING">待回访<span class="badge" id="count_visitCount">0</span></a>
                                </li>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_MATCH_RA')">
                                <li><a href="${ctx}/suitability/matchup/search?status=SUBMITTED&page=0">评估待审核<span class="badge" id="count_matchupCount">0</span></a></li>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_INVESTOR_RA')">
                                <li><a href="${ctx}/suitability/investor/individual/search?suitabilityStatus=SUBMITTED">适当性待审核<span class="badge badge-warning" id="count_suitabilityApprovalCount">0</span></a>
                                </li>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_INVESTOR_RA')">
                                <li><a href="${ctx}/suitability/investor/individual/search?suitabilityStatus=REJECTED">适当性审核拒绝<span class="badge badge-warning" id="count_suitabilityRejectedCount">0</span></a>
                                </li>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_INVESTOR_RA')">
                                <li><a href="${ctx}/suitability/investor/individual/search?suitabilityStatus=SUBMITTED&edition=INTERNET">云平台适当性待审核<span class="badge badge-warning" id="count_suitabilityCloudRejectedCount">0</span></a>
                                </li>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_INVESTOR_RW')">
                                <li>
                                    <a href="${ctx}/suitability/investor/individual/search?suitabilityStatus=PRE_SUBMITTED">互联网适当性预审<span class="badge badge-success" id="count_suitabilityPreApprovalCount">0</span></a>
                                </li>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_CLOUD_DATA_RA')">
                                <li>
                                    <a href="${ctx}/images/approval/search?approvalStatus=PENDING">影像资料待复核<span class="badge badge-success" id="count_preApprovalImagePendingCount">0</span></a>
                                </li>
                            </sec:authorize>

                            <sec:authorize access="hasRole('ROLE_CLOUD_DATA_RA')">
                                <li>
                                    <a href="${ctx}/images/approval/search?approvalStatus=REJECTED">影像资料复核拒绝<span class="badge badge-success" id="count_preApprovalImageRejectedCount">0</span></a>
                                </li>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_CONVERSION_RA')">
                                <li><a href="${ctx}/suitability/transform/search?transformStatus=SUBMITTED">转化待审核<span class="badge badge-warning" id="count_transformApprovalCount">0</span></a></li>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_CLIENT_RA')">
                                <li><a href="${ctx}/suitability/clients/search?status=SUBMITTED">互联网注册待审核<span class="badge badge-primary" id="count_registrationApprovalCount">0</span></a>
                                </li>
                            </sec:authorize>
                        </ul>
                    </li>
                </sec:authorize>
                <li class="dropdown">
                    <a href="#" data-target="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="fa fa-user-circle-o mrs"></span><sec:authentication property="principal.username" />
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="${ctx}/j_spring_security_logout"><i class="fa fa-sign-out mrm"></i>退出</a></li>
                    </ul>
                </li>

            </ul>
        </div>
        <!-- /.navbar-header -->

        <div class="navbar-default sidebar hidden-print" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <sec:authorize access="hasAnyRole('ROLE_INVESTOR_R','ROLE_INVESTOR_RW','ROLE_CONVERSION_R','ROLE_CONVERSION_RW', 'ROLE_INVESTOR_RA','ROLE_CONVERSION_RA','ROLE_CLIENT_RA','ROLE_ADMIN')">
                    <li>
                        <a href="${ctx}/suitability/">
                        <span class="fa-stack fa-fw">
                          <i class="fa fa-circle-thin fa-stack-2x"></i>
                          <i class="fa fa-user-o fa-stack-1x"></i>
                        </span>&nbsp; 投资者适当性<span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <sec:authorize access="hasRole('ROLE_INVESTOR_RW')">
                            <li>
                                <a href="${ctx}/suitability/investor/individual/"><i class="fa fa-id-card-o fa-fw"></i>&nbsp; 个人</a>
                            </li>
                            <li>
                                <a href="${ctx}/suitability/investor/institution/"><i class="fa fa-cube fa-fw"></i>&nbsp; 机构或产品</a>
                            </li>
                            <li>
                                <a href="${ctx}/suitability/investor/quiz/generate"><i class="fa fa-newspaper-o fa-fw"></i>&nbsp; 生成问卷</a>
                            </li>
                            </sec:authorize>
                            <sec:authorize access="hasAnyRole('ROLE_INVESTOR_RW','ROLE_INVESTOR_R','ROLE_INVESTOR_RA')">
                                <li>
                                    <a href="${ctx}/suitability/investor/individual/search/"><i class="fa fa-search fa-fw"></i>&nbsp; 投资者查询</a>
                                </li>
                                <li>
                                    <a href="${ctx}/suitability/investor/individual/quiz/search/"><i class="fa fa-search fa-fw"></i>&nbsp; 问卷评测查询</a>
                                </li>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_CONVERSION_RW')">
                            <li>
                                <a href="${ctx}/suitability/transform/query"><i class="fa fa-exchange"></i>&nbsp; 申请转化</a>
                            </li>
                            </sec:authorize>
                            <sec:authorize access="hasAnyRole('ROLE_CONVERSION_RW', 'ROLE_CONVERSION_R', 'ROLE_CONVERSION_RA')">
                            <li>
                                <a href="${ctx}/suitability/transform/search/"><i class="fa fa-search fa-fw"></i>&nbsp; 投资者转化查询</a>
                            </li>
                            </sec:authorize>

                            <sec:authorize access="hasAnyRole('ROLE_CLIENT_RA','ROLE_ADMIN')">
                            <li>
                                <a href="${ctx}/suitability/clients/search/"><i class="fa fa-search fa-fw"></i>&nbsp; 互联网注册查询</a>
                            </li>
                            </sec:authorize>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    </sec:authorize>
                    <sec:authorize access="hasAnyRole('ROLE_PRODUCT_R','ROLE_PRODUCT_RW')">
                    <li>
                        <a href="${ctx}/suitability/productService/">
                            <span class="fa-stack fa-fw">
                              <i class="fa fa-circle-thin fa-stack-2x"></i>
                              <i class="fa fa-share-alt fa-stack-1x"></i>
                            </span>&nbsp; 产品服务适当性<span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <sec:authorize access="hasRole('ROLE_PRODUCT_RW')">
                            <li>
                                <a href="${ctx}/suitability/productService/productQuick"><i class="fa fa-cube fa-fw"></i>&nbsp; 一般产品服务</a>
                            </li>
                            <li>
                                <a href="${ctx}/suitability/productService/productBasic"><i class="fa fa-cube fa-fw"></i>&nbsp; 资管产品服务</a>
                            </li>
                            <li>
                                <a href="${ctx}/suitability/productService/query"><i class="fa fa-cube fa-fw"></i>&nbsp; 受托方登记</a>
                            </li>
                            </sec:authorize>
                            <sec:authorize access="hasAnyRole('ROLE_PRODUCT_R','ROLE_PRODUCT_RW')">
                            <li>
                                <a href="${ctx}/suitability/productService/productSearch"><i class="fa fa-search fa-fw"></i>&nbsp; 查询</a>
                            </li>
                            </sec:authorize>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    </sec:authorize>
                    <sec:authorize access="hasAnyRole('ROLE_MATCH_R','ROLE_MATCH_RW','ROLE_MATCH_RA')">
                    <li>
                        <a href="${ctx}/suitability/matchup/">
                            <span class="fa-stack fa-fw">
                                <i class="fa fa-circle-thin fa-stack-2x"></i>
                                <i class="fa fa-random fa-stack-1x"></i>
                            </span>&nbsp; 适当性评估<span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <sec:authorize access="hasRole('ROLE_MATCH_RW')">
                            <li>
                                <a href="${ctx}/suitability/matchup/chooseIdentity"><i class="fa fa-random fa-fw"></i>&nbsp; 评估</a>
                            </li>
                            </sec:authorize>
                            <sec:authorize access="hasAnyRole('ROLE_MATCH_R','ROLE_MATCH_RW')">
                                <li>
                                    <a href="${ctx}/suitability/matchup/search/"><i class="fa fa-search fa-fw"></i>&nbsp;评估结果查询</a>
                                </li>
                            </sec:authorize>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    </sec:authorize>
                    <sec:authorize access="hasAnyRole('ROLE_INVESTOR_R','ROLE_INVESTOR_RW', 'ROLE_INVESTOR_RA')">
                    <li>
                        <a href="${ctx}/suitability/assets/">
                            <span class="fa-stack fa-fw">
                                <i class="fa fa-circle-thin fa-stack-2x"></i>
                                <i class="fa fa-file fa-stack-1x"></i>
                            </span>&nbsp; 通知回访<span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <sec:authorize access="hasAnyRole('ROLE_INVESTOR_RW')">
                            <li>
                                <a href="${ctx}/suitability/notice/query/"><i class="fa fa-file fa-fw"></i>&nbsp; 通知</a>
                            </li>
                            <li>
                                <a href="${ctx}/suitability/visit/query/"><i class="fa fa-file fa-fw"></i>&nbsp; 回访</a>
                            </li>
                            </sec:authorize>
                            <sec:authorize access="hasAnyRole('ROLE_INVESTOR_R','ROLE_INVESTOR_RW','ROLE_INVESTOR_RA')">
                            <li>
                                <a href="${ctx}/suitability/notice/search/"><i class="fa fa-search fa-fw"></i>&nbsp; 通知查询</a>
                            </li>
                            <li>
                                <a href="${ctx}/suitability/visit/search/"><i class="fa fa-search fa-fw"></i>&nbsp; 回访查询</a>
                            </li>
                            </sec:authorize>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    </sec:authorize>
                    <sec:authorize access="hasRole('ROLE_EXAM_RW')">
                    <li>
                        <a href="${ctx}/suitability/question/">
                            <span class="fa-stack fa-fw">
                                <i class="fa fa-circle-thin fa-stack-2x"></i>
                                <i class="fa fa-file-text-o fa-stack-1x"></i>
                            </span>&nbsp; 试题管理<span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <sec:authorize access="hasRole('ROLE_EXAM_RW')">
                            <li>
                                <a href="${ctx}/suitability/question/"><i class="fa fa-database fa-fw"></i>&nbsp; 试题题库</a>
                            </li>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_EXAM_RW')">
                            <li>
                                <a href="${ctx}/suitability/question/searchQuestion"><i class="fa fa-gear fa-fw"></i>&nbsp; 试题题库查询</a>
                            </li>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_EXAM_RW')">
                            <li>
                                <a href="${ctx}/suitability/exam/assembler/start/"><i class="fa fa-gear fa-fw"></i>&nbsp; 试卷组装</a>
                            </li>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_EXAM_RW')">
                            <li>
                                <a href="${ctx}/suitability/exam/search"><i class="fa fa-gear fa-fw"></i>&nbsp; 试卷查询</a>
                            </li>
                            </sec:authorize>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    </sec:authorize>
                    <sec:authorize access="hasAnyRole('ROLE_INSPECTION_REPORT_R','ROLE_INSPECTION_REPORT_RW')">
                    <li>
                        <a href="${ctx}/suitability/investigation/">
                            <span class="fa-stack fa-fw">
                                <i class="fa fa-circle-thin fa-stack-2x"></i>
                                <i class="fa fa-clipboard fa-stack-1x"></i>
                            </span>&nbsp; 自查报告<span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <sec:authorize access="hasRole('ROLE_INSPECTION_REPORT_RW')">
                             <li>
                                 <a href="${ctx}/suitability/investigation/save"><i class="fa fa-sign-out fa-fw"></i>&nbsp; 生成自查报告</a>
                             </li>
                            </sec:authorize>
                            <sec:authorize access="hasAnyRole('ROLE_INSPECTION_REPORT_R','ROLE_INSPECTION_REPORT_RW')">
                            <li>
                                <a href="${ctx}/suitability/investigation/search"><i class="fa fa-search fa-fw"></i>&nbsp; 自查报告查询</a>
                            </li>
                            </sec:authorize>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    </sec:authorize>
                    <sec:authorize access="hasAnyRole('ROLE_PURCHASE_RW','ROLE_PURCHASE_R')">
                    <li>
                        <a href="${ctx}/suitability/purchase/">
                            <span class="fa-stack fa-fw">
                                <i class="fa fa-circle-thin fa-stack-2x"></i>
                                <i class="fa fa-clipboard fa-stack-1x"></i>
                            </span>&nbsp; 购买关系<span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                              <sec:authorize access="hasRole('ROLE_PURCHASE_RW')">
                               <li>
                                   <a href="${ctx}/suitability/importData/purchase"><i class="fa fa-upload fa-fw"></i>&nbsp; 购买关系导入</a>
                               </li>
                               <li>
                                   <a href="${ctx}/suitability/purchase/"><i class="fa fa-user-circle-o fa-fw"></i>&nbsp; 购买关系维护</a>
                               </li>
                               </sec:authorize>
                               <sec:authorize access="hasAnyRole('ROLE_PURCHASE_R','ROLE_PURCHASE_RW')">
                               <li>
                                  <a href="${ctx}/suitability/purchase/search"><i class="fa fa-search fa-fw"></i>&nbsp; 购买关系查询</a>
                               </li>
                               </sec:authorize>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    </sec:authorize>

                    <sec:authorize access="hasRole('ROLE_CLOUD_RW')">
                        <li>
                            <a href="${ctx}/suitability/cloud/investor/">
                            <span class="fa-stack fa-fw">
                                <i class="fa fa-circle-thin fa-stack-2x"></i>
                                <i class="fa fa-clipboard fa-stack-1x"></i>
                            </span>&nbsp; 云平台管理<span class="fa arrow"></span>
                            </a>
                            <ul class="nav nav-second-level">
                                <sec:authorize access="hasRole('ROLE_CLOUD_RW')">
                                    <li>
                                        <a href="${ctx}/suitability/cloud/investor/retrieve"><i class="fa fa-file-o fa-fw"></i>&nbsp; 单个信息同步</a>
                                    </li>

                                    <li>
                                        <a href="${ctx}/suitability/cloud/investor/batch"><i class="fa fa-file-o fa-fw"></i>&nbsp; 批量信息同步</a>
                                    </li>

                                    <li>
                                        <a href="${ctx}/suitability/cloud/investor/search"><i class="fa fa-file-o fa-fw"></i>&nbsp; 同步记录查询</a>
                                    </li>
                                </sec:authorize>

                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </sec:authorize>
                    <li>
                        <a href="${ctx}/images/">
                        <span class="fa-stack fa-fw">
                          <i class="fa fa-circle-thin fa-stack-2x"></i>
                          <i class="fa fa-image fa-stack-1x"></i>
                        </span>&nbsp; 影像资料<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="${ctx}/images/approval/" class="disabled"><i class="fa fa-image fa-fw"></i>&nbsp; 影像资料预审录入</a>
                            </li>

                            <li>
                                <a href="${ctx}/images/approval/search/"><i class="fa fa-search fa-fw"></i>&nbsp; 影像资料预审查询</a>
                            </li>

                            <li>
                                <a href="${ctx}/images/search/" class="disabled"><i class="fa fa-search fa-fw"></i>&nbsp; 影像资料查询</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="${ctx}/suitability/brokenRecord/">
                        <span class="fa-stack fa-fw">
                          <i class="fa fa-circle-thin fa-stack-2x"></i>
                          <i class="fa fa-gear fa-stack-1x"></i>
                        </span>&nbsp; 失信记录<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="${ctx}/suitability/brokenRecord/add" class="disabled"><i class="fa fa-sign-out fa-fw"></i>&nbsp; 生成失信记录</a>
                            </li>
                            <li>
                                <a href="${ctx}/suitability/brokenRecord/search/" class="disabled"><i class="fa fa-search fa-fw"></i>&nbsp; 失信记录查询</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>

                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <li>
                        <a href="${ctx}/admin/">
                        <span class="fa-stack fa-fw">
                          <i class="fa fa-circle-thin fa-stack-2x"></i>
                          <i class="fa fa-gear fa-stack-1x"></i>
                        </span>&nbsp; 系统管理<span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                           <li>
                               <a href="${ctx}/admin/operator/createOperatorPage"><i class="fa fa-user-circle-o fa-fw"></i>&nbsp; 创建操作员</a>
                           </li>
                           <li>
                               <a href="${ctx}/admin/operator/operatorSearch"><i class="fa fa-search fa-fw"></i>&nbsp; 操作员查询</a>
                           </li>
                           <li>
                               <a href="${ctx}/admin/department/createDepartmentPage"><i class="fa fa-sign-out fa-fw"></i>&nbsp; 创建部门</a>
                           </li>
                           <li>
                               <a href="${ctx}/admin/department/departmentSearch"><i class="fa fa-search fa-fw"></i>&nbsp; 部门查询</a>
                           </li>
                           <li>
                               <a href="${ctx}/admin/codes/uploadEnumerate/"><i class="fa fa-search fa-fw"></i>&nbsp; 监控中心字典导入</a>
                           </li>
                           <li>
                               <a href="${ctx}/admin/codes/upload/"><i class="fa fa-search fa-fw"></i>&nbsp; 适当性字典导入</a>
                           </li>
                            <li>
                                <a href="${ctx}/admin/department/import"><i class="fa fa-search fa-fw"></i>&nbsp; 部门导入</a>
                            </li>
                           <li>
                               <a href="${ctx}/admin/operator/import"><i class="fa fa-search fa-fw"></i>&nbsp; 操作员导入</a>
                           </li>
                           <li>
                               <a href="${ctx}/admin/configuration/"><i class="fa fa-search fa-fw"></i>&nbsp; 系统配置</a>
                           </li>
                            <li>
                                <a href="${ctx}/admin/configuration/cloud"><i class="fa fa-search fa-fw"></i>&nbsp; 云平台试卷配置</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                        <li>
                            <a href="/me">
                            <span class="fa-stack fa-fw">
                              <i class="fa fa-circle-thin fa-stack-2x"></i>
                              <i class="fa fa-gear fa-stack-1x"></i>
                            </span>&nbsp; 我<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="${ctx}/operator/me" class="disabled"><i class="fa fa-user-circle-o fa-fw"></i>&nbsp; 我的信息</a>
                                </li>
                                <li>
                                    <a href="${ctx}/admin/operator/showChangePasswordPage" class="disabled"><i class="fa fa-key fa-fw"></i>&nbsp; 修改我的密码</a>
                                </li>
                                <li>
                                    <a href="${ctx}/j_spring_security_logout"><i class="fa fa-sign-out fa-fw"></i>&nbsp; 退出</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </sec:authorize>
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

<script src="${ctx}/js/metisMenu.min.js" type="text/javascript"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="${ctx}/js/vendor/ie10-viewport-bug-workaround.js"></script>

<decorator:getProperty property="page.additionalJs"/>

<script src="${ctx}/js/unicenter.min.js"></script>
<decorator:getProperty property="page.additionalJsAfterUnicenter"/>

</body>
</html>