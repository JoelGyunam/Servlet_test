<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>

	<div class = "container">
		<h3 class="text-center m-2 fw-bold">즐겨찾기 추가</h3>
		<div class="container">
			<form method = "get" action = "/db/bookmarks/add">
				<div class = "p-2 d-flex"><label class = "col-1 text-center d-flex align-items-center justify-content-center fw-bold">사이트명</label> <input type = "text" name = "siteName" class = "form-control"></div>
				<div class = "p-2 d-flex"><label class = "col-1 text-center d-flex align-items-center justify-content-center fw-bold">사이트주소</label> <input type = "text" name = "siteUrl" class = "form-control"></div>
				<div class = "d-flex justify-content-center"><button type = "submit" class = "btn btn-success m-3 col-10"> 추가</button></div>
			</form>
		</div>
	</div>
</body>
</html>