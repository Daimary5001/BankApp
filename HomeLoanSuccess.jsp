<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Loan Success</title>
<link rel = "stylesheet" type = "text/css" href = "main.css" />
</head>
<body>
<div class = "container">
<h4>Your Home Loan has been Successfully Approved!</h4>

<%
HttpSession hs = request.getSession();

Float simpleInterest = (Float)hs.getAttribute("simpleInterest");
Float principal = (Float)hs.getAttribute("principal");
Float rate = (Float)hs.getAttribute("rate");
int time = (int)hs.getAttribute("time");

out.println("Loan Amount of Rs. " + principal + " has been added to your balance.<br><br>");
out.println("The Loan must be repaid within " + time + " years.<br><br>");
out.println("Our Home Loan interest is " + rate + " % per year.<br><br>");
out.println("Hence, Simple Interest for this loan: Rs. " + simpleInterest + "<br><br>");
%>
<br>
<a href="Balance">CHECK NEW BALANCE</a>
<br><br>
</div>
</body>
</html>