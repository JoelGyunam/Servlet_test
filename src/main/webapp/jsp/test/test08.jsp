<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 정보</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>


<% 
	String title = request.getParameter("title");
	String author = request.getParameter("author");
	String publisher = request.getParameter("publisher");
	String img = request.getParameter("img");
%>

<div class = "container d-flex">
	<div>
		<img src="<%=img %>" alt="책 표지" width="300px" >
	</div>

	<div class="p-1">
		<div>
			<div class = "fw-bold display-3 p-1"><%=title %></div>
			<div class = "display-4 text-primary p-1"><%=author %></div>
			<div class = "fw-light display-5 text-muted p-1"><%=publisher %></div>
		</div>
	</div>

</div>


</body>
</html>