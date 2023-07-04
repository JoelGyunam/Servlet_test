package com.marondal.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/bookmarks/add")
public class AddBookmarkController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		String addBookmarkName = request.getParameter("siteName");
		String addBookmarkUrl = request.getParameter("siteUrl");
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		
		String addBookmarkQry = "INSERT INTO `bookmarks` (`name`,`url`)\r\n"
				+ "VALUE\r\n"
				+ "('" + addBookmarkName + "','" + addBookmarkUrl + "');";
		
		mysqlService.update(addBookmarkQry);
		
		response.sendRedirect("/database/test/test02/BookmarkList.jsp");
		
		// mysqlService.disconnect();
		
	}
}
