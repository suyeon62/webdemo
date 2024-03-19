package servletdemo.part03;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//http://localhost:8090/webdemo/memlist

@WebServlet("/meminsert")
public class MemInsertController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path="/servletview/part03/insert.jsp";
		RequestDispatcher dis=req.getRequestDispatcher(path);
		dis.forward(req, resp);

	} //end doGet()
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//post 방식으로 파라미터를 받아서 처리할 때는 UTF-8을 해줘야 한다.
		req.setCharacterEncoding("UTF-8");
		String name=req.getParameter("name");
		String pan=req.getParameter("age");
		int age = 0;
		if(pan!="") {
			age=Integer.parseInt(pan);
		}
		String loc=req.getParameter("loc");
		
		System.out.printf("%s %d %s", name, age, loc);
		
		MemDTO dto=new MemDTO();
		dto.setName(name);
		dto.setAge(age);
		dto.setLoc(loc);
		
		MemService service=new MemService();
		int chk=service.insertProcess(dto);
		System.out.printf("Insert Count : %d", chk);
		
		//서버에서 클라이언트에 memList 페이지를 요청하도록 응답을 해준다.
		resp.sendRedirect("memList");

	} //end doGPost()

	
} //end class
