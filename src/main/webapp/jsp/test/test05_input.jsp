<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>

	<div class = "container">
		<h3>길이 변환</h3>
		
		<form method = "post" action = "/jsp/test/test05.jsp">
			<input name="cm"></input> <label>cm</label>
		
			<label>인치<input type="checkbox" name="inch" value="y"></label>
			<label>야드<input type="checkbox" name="yard" value="y"></label>
			<label>피트<input type="checkbox" name="feet" value="y"></label>
			<label>미터<input type="checkbox" name="meter" value="y"></label>
		
			<button type = "submit">변환</button>
		</form>
	
	
	</div>


</body>
</html>