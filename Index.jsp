<%@ page  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String u,e,p;
	u=request.getParameter("Username");
	e=request.getParameter("email");
	p=request.getParameter("password");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection  con= DriverManager.getConnection("jdbc:mysql://localhost:3306/labour","root","");
	PreparedStatement ps=con.prepareStatement("insert into form (Username,email,PASSWORD) value(?,?,?)");
	ps.setString(1,u);
	ps.setString(2,e);
	ps.setString(3,p);
	ps.executeUpdate();
	out.println("saved");
 
	 
	
%>
</body>
</html>