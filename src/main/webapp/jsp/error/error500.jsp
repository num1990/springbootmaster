<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>出错啦</title>
</head>
<body>

<p class="mtl error">Http code is : ${code}</p>
<c:choose>
    <c:when test="${not empty errorMessage}">
        <p class="text-danger error">${errorMessage}</p>
    </c:when>
    <c:otherwise>
        <p class="text-danger small text-center error">访问服务出错啦！</p>
    </c:otherwise>
</c:choose>

 <p class="small mtl error invisible">${exceptionStackTrace}</p>

</body>
</html>
