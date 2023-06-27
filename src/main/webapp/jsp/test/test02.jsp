<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 확인</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</head>
<body>

<%

String h = request.getParameter("h");
String w = request.getParameter("w");


double height = Double.valueOf(h);
double weight = Double.valueOf(w);

double bmi = weight/((height/100.0)*(height/100.0));

// 수치	결과
// 20 이하	저체중
// 21 이상 ~ 25 이하	정상
// 26 이상 ~ 30 이하	과체중
// 31 이상	비만

String result = "";
if(bmi >= 31.0){
	result = "비만";
} else if(bmi >= 26.0){
	result = "과체중";
} else if(bmi >= 21.0){
	result = "정상";
} else result = "저체중";

%>



	<div class = "container">
		<h1 class="fw-bold">BMI 측정 결과</h1>
		<div class = "display-3 d-flex"> 
			<div>당신은&nbsp;<span class = "text-primary fw-bold"><%=result%></span>&nbsp;입니다.</div>
		</div>
		
		<div class="p-2 mt-2">BMI 수치 : <%= bmi %></div>
	</div>

</body>
</html>
