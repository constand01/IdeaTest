package servlet.home;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.SecondHand_cate;
import service.categorydao;

/**
 * Servlet implementation class indexselect
 */
@WebServlet("/indexselect")
public class indexselect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		
		ArrayList <SecondHand_cate> flist= categorydao.selectcat("father");
		session.setAttribute("flist", flist);
		
		ArrayList <SecondHand_cate> clist= categorydao.selectcat("child");
		session.setAttribute("clist", clist);
		

		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
