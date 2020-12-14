<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="com.tinder.demo.Users" %>
	hello world!
	
	<h1>Add user</h1>
	<form action="/addUser">
	<!-- Id: <input type="number" name="id"><br> -->
	User: <input type="text" name="name"><br>
	Password: <input type="password" name="pass"><br>
	<input type="submit" name="submit" value="submit" /><br>
	</form>
	
	<form action="/getUser" method="get">
	Id: <input name="uid"><br>
	<input type="submit" name="submit" value="submit" /><br>
	</form>
	<!-- ${user}  -->
	<%
		if(session.getAttribute("user")!=null){
	%>
			Hello, <% Users u = (Users)session.getAttribute("user"); %> <%= u.getName() %>
	<%
		}else{
			response.sendRedirect("loginup.jsp");
		}
	%>
</body>
</html>