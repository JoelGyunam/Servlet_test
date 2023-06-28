<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴검색</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>


	<div class="container">
		<h2>메뉴검색</h2>
		<div>
			<form method = "get" action = "/jsp/test/test07.jsp">
				<div>
					<input type = "text" name = "menu">
					<label> <input type = "checkbox" name = "point" value="4"> 4점 이하 제외</label> <br>
					<button type="submit" class="btn btn-primary mt-1">제출</button>
				</div>
			</form>
		</div>
	</div>

</body>
</html>