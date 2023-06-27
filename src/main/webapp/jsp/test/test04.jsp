<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산 결과</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>

<%
int num1 = Integer.parseInt(request.getParameter("num1"));
int num2 = Integer.parseInt(request.getParameter("num2"));
String cal = request.getParameter("cal");
double result = 0;
String calSymbol = null;

if(cal.equals("plus")){
	result = (double)num1 + (double)num2;
	calSymbol = "+";
} else if(cal.equals("minus")){
	result = (double)num1 - (double)num2;
	calSymbol = "-";
} else if(cal.equals("mutiple")){
	result = (double)num1 * (double)num2;
	calSymbol = "X";
} else if(cal.equals("devide")){
	result = (double)num1 / (double)num2;
	calSymbol = "÷";
} else out.print("잘못된 접근입니다.");

%>
<div class="container">
	<h2 class="fw-bold">계산결과</h2>
	<div class="mt-2 display-4"><%=num1%> <%=calSymbol%> <%=num2%> = <span class="text-primary fw-bold"><%=result%></span> </div>
</div>

</body>
</html>