<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check JSP&Servlet Version</title>
</head>
<body>
<h2>개발 환경 버전</h2>
<span>서버: <%= application.getServerInfo() %></span><br>
<span>서블릿: <%= application.getMajorVersion() %></span><br>
<span>JSP: <%= JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %></span>
</body>
</html>