<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/debut","root","");
		stmt = conn.createStatement();
		rs = stmt.executeQuery("select * from member");
		while(rs.next()){
			out.println(rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3));
		}
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		conn.close();
		stmt.close();
		rs.close();
	}
%>
</body>
</html>