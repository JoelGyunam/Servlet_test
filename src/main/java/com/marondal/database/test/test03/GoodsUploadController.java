package com.marondal.database.test.test03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;
@WebServlet("/db/test03/goodsUpload")
public class GoodsUploadController extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		PrintWriter output = response.getWriter();

		
		String sellerId = request.getParameter("nickname");
		String title = request.getParameter("title");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		String image = null;
		
		if(request.getParameter("image") != null) {
			image = request.getParameter("image");
		}
		
		MysqlService mysqlService = MysqlService.getInstance();
		String goodsUploadQuery = "INSERT INTO `usedgoods` (`sellerID`,`title`,`price`,`description`,`image`)\r\n"
				+ "VALUE ('" + sellerId + "','" + title + "','" + price + "','" + description + "','" + image + "');";
		mysqlService.update(goodsUploadQuery);
		
		// output.println(goodsUploadQuery);
		response.sendRedirect("/database/test/test03/goodsList.jsp");
	}
}
