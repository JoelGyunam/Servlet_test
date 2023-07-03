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


	<table class = "table text-center" border = "1">
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트주소</th>
			</tr>
		</thead>
		<tbody>
<%		while(resultSet.next()){
	%>
			<tr>
				<td><%=resultSet.getString("name")%></td>
				<td><a href = "<%=resultSet.getString("url")%>"><%=resultSet.getString("url")%></a></td>
				<td><a href = "/db/bookmarks/remove?id=<%=resultSet.getString("id")%>" class = "text-red">삭제하기</a></td>
			</tr>
<%
		}
%>

		</tbody>

	</table>
	
	<div class = "d-flex justify-content-center">
		<button class = "btn btn-warning"> <a href = "/database/test/test02/AddBookmark.jsp"> 추가하기</a></button>
	</div>
</body>
</html>