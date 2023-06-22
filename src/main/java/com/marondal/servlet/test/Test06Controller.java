package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		String number1 = "0";
		String number2 = "0";
		
		number1 = request.getParameter("number1");
		number2 = request.getParameter("number2");
		
		int calNum1 = Integer.parseInt(number1);
		int calNum2 = Integer.parseInt(number2);
		
		int addtion = calNum1 + calNum2;
		int substraction = calNum1 - calNum2;
		int multiplication = calNum1 * calNum2;
		int division = calNum1 / calNum2;
		
		out.println("{" + "\"addtion\": " + "\"" + addtion + "\"" + ", \"substraction\": " + "\"" + substraction +  "\"" + ", \"multiplication\": " + "\"" + multiplication + "\"" +", \"division\": " + "\""+ division+ "\"" + "}");
		
	};
	
}
