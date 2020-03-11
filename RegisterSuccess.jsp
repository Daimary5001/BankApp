<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Successful</title>
<link rel = "stylesheet" type = "text/css" href = "main.css" />
</head>
<body>
<div class = "container">
<h3>Registration Successfully Completed!</h3>
<h3>Here are your login details : </h3>
<%
HttpSession hs = request.getSession();
String password = (String)hs.getAttribute("password");
Integer accNumber = (Integer)hs.getAttribute("accNumber");

out.println("Your Password is : " + password + "<br><br>");
out.println("Your Account Number is : " + accNumber);
%>
<br><br>
<a href ="Login.html">Click here to LOGIN</a>
<br><br>
</div>
</body>
</html>