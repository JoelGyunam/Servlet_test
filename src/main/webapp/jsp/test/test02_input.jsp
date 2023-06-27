<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<title>BMI 지수 확인</title>
</head>
<body>

<h3 class = "p-3 fw-bold">체격 조건 입력</h3>
<form class = "p-3" method="get" action="/jsp/test/test02.jsp">
	<div class="d-flex align-items-end">
		<div class = "d-flex align-items-end">
			<input class = "form-control" type = "text" name = "h"><label>cm</label>
		</div>
		<div class = "d-flex align-items-end">
			<input class = "form-control" type = "text" name = "w"><label>kg</label>
		</div>
		<div>
			<button type = "submit" class = "btn btn-info ml-2">계산</button>
		</div>
	</div>

</form>

</body>
</html>