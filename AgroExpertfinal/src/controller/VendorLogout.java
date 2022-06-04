package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class VendorLogout
 */
@WebServlet("/VendorLogout")
public class VendorLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		HttpSession s4=request.getSession();
		s4.invalidate();
		
		 out.println("<script type=\"text/javascript\">");
		  out.println("alert(' Vendor LogOut Sucessfully..');");
		  out.println("location='index.jsp';");
		  out.println("</script>");
	}

	

}
