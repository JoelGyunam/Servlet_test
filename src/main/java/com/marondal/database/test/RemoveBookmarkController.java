package com.marondal.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/bookmarks/remove")
public class RemoveBookmarkController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		String removeBookmarkId = request.getParameter("id");
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		
		String removeBookmarkQry = "DELETE FROM `bookmarks` WHERE `id` = " + removeBookmarkId +";";
		
		mysqlService.update(removeBookmarkQry);
		
		// mysqlService.disconnect();
		response.sendRedirect("/database/test/test02/BookmarkList.jsp");
		

	}
	
	
}


