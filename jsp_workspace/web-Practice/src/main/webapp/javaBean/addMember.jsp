<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 가입 입력 폼</title>
</head>
<body>
	<h2>멤버 입력 폼</h2>
	<form method = "get" action = "PrintAddMember.jsp">
		<table>
			<tr>
				<td> 이름 </td>
				<td> <input type="text" name="name" size="20"></td>
			</tr>
			<tr>
				<td> id </td>
				<td> <input type="text" name="id" size="20"></td>
			</tr>
			<tr>
				<td> pwd </td>
				<td> <input type="text" name="pwd" size="20"></td>
			</tr>
			<tr>
				<td><input type="submit" value="전송"></td>
				<td><input type="reset" value="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>