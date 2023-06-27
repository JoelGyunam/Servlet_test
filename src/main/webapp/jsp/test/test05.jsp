<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환 결과</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>

	<%
		double cmRe = Double.valueOf(request.getParameter("cm"));
		
		
	
		String[][] inputArray={
				{request.getParameter("inch"),Double.toString(cmRe / 2.54)+" in"},
				{request.getParameter("yard"),Double.toString(cmRe / 91.44)+" yd"},
				{request.getParameter("feet"),Double.toString(cmRe / 30.48)+" ft"},
				{request.getParameter("meter"),Double.toString(cmRe / 100.0)+" m"}};
		

		
							
	 %>

	<div class="container">
	
		<div>
			<h2 class= "fw-bold">변환 결과</h2>
			<h3><%= cmRe %>cm</h3>
		</div> <hr>
		
		<div class="display-3 fw-bold">
		<% for(int i = 0; i < inputArray.length; i++){
			if("y".equals(inputArray[i][0])){
				out.println("<div>");
				out.println(inputArray[i][1]);
				out.println("</div>");
				} else out.println(); ; 
			} 
			%>
		</div>
	</div>


</body>
</html>