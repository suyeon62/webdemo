package servletdemo.part02;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


// MVC 패턴을 이용한 모델 2방식은 서블릿으로 요청을 해야 한다.

// http://localhost:8090/webdemo/loginForm
@WebServlet("/loginForm")
public class LoginFormController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		String path = "/servletview/part02/loginForm.jsp";
		
		RequestDispatcher dis = req.getRequestDispatcher(path);
		dis.forward(req,  resp);
		
	}
}
