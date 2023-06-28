<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<%@ page import="java.util.Map.Entry" %>    
<%@ page import="java.util.Map" %>    
<%@ page import="java.util.HashMap" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>

<%
	List<Map<String, Object>> list = new ArrayList<>(); // map 변수에서 발생할 값들을 어레이리스트 형태로 담기위한 통.
	Map<String, Object> map = new HashMap<String, Object>(); //map 변수 명으로 해시맵 선언
	
	map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } }; // name 이라는 키에 버거킹, menu 키에 햄버거, point 키에 4.3
	list.add(map); // list 에 map 에 넣은 값 담기.
	map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } }; // 위에 버거킹 대신 bbq 값으로 바뀜.
	list.add(map); // list 에 버거킹 담기
	map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	list.add(map);

	double pointParam = 0;
	String menuParam = request.getParameter("menu");
	if(request.getParameter("point") == null){
		pointParam = 0;
	} else pointParam = Double.valueOf(request.getParameter("point"));
	
	if(menuParam.isEmpty()){	
%>
		<script> alert("메뉴를 입력해 주세요");history.back(); </script>
		
<% 																	;
	}
	
	// out.println(list.get(0)); // 가게 정보들이 담긴 list 변수명의 arraylist 에서 n번째 값 빼오기. -> {name=BBQ, menu=치킨, point=3.8}
	// out.println("여기다" + list.get(0).get("menu") + "여기다"); // 리스트 안에 있는 맵 값에서 key 에 해당하는 값 가져오기
	
	
	
	//out.println(getKey(map,"치킨"));
	// String getName = (String) map.get("name"); // 맵 에서 "name" 키에 해당하는 값 가져오기
	// out.println(getName); 
	
	// for(Map<String, Object> toLine : list){ // 리스트 어레이리스트에서 한 줄씩 꺼내서 toLine 변수에 저장하고
	// 	String menuLine = (String)toLine.get("menu"); // 한줄 꺼내서 toLine 에 넣은 값 중 메뉴 라는 키에 해당 하는 값을 메뉴라인 변수에 넣기
	// }
	
%>

	<div class="container">
		<h2 class="text-center">검색 결과</h2>
		
		<table class="table text-center">
			<thead>
				<tr>
					<th>메뉴</th>
					<th>상호</th>
					<th>별점</th>
				</tr>
			</thead>
			<tbody>
				<%
					for(Map<String, Object> toLine : list){
						String menuCasting = (String)toLine.get("menu");
						if(menuCasting.contains(menuParam) && (Double)toLine.get("point")>=pointParam){	
							String menuValue = (String)toLine.get("menu");
							String nameValue = (String)toLine.get("name");
							double pointValue = (Double)toLine.get("point");
				%>
					<tr>
						<td><%=menuValue %></td>
						<td><%=nameValue %></td>
						<td><%=pointValue %></td>
					</tr>
					<%	}
					};
				%>
			</tbody>
		</table>
	</div>


</body>
</html>