package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		out.println(loginCheck(id,pw));

	};

	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("pw", "asdf");
	        put("name", "김인규");
	    }
	};
	
	
	private String loginCheck(String id, String pw) {
		if(userMap.get("id").equals(id) && userMap.get("pw").equals(pw)) {
				return "<h1>" + userMap.get("name") + "님 환영합니다.</h1>";
		} else if (!userMap.get("id").equals(id)) {
			return "<script>alert('잘못된 id 입니다');history.back();</script>";
		}
		else if (!userMap.get("pw").equals(pw)) {
			return "<script>alert('잘못된 pw 입니다');history.back();</script>";
		}
		else return "<script>alert('잘못된 ID 혹은 pw 입니다');history.back();</script>";
	};
	

}
