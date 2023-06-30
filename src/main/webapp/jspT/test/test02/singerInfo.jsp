<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dataSet.jsp" %>



		<section class="main-content">
			<div class="container">			
				<div class = "image-section border border-success">
					<div class = "image-section d-flex">
						<div class = "img-place d-flex align-items-center justify-content-center">
							<img width = "190px" src="<%=artistInfo.get("photo") %>">
						</div>
						<div class = "signer-text-info p-3">
								<h3 class="fw-bold"><%=artistInfo.get("name") %></h3>
								<div class="text-dark"><%=artistInfo.get("agency") %></div>
								<div><%=artistInfo.get("debute") %> 데뷔</div>
						</div>
					</div>
				</div>
				
				<div>
					<h3 class="fw-bold m-3">곡 목록</h3>
					<table class = "table text-center">
						<thead>
							<tr>
								<th>no</th>
								<th>제목</th>
								<th>앨범</th>
							</tr>
						</thead>
						<tbody>
						
<%
	for(Map<String,Object> toLine : musicList){
%>
							<tr>
								<td><%=toLine.get("id") %></td>
								<td><a class = "text-decoration-none" href = "http://localhost:8080/jspT/test/test02/test02_song.jsp?id=<%=toLine.get("id")%>&keyword=<%=toLine.get("title")%>"> <%=toLine.get("title") %></a>								</td>
								<td><%=toLine.get("album") %></td>
							</tr>
<%
}
%>
							
							
						</tbody>
					</table>
				</div>
			</div>
		</section>