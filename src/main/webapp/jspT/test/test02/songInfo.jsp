<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dataSet.jsp" %>

<%
// request.getParameter("keyword").equals(toList.get("title"))
// || request.getParameter("id").equals("6")
for(Map<String, Object> toList : musicList){
	String keywordParam = request.getParameter("keyword");
	String idParam = request.getParameter("id");
	String getTitle = (String)toList.get("title");
	String getId = String.valueOf(toList.get("id"));
	
	if(keywordParam == null){ // NullPointerException 방지
			keywordParam = "";	}
	
	if(idParam  == null){ // NullPointerException 방지
			idParam = "";	}	
	
	if((getTitle.toLowerCase()).equals((keywordParam.toLowerCase())) || getId.equals(idParam))	{
		title = (String)toList.get("title");
		singer = (String)toList.get("singer");
		album = (String)toList.get("album");
		playtimeM = (Integer)toList.get("time")/60;
		playtimeS = (Integer)toList.get("time")%60;
		composer = (String)toList.get("composer");
		lyricist = (String)toList.get("lyricist");
		thumbnail = (String)toList.get("thumbnail");
	} 
}
%>

	<div class="container">
		<h5 class="fw-bold">곡 정보</h5>
			<div class = "image-section border border-success">

<%
if(title!=null){ // 제목이 null이 아니면 상기 각 변수들에 세팅한 값을 넣은 정보 출력.
%>
				<div class = "image-section d-flex"> 
					<div class = "img-place d-flex align-items-center justify-content-center">
						<img width = "190px" src="<%=thumbnail%>">
					</div>
					<div class = "signer-text-info p-3">
							<h3 class="text-dark fw-light"><%=title %></h3>
							<div class="text-success fw-bold font-small mt-3"><%=singer%></div>
							<div>
								<table class="text-gray fw-light font-xsmall table-width mt-3">
									<tr>
										<td class="w-25">앨범</td>
										<td class="w-70"><%=album%></td>
									</tr>
									<tr>
										<td>재생시간</td>
										<td><%=playtimeM%> : <%=playtimeS%> </td>
									</tr>
									<tr>
										<td>작곡가</td>
										<td><%=composer%> </td>
									</tr>
									<tr>
										<td>작사가</td>
										<td><%=lyricist%> </td>
									</tr>
								</table>
							</div>
					</div>
				</div>
<%
} else {  // 제목이 null 이면 곡 정보 박스 안에 결과 없음 안내.
%>	
	<div class="text-center mt-5"> 검색된 결과가 없습니다. </div> 
<%
}
%>
			</div>
	</div>
	
	<div class="container">
		<br>
		<h5 class = "fw-bold">가사</h5>
		<hr>
		<div class = "font-small">가사 정보 없음</div>
		<br>
		<hr>
	</div>
