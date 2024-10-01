<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Cookie</title>
</head>
<body>
	<%
		// 쿠키 객체 생성
		Cookie c = new Cookie("id","pinkSung");
		// 유효 기간
		c.setMaxAge(365*24*60*60); // a year
		// 클라이언트에 쿠키 전송
		response.addCookie(c);
		// 쿠키를 생성하여 클라이언트에 전송
		response.addCookie(new Cookie("pwd","test1234"));
		response.addCookie(new Cookie("age","20"));
	%>
</body>
</html>