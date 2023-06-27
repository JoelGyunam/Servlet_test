<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙 연산</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>

<div class="container">
	<h2 class="fw-bold">사칙 연산</h2>
	<div>
		<form class="d-flex" method="post" action="/jsp/test/test04.jsp">
			<input type="text" name = "num1" class="m-2 form-control text-center"></input>
			<select name="cal" class="m-2 form-control text-center">
				<option value="plus">+</option>
				<option value="minus">-</option>
				<option value="multiple">X</option>
				<option value="devide">÷</option>
			</select>
			<input type="text" name = "num2" class="m-2 form-control text-center"></input>
			<button type="submit" class="btn btn-primary m-2 form-control">계산</button>
		</form>
	</div>
</div>



</body>
</html>