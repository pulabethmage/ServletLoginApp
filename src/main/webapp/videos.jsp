<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Videos Page</title>
</head>
<body>

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

</body>
</html>