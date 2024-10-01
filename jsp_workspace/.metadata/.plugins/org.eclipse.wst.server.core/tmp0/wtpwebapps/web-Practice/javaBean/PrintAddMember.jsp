<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>    
<jsp:useBean id="member" class="com.exercise.voExample.MemberVO"/>
<jsp:setProperty name="member" property="*"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PrintAddMember</title>
</head>
<body>
<h2>입력 완료된 멤버 정보</h2>
	<table>
		<tr>
			<td> 이름 </td>
			<td> <jsp:getProperty name ="member" property="name"/></td>
		</tr>
		<tr>
			<td> id </td>
			<td> <jsp:getProperty name ="member" property="id"/></td>
		</tr>
		<tr>
			<td> pwd </td>
			<td> <jsp:getProperty name ="member" property="pwd"/></td>
		</tr>
	</table>

</body>
</html>