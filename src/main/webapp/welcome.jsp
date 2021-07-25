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
		
		//This is to solve. when logout this codes will prevent clicking back button. 
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//HTTP 1.1
		response.setHeader("Pragma","no-cache");//HTTP 1.0
		response.setHeader("Expires","0");//Proxies

		
		
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