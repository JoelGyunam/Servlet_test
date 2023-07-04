<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.marondal.common.MysqlService"%>
<%@ page import="java.sql.ResultSet"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨차직 목록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>

<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	
	String query = "SELECT * FROM `bookmarks`;";
	ResultSet resultSet = mysqlService.select(query);

%>
	
	<div class = "container">
		<h1 class = "text-center m-3">즐겨찾기 목록</h1>
	
		<table class = "table text-center table-bordered">
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트주소</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
	<%		while(resultSet.next()){
		%>
				<tr>
					<td><%=resultSet.getString("name")%></td>
					<td><a target = "_blank" href = "<%=resultSet.getString("url")%>"><%=resultSet.getString("url")%></a></td>
					<td><a href = "/db/bookmarks/remove?id=<%=resultSet.getString("id")%>" class = "text-decoration-none text-danger"><button class="form-control btn-sm">삭제하기</button></a></td>
				</tr>
	<%
			}
	%>
			</tbody>
	
		</table>
		
		<div class = "d-flex justify-content-center">
			<a href = "/database/test/test02/AddBookmark.jsp" class = "text-decoration-none text-white fw-bold col-12"><button class = "btn btn-primary mt-3 col-12">  추가하기</button></a>
		</div>
	</div>
</body>
</html>