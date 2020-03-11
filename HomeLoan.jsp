<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Loan Facility</title>
<link rel = "stylesheet" type = "text/css" href = "main.css" />
</head>
<body>
<div class = "container">
<h3>Home Loan Facility</h3>

<%
HttpSession hs = request.getSession();
String name = (String)hs.getAttribute("name");

out.println("Welcome " + name + "! <br><br>");
out.println("We provide home loans at an interest rate of 5 % per year.<br>");
out.println("Please Apply for Home Loans here.<br><br>");
%>

<form action = "http://localhost:8085/Bank_Application/HomeLoanApply" >
<br>
<input type="text" name="principal" placeholder="Enter Principal Loan Amount" required/>
<br><br>
<input type="text" name="time" placeholder="Enter Time Period (Years)" required/>
<br><br>
<button type="submit">Request Loan Approval</button>
</form>
</div>
</body>
</html>