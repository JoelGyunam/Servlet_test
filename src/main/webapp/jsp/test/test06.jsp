<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장 목록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>


<%
List<String> goodsList = Arrays.asList(new String[]{ 
	    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
	});

int order = 0;
String item = null;

%>


	<div class="container">
		<h2 class="text-center">장 목록</h2>
	
		<table class = "table">
			<thead>
				<tr class="text-center">
					<th>번호</th>
					<th>품목</th>
				</tr>
			</thead>
			<tbody>
			<%	for(int i = 0; i < goodsList.size();i++){	
					order = i+1;							
					item = goodsList.get(i);				%>
					<tr class="text-center">									
						<td><%=order%></td>							
						<td><%=item%></td>						
					</tr>									
			<%	};	%>
			</tbody>
		</table>
	</div>


</body>
</html>