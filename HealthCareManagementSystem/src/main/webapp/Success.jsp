<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%=request.getAttribute("message") %>
<form action = "Patient.jsp">
   <H2>Successfully entered details</H2>
<input type ="submit" value="BackToLoginPage"/>
</form>
</body>
</html>