<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>浏览器版本检测</title>
</head>

<body>
<div class="text-center" style="padding-top:10%">
    <h2>你使用的浏览器版本过低</h2>
    <p>推荐使用以下浏览器的最新版本。版本升级地址则推荐使用如下链接访问<b id="referrer"></b>即可。</p><br>
    <ul class="browser">
        <h4>
            <i class="fa fa-chrome fa-3x browser-chrome"></i>
            <a href="${ctx}/doc/google.msi">谷歌浏览器<span>Google Chrome</span></a>

            <i class="fa fa-firefox fa-3x browser-firefox mll"></i>
            <a href="http://www.firefox.com.cn/#desktop">火狐浏览器<span>Mozilla Firefox</span></a>

            <i class="fa fa-internet-explorer fa-3x browser-ie mll"></i>
            <a href="http://windows.microsoft.com/zh-cn/internet-explorer/download-ie">IE浏览器<span>Internet Explorer</span></a>
        </h4>
    </ul>
</div>
</body>
</html>
