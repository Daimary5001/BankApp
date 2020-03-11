<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Balance</title>
<link rel = "stylesheet" type = "text/css" href = "main.css" />
</head>
<body>
<div class = "container">
<h3>Balance Check Successful!</h3>
<%
HttpSession hs = request.getSession();
float balance = (float)hs.getAttribute("balance");
out.println("Your Account Balance is : "+balance);
%>
</div>
</body>
</html>