package servletdemo.part01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// http://localhost:8090/webdemo/basic01

@WebServlet("/basic01")
public class Basic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Basic() {
        super();
    }


	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = resp.getWriter();
		out.write("<!DOCTYPE html>");
		out.write("<html>");
		out.write("<head><title>home page</title></head>");
		out.write("<body>");
		out.write("<p>servlet page</p>");
		out.write("<p>홈페이지</p>");
		out.write("</body></html>");
		out.close();
	}//end doGet()


}
