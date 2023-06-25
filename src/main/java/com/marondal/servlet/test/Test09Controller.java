package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		PrintWriter out = response.getWriter();
		
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String cv = request.getParameter("cv");
		
		if(name.isEmpty()) {
			out.println("<script>alert('이름을 입력해 주세요.');history.back()</script>");
		} else if(cv.isEmpty()) {
			out.println("<script>alert('자기소개서를 작성해 주세요');history.back()</script>");
		} else if(cv.length()<10) {
			out.println("<script>alert('자기소개서는 10자 이상 작성해주세요');history.back()</script>");
		} else 	out.println("<h3>"+name+"님 지원이 완료되었습니다.</h3><hr>");
				out.println("<div>지원 내용</div>");
				out.println("<div>" + cv + "</div>");
		
	}
	
}
