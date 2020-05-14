package servlet.cate;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.SecondHand_cate;
import service.categorydao;


@WebServlet("/manager/admin_cateselect")
public class cateselect extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		ArrayList<SecondHand_cate> catelist=categorydao.selectall();
		
		request.setAttribute("catelist",catelist);
		request.getRequestDispatcher("admin_cate.jsp").forward(request, response);
		
		
		
	}


}
