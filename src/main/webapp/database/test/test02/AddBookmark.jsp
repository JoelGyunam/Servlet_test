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

	<h3>즐겨찾기 추가</h3>
	<div class="container">
		<form method = "get" action = "/db/bookmarks/add">
			<label>사이트명 : </label> <input type = "text" name = "siteName" class = "form-control">
			<label>사이트주소 : </label> <input type = "text" name = "siteUrl" class = "form-control">
			<button type = "submit" class = "btn btn-success"> 추가</button>
		</form>
	</div>
</body>
</html>