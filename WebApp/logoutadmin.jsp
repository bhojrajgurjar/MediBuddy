<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>log out</title>
</head>
<body>
	<div class="container">
	<%
	if(!session.isNew() || session.getAttribute("ADMIN") != null)
	{
		session.setAttribute("ADMIN", null);
		session.invalidate();
		response.sendRedirect("index.html"); 
%>
	
	//<jsp:include page="index.html"></jsp:include>
	<%		
		}
		else {
	%>
		<p style=color:red> You need to login first !!! </p>
		<jsp:include page="userlogin.html"></jsp:include>
	<%		
		}
	%>
</div>

</body>
</html>