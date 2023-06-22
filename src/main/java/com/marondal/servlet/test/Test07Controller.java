package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String amount = request.getParameter("amount");
		
		if(address.isEmpty()) {
			out.println("<script>alert('주소를 입력해 주세요.');history.back()</script>");
		} else if(card.isEmpty()) {
			out.println("<script>alert('결제 카드를 입력해 주세요');history.back()</script>");
		} else if(amount.isEmpty()) {
			out.println("<script>alert('결제 금액을 입력해 주세요');history.back()</script>");
		} else if(!address.contains("서울시")) {
			out.println("<script>alert('배달 불가 지역입니다');history.back()</script>");
		} else if(card.equals("신한카드")) {
			out.println("<script>alert('결제 불가 카드입니다..');history.back()</script>");
		} else out.println("<html> <head> "
						+ "<title>결재 성공</title> "
						+ "<meta charset = \"utf-8\">"
						+ "</head>"
						+ "<body>"
						+ "<h3>" + address + " 배달 준비중</h3> <hr>"
						+ "<div>"
						+ 		"결제금액 : " + amount + "원"
						+ "</div>"
						+ "</body>"
						+ "</html>");
		};
	
}
