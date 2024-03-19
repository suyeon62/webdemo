package servletdemo.part02;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginPro")
public class LoginProController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		String fid = req.getParameter("fid");
		String fpass = req.getParameter("fpass");
		
		System.out.printf("%s %s\n", fid, fpass);
		
		req.setAttribute("fid",fid);
		req.setAttribute("fpass",fpass);
		
		MemberDTO dto = new MemberDTO();
		dto.setFid(fid);
		dto.setFpass(fpass);
		req.setAttribute("dto", dto);
		
		String path = "/servletview/part02/loginResult.jsp";
		RequestDispatcher dis = req.getRequestDispatcher(path);
		dis.forward(req, resp);
	}//end doPost()
	

}//end class
