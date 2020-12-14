<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
	${user}
</body>
</html>