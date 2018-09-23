<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>


   <jsp:include page="master.jsp"/>

</head>
<body>
        <!-- /.navbar-header -->

        <div class="navbar-default sidebar hidden-print" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">

                    <li>
                        <a href="/suitability/">
                            <span class="fa-stack fa-fw">
                              <i class="fa fa-circle-thin fa-stack-2x"></i>
                              <i class="fa fa-user-o fa-stack-1x"></i>
                            </span>&nbsp; 导航栏1<span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">

                            <li>
                                <a href="/suitability/investor/individual/"><i class="fa fa-id-card-o fa-fw"></i>&nbsp; 导航栏1_1</a>
                            </li>
                            <li>
                                <a href="/suitability/investor/institution/"><i class="fa fa-cube fa-fw"></i>&nbsp; 导航栏1_2</a>
                            </li>
                            <li>
                                <a href="/suitability/investor/quiz/generate"><i class="fa fa-newspaper-o fa-fw"></i>&nbsp; 导航栏1_3</a>
                            </li>

                        </ul>
                        <!-- /.nav-second-level -->
                    </li>


                    <li>
                        <a href="/suitability/productService/">
                                <span class="fa-stack fa-fw">
                                  <i class="fa fa-circle-thin fa-stack-2x"></i>
                                  <i class="fa fa-share-alt fa-stack-1x"></i>
                                </span>&nbsp; 导航栏2<span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">

                            <li>
                                <a href="/suitability/productService/productQuick"><i class="fa fa-cube fa-fw"></i>&nbsp; 导航栏2_1</a>
                            </li>

                        </ul>
                        <!-- /.nav-second-level -->
                    </li>


                    <li>
                        <a href="/suitability/matchup/">
                                <span class="fa-stack fa-fw">
                                    <i class="fa fa-circle-thin fa-stack-2x"></i>
                                    <i class="fa fa-random fa-stack-1x"></i>
                                </span>&nbsp; 导航栏3<span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">

                            <li>
                                <a href="/suitability/matchup/chooseIdentity"><i class="fa fa-random fa-fw"></i>&nbsp; 导航栏3_1</a>
                            </li>


                            <li>
                                <a href="/suitability/matchup/search/"><i class="fa fa-search fa-fw"></i>&nbsp; 导航栏3_2</a>
                            </li>

                        </ul>
                        <!-- /.nav-second-level -->
                    </li>


                    <li>
                        <a href="/me">
                                <span class="fa-stack fa-fw">
                                  <i class="fa fa-circle-thin fa-stack-2x"></i>
                                  <i class="fa fa-gear fa-stack-1x"></i>
                                </span>&nbsp; 我<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/operator/me" class="disabled"><i class="fa fa-user-circle-o fa-fw"></i>&nbsp; 我的信息</a>
                            </li>
                            <li>
                                <a href="/admin/operator/showChangePasswordPage" class="disabled"><i class="fa fa-key fa-fw"></i>&nbsp; 修改我的密码</a>
                            </li>
                            <li>
                                <a href="/j_spring_security_logout"><i class="fa fa-sign-out fa-fw"></i>&nbsp; 退出</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>

                </ul>
            </div> <!-- /.sidebar-collapse -->
        </div> <!-- /.navbar-static-side -->
    </nav> <!-- nav -->
</body>
</html>