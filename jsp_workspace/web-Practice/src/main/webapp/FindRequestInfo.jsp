<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>How to Find Request Info</title>
</head>
<body>
	컨텍스트 패스 : <%= request.getContextPath() %> <br>
	요청 방식 : <%= request.getMethod() %> <br>
	요청한 URL : <%= request.getRequestURL() %> <br>
	요청한 URI : <%= request.getRequestURI() %> <br>
	서버 이름 : <%= request.getServerName() %> <br>
	서버 포트 : <%= request.getServerPort() %> <br>
	Protocol : <%= request.getProtocol() %>
	
</body>
</html>