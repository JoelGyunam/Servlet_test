package com.marondal.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/test01")
public class Test01Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		//접속
		mysqlService.connect();
		
		// 매물 테이블에 한 줄 인서트
		// realtorId	address	area	type	price	rentPrice
		// 3	헤라펠리스 101동 5305호	350	매매	1500000	NULL

		String insertQuery = "INSERT INTO `real_estate` (`realtorId`,`address`,`area`,`type`,`price`,`rentPrice`)\r\n"
				+ "VALUES\r\n"
				+ "(3,'헤라펠리스 101동 5305호',350,'매매',1500000,NULL);";
		int count = mysqlService.update(insertQuery);
		out.println("삽입된 행의 갯수 : " + count);
		
		// 매물 테이블에서 매물 주소, 면적, 타입을 id 내림차순으로 10개 출력
		String selectQueryShowAll = "SELECT `id`,`address`,`area`,`type` FROM `real_estate`\r\n"
				+ "ORDER BY `id` DESC\r\n"
				+ "LIMIT 10;";
		ResultSet resultSet = mysqlService.select(selectQueryShowAll);
		
		try {
			while(resultSet.next()) {
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				out.println("매물 주소 : " + address + "면적 : " + area + "타입 : " + type);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
}
