<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zh_CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
      <!-- Font Awesome fonts -->
      <link rel="stylesheet" href="${ctx}/webapp/css/font-awesome.min.css">

      <!-- Bootstrap core CSS  Bootstrap核心样式表 -->
      <link href="${ctx}/webapp/css/bootstrap.min.css" rel="stylesheet">

      <!-- Bootstrap Material Design -->
      <link href="${ctx}/webapp/css/vendor/bootstrap-material-design.min.css" rel="stylesheet">
      <link href="${ctx}/webapp/css/vendor/ripples.min.css" rel="stylesheet">

      <!-- Dropdown.js -->
      <link href="${ctx}/webapp/css/vendor/jquery.dropdown.css" rel="stylesheet">

      <!--index.html-->
      <link href="${ctx}/webapp/css/metisMenu.min.css" rel="stylesheet">
      <!--index.html-->

      <!-- Custom styles for this template  自定义样式 -->
      <link href="${ctx}/webapp/css/unicenter.css" rel="stylesheet">
      <link href="${ctx}/webapp/css/viewP.css" rel="stylesheet">
      <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
      <!--[if lt IE 9]><!--<script src="${ctx}/webapp/${ctx}/webapp/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
      <script src="${ctx}/webapp/js/vendor/ie-emulation-modes-warning.js"></script>
	<title>鹏元科技</title>
  </head>
  <body>
    <div class="box">
        <div class="login-box">
            <div class="login-title text-center">
                <h2>鹏元科技</h2>
                <div class="text-warning">
                    <c:if test="${not empty errorCode}">
                        鹏元科技
                    </c:if>
                </div>
            </div>
            <div class="login-content">
                <div class="form">
                    <form:form action="${ctx}/login/login" method="POST" role="form" id="command">
                        <div class="form-group">
                            <div class="col-xs-10 col-xs-offset-1 col-sm-4 col-sm-offset-4">
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                    <input type="text" id="username" name="j_username" class="form-control" placeholder="用户名">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-10 col-xs-offset-1 col-sm-4 col-sm-offset-4">
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                    <input type="password" id="password" name="j_password" class="form-control" placeholder="密码">
                                </div>
                            </div>
                        </div>
                        <div class="form-group form-actions">


                            <div class="form-group col-xs-12">
                                <div class="text-center">
                                    <button type="submit" class="btn btn-sm btn-success btn-raised"><span class="glyphicon glyphicon-off"></span> 登录</button>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12 link">
                                <p class="text-center remove-margin">
                                    <a href="${ctx}/admin/operator/showRetrievePasswordPage" ><small>忘记密码</small></a>
                                </p>
                            </div>

                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
    <content tag="additionalJs">

        <script src="${ctx}/webapp/js/vendor/jquery.min.js"></script>
        <script src="${ctx}/webapp/js/vendor/bootstrap.min.js"></script>

        <!-- Material Design for Bootstrap -->
        <script src="${ctx}/webapp/js/vendor/material.js"></script>
        <!-- Material Design的动画效果-->
        <script src="${ctx}/webapp/js/vendor/ripples.min.js"></script>

        <!-- Sliders 小巧的jquery区域范围滑块插件-->
        <script src="${ctx}/webapp/js/vendor/jquery.nouislider.min.js"></script>
        <!-- Dropdown.js一个简单的下拉列表效果插件 -->
        <script src="${ctx}/webapp/js/vendor/jquery.dropdown.js"></script>

        <script type="text/javascript" src="${ctx}/webapp/js/metisMenu.min.js"></script>

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="${ctx}/webapp/js/vendor/ie10-viewport-bug-workaround.js"></script>


        <script src="${ctx}/webapp/js/vendor/inputmask.min.js"></script>
        <script src="${ctx}/webapp/js/vendor/jquery.inputmask.min.js"></script>
        <script src="${ctx}/webapp/js/vendor/jquery.validate.min.js"></script>
        <script src="${ctx}/webapp/js/vendor/jquery.validate.messages_zh.js"></script>


        <script src="${ctx}/webapp/js/unicenter.min.js"></script>
        <script type="text/javascript" src="${ctx}/webapp/js/view.min.js"></script>

        <script src="${ctx}/webapp/js/vendor/jquery.inputmask.bundle.min.js"></script>
        <script src="${ctx}/webapp/js/vendor/jquery.validate.min.js"></script>
        <script src="${ctx}/webapp/js/vendor/jquery.validate.messages_zh.js"></script>
        <script src="${ctx}/webapp/js/vendor/jsencrypt.min.js"></script>
        <script src="${ctx}/webapp/js/login.min.js"></script>
    </content>
  </body>
</html>
