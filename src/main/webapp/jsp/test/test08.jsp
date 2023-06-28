<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 정보</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<% 
	String idSearch = request.getParameter("id");
	
	String titleSearch = null;
	String authorSearch = null;
	String publisherSearch = null;
	String imgSearch = null;

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
	
	for(Map<String, Object> searchId : list){
		if(String.valueOf(searchId.get("id")).equals(idSearch)){
			titleSearch = (String)searchId.get("title");
			authorSearch = (String)searchId.get("author");
			publisherSearch = (String)searchId.get("publisher");
			imgSearch = (String)searchId.get("image");
		}
	}
%>
<div class = "container d-flex">
	<div>
		<img src="<%=imgSearch %>" alt="<%=titleSearch %>" width="300px" >
	</div>

	<div class="p-1">
		<div>
			<div class = "fw-bold display-3 p-1"><%=titleSearch %></div>
			<div class = "display-4 text-primary p-1"><%=authorSearch %></div>
			<div class = "fw-light display-5 text-muted p-1"><%=publisherSearch %></div>
		</div>
	</div>
</div>


</body>
</html>