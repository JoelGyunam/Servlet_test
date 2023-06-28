<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 목록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<%
List<Map<String, Object>> list = new ArrayList<>();
Map<String, Object> map = new HashMap<String, Object>() {
    { 
        put("id", 1000);
        put("title", "아몬드"); 
        put("author", "손원평"); 
        put("publisher", "창비");
        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
    } 
};
list.add(map);

map = new HashMap<String, Object>() {
    { 
        put("id", 1001);
        put("title", "사피엔스"); 
        put("author", "유발 하라리"); 
        put("publisher", "김영사");
        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
    } 
};
list.add(map);

map = new HashMap<String, Object>() {
    { 
        put("id", 1002);
        put("title", "코스모스"); 
        put("author", "칼 세이건"); 
        put("publisher", "사이언스북");
        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
    } 
};
list.add(map);

map = new HashMap<String, Object>() {
    { 
        put("id", 1003);
        put("title", "나미야 잡화점의 기적"); 
        put("author", "히가시노 게이고"); 
        put("publisher", "현대문학");
        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
    } 
};
list.add(map);
%>
<div>
	<div>
		<h3 class="text-center fw-bold">책 목록</h3>
	</div>
	<div>
		<table class="table text-center align-middle">
			<thead>
				<tr>
					<th>id</th>
					<th>표지</th>
					<th>제목</th>
				</tr>
			</thead>
			<tbody>
				<%
				for(Map<String, Object> toList : list){
					int id = (Integer)toList.get("id");
					String title = ((String)toList.get("title")).replace(" ","&nbsp;");
					String author = ((String)toList.get("author")).replace(" ","&nbsp;");
					String publisher = ((String)toList.get("publisher")).replace(" ","&nbsp;");
					String img = ((String)toList.get("image")).replace(" ","&nbsp;");
					String goTo = "/jsp/test/test08.jsp?" + "id=" + id;
				%>	
						<tr>
							<td><%=id%></td>
							<td><img src="<%=img%>" alt="<%=title%>" width="100px" ></td>
							<td class="display-3 text-primary"><a class = "text-decoration-none" href = <%=goTo%>><%=title%></a></td>
						</tr>
				<%	
				};
				%>		
			</tbody>
		</table>
	</div>
</div>
</body>
</html>