package com.marondal.database.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/ex01")
public class Ex01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();

//		MysqlService mysqlService = new MysqlService();
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		// 접속
		mysqlService.connect();
		String slectQuery = "SELECT * FROM `usedgoods`;";
		ResultSet resultSet = mysqlService.select(slectQuery);
		
		out.println("<html><head><title>중고목록</title></head><body>");
		try {
			while(resultSet.next()) {
				String title = resultSet.getString("title");
				int price = resultSet.getInt("price");
				
				out.println("<div> 제목 : " + title + " 가격 : " + price + "원</div>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		String insertQuery = "INSERT INTO `usedgoods`\r\n"
				+ "(`sellerId`, `title`, `price`, `description`, `image`)\r\n"
				+ "value(3,'고양이 간식 팝니다',2000,'저희 고양이가 까탈스러워서 안먹어요',NULL)";
		int count = mysqlService.update(insertQuery);
		
		out.println("<div>삽입된 행의 갯수 : " + count + "</div>");
		
		
		out.println("</body></html>");
		
//		// mysql 접속후 조회
//		// 접속
//		try {
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			
//			// 접속주소, 아이디, 비밀번호
//			String url = "jdbc:mysql://localhost:3306/dulumary_0608";
//			String userid = "root";
//			String password = "root";
//			
//			// 접속
//			Connection connection = DriverManager.getConnection(url, userid, password);
//			Statement statement = connection.createStatement();
//			
//			// 쿼리 수행
//			String selectQuery = "SELECT * FROM `usedgoods`;";
//			ResultSet resultSet = statement.executeQuery(selectQuery);
//			
//			out.println("<html><head><title>매물목록</title></head><body>");
//			
//			while(resultSet.next()) {
//				String title = resultSet.getString("title");
//				int price = resultSet.getInt("price");
//				
//				out.println("<div> 제목 : " + title + " 가격 : " + price + "원 </div>");
//			}
//			
//			out.println("</body></html>");
//			
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
	}

}
