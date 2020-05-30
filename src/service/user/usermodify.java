package service.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.SecondHand_user;
import service.userdao;

/**
 * Servlet implementation class usermodify
 */
@WebServlet("/usermodify")
public class usermodify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");//�����ַ���;
		response.setContentType("text/html;charset=utf-8");
		
		String username=request.getParameter("username");
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String sex=request.getParameter("sex");
		String year=request.getParameter("birthday");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String address=request.getParameter("address");
		String userstatus=request.getParameter("status");
		
		int status=1;
		
		if(userstatus!=null)
		{
			status=Integer.parseInt(userstatus);
		}
		
		SecondHand_user user=new SecondHand_user(username,name,password,sex,year,email,mobile,address,1);
		
		//加入到数据库的用户表中
		int count=userdao.update(user);
		if(count > 0) {
       HttpSession session=request.getSession();
			
			SecondHand_user u=userdao.selectbyid(username);
		
			session.setAttribute("name", u);
			response.sendRedirect("mygxin.jsp");
			
		}
		else
		{
			PrintWriter out=response.getWriter();
			out.write("<script>");
			out.write("alert('用户修改失败');");
			out.write("location.href='tousermodify?id="+username+"';");
			out.write("</script>");
		}
		
	}
	}
