<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.marondal.common.MysqlService"%>   
<%@ page import="java.sql.ResultSet"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무마켓</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link href="style.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
</head>
<body>
	<div id = "wrap" class = "container">

	
		<jsp:include page="header.jsp"/>
		<jsp:include page="nav.jsp"/>

<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	String getIdsQuery = "SELECT `nickname`,`id` from `seller` ORDER BY `id` DESC;";
	ResultSet resultSet = mysqlService.select(getIdsQuery);
%>

		<section>
			<div>
				<div class="display-5 m-3">물건 올리기</div>
			
				<div>
					<form method = "get" action = "/db/test03/goodsUpload" onsubmit="return submitChecker();">
						<div class="d-flex">
							<select name="nickname" class="form-control m-1" id="nicknameSelectbox">
								<option value = "emptyNicknameSelectbox">아이디를 선택하세요</option>
<%
	while(resultSet.next()){
%>
								<option value = "<%=resultSet.getString("id")%>"><%=resultSet.getString("nickname")%></option>
<%	}

%>
							</select>
							<input type="text" class="form-control m-1" name = "title" placeholder="제목을 입력해 주세요" id="title">
							<input type="number" class="form-control m-1" name = "price" placeholder="가격 (예: 15000)" id = "price">
						</div>
							<textarea class="form-control m-1" rows="4" cols="50" name = "description" placeholder="설명을 입력해 주세요 :)" id="description"></textarea>
							<input type="text" class="form-control m-1" name = "image" placeholder="이미지 주소" id="img">
							
						<div class="d-flex justify-content-center">	
							<button type="submit" class="btn bg-sig-col text-white m-1 col-12" id = "submit">저장</button>
						</div>
					</form>
				</div>
			
			</div>
		</section>
	

		<jsp:include page="footer.jsp"/>
	
	
	</div>
	
	<script>
		function submitChecker(){
			var nickname = document.getElementById("nicknameSelectbox").value;
			var title = document.getElementById("title").value;
			var price = document.getElementById("price").value;
			var description = document.getElementById("description").value;	
			
			if(nickname == "emptyNicknameSelectbox"){
				alert("아이디를 선택해 주세요");
				return false;
			} else if (title == ""){
				alert("제목을 입력해 주세요")
				return false;
			} else if (price == ""){
				alert ("판매가격을 입력해 주세요");
				return false;
			}	else if (isNan(price)){
				alert ("판매가격은 숫자만 입력 가능합니다");
				return false;
			}	else if (description == "") {
				alert ("상품 설명을 입력해 주세요");
				return false;
			}
		};
	
		$(document).ready(function(){
		})  // submitChecker 를 돔트리 완성 후 스크립트를 실행하고 싶어서 ready 안에 넣었는데, 왜 ready 안에 넣으면 작동되지 않는가?
	</script>
	
</body>
</html>