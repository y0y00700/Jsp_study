<%page import="java.sql.DriverManager" %>
<%page import="java.sql.ResultSet" %>
<%page import="java.sql.Statement" %>
<%page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! //선언부는 첫 방문자에 의해서 단 한번 수행됨
	// JDBC Library 가 있어야 라이브러리 Import 가 가능 
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "admin";
	String pwd = "1234";
	String sql = "select * from member";
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC Excercise</title>
</head>
<body>
<table width='800' border='1'>
	<tr>
		<th>이름</th><th>아이디</th><th>암호</th> 
	</tr>
	<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url,uid,pwd);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		while(rs.next()){
			out.println("<tr>");
			out.println("<td>rs.getString("name")</td>");
			out.println("<td>rs.getString("id")</td>");
			out.println("<td>rs.getString("pwd")</td>");
			out.println("</tr>");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		// JDBC 객체 반환		
		if(rs != null) rs.close();
		if(smtm != null )smtm.close();
		if(conn != null) conn.close();
	}
	%>
</table>

</body>
</html>