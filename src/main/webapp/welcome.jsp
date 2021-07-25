<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>

<div align="center" style="background-color: gray; padding: 50px;">

		<%
		
		
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("login.jsp");
			
		}
		
		%>

<h1>Welcome ${username}</h1>

<h3>Watch Out Videos</h3>
<a href="videos.jsp">Watch Newest Videos here</a>

<form action="Logout">

<input type="submit" value="Logout">
</form>

<a></a>

</div>


</body>
</html>