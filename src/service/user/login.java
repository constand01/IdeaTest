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
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");    //设置字符局
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");     //获取用户输入的用户名和密码
		
		int count=userdao.selectbyna(username,password);     //查找
		if(count >0) {
			HttpSession session=request.getSession();    //获取session对象
			
			SecondHand_user user=userdao.selectadmin(username,password);       //查找用户状态标志，是否为管理员
		
			session.setAttribute("name", user);
			session.setAttribute("isLogin","1");            //把登录标志保存到session对象中，方便过滤器检查
			
			if(user.getUser_status()==2) {
				session.setAttribute("isAdminLogin","1");
			}else {
				session.setAttribute("isAdminLogin","0");              //把管理员标志保存到session对象中，方便过滤器检查
			}
			
		
			response.sendRedirect("indexselect");
		}else {
			PrintWriter out=response.getWriter();
			out.write("<script>");
			out.write("alert('用户登录失败');");
			out.write("location.href='login.jsp';");
			out.write("</script>");
		}
	}

}
