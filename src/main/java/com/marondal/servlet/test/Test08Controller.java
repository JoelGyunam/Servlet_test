package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.buf.StringUtils;

@WebServlet("/servlet/test08")
public class Test08Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String keyword = request.getParameter("keyword");
		

		int resultNum = 0;
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));

		if(keyword.isEmpty()) {
			out.println("<script>alert('키워드를 입력해 주세요.');history.back()</script>");
		} else if (!keyword.isEmpty()) {
			for(int i = 0; 0 < list.size(); i++) {
				String targetLine = list.get(i);
				if(targetLine.contains(keyword)==true) {
					int keywordAt = 0;
					int keywordLenght = keyword.length();
					keywordAt = targetLine.indexOf(keyword);
					String sentenceStarts = targetLine.substring(0,keywordAt);
					String sentenceEnds = targetLine.substring(keywordAt + keywordLenght);
	
					out.println(sentenceStarts);
					out.println("<b>" + keyword + "</b>");
					out.println(sentenceEnds + "<hr>");
					resultNum ++;
				}; 
			};
		} else if(resultNum == 0) {
			out.println("<script>alert('검색 결과가 없습니다.');history.back()</script>");
		};
	};
}

