<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜, 시간 링크</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>

	<%
	LocalDateTime now = LocalDateTime.now();
	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy년 M월 dd일");
	DateTimeFormatter hmf = DateTimeFormatter.ofPattern("HH시 m분 s초");


	String req = request.getParameter("req");
	String dateShow = dtf.format(now);
	String hourShow = hmf.format(now);
	String toShow = "";
	
	if(req.equals("date")){
		toShow = "오늘 날짜 " + dateShow;
	} else if(req.equals("hour")){
		toShow = "현재 시간 " + hourShow;
	} else toShow = "잘못된 접근입니다.";
	
	%>

	<div class = "container">
		<div class="display-4"><%= toShow %></div>
	</div>




</body>
</html>