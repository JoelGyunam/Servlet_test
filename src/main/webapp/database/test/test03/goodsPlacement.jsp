<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.marondal.common.MysqlService"%>   
<%@ page import="java.sql.ResultSet"%>   

<%
	
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	
	String itemListQuery = "SELECT * FROM usedgoods AS a INNER JOIN seller AS b ON a.sellerId = b.id ORDER BY a.id DESC;";
	ResultSet resultSet = mysqlService.select(itemListQuery);
	
%>

	<div class="item-placement d-flex flex-wrap justify-content-center">
	
<%
	while(resultSet.next()){
		String id = resultSet.getString("id");
		String sellerId = resultSet.getString("sellerId");
		String title = resultSet.getString("title");
		String price = resultSet.getString("price");
		String nickname = resultSet.getString("nickname");
		String description = resultSet.getString("description");
		String image = resultSet.getString("image");
		if(image == null || image.equals("")){
			image = "https://oopy.lazyrockets.com/api/v2/notion/image?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fcbf4e54a-e9bd-42a8-bccd-555dd2d7d733%2FUntitled.png&blockId=c4b603d1-0ddb-4416-88dd-b371dde49927";
		}
%>	
		<div class="item-box m-2" id = "item-box">
			<div class="list-image">
				<div class="d-flex justify-content-center mt-1">
					<img src = "<%=image %>" height = "150" width = "280">
				</div>
				<h5 class="fw-bold m-2"><%=title %></h5>
				<div class="m-2"><%=price %>원</div>
				<div class="text-sig-col  m-2"><%=nickname %></div>
			</div>
		</div>
<%	}
%>	
	</div>
	
	<script>
			$(document).ready(function(){
				
				$(".item-box").hover(function(){
					  $(this).css("background-color", "#FF7F50");
					  }, function(){
					  $(this).css("background-color", "#00ff0000");
					});
				
		})
	</script>