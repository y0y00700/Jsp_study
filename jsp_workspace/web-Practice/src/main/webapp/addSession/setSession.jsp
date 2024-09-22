<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setSession</title>
</head>
<body>
	<%
		session.setAttribute("id", "pinkSung");
		session.setAttribute("pwd", "test1234");
		session.setAttribute("age", 20);
		//response.sendRedirect("getSession.jsp"); -> redirect 에서도 세션 유지됨 (브라우저 단위)
	%>
</body>
</html>