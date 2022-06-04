package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dao.Logindao;

/**
 * Servlet implementation class FarmerloginServlet
 */
@WebServlet("/FarmerloginServlet")
public class FarmerloginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
			String email=request.getParameter("email");
			System.out.println(email);
		
			
		
			String password=request.getParameter("password");
			System.out.println(password);
			
			String lat=request.getParameter("lat");
			String lon=request.getParameter("lon");
			System.out.println(lat);
			System.out.println(lon);
	

			if(Logindao.validate(email, password))
			{
				
				HttpSession session=request.getSession();
				
				session.setAttribute("email",email);
				session.setAttribute("lat",lat);
				session.setAttribute("lon",lon);
				
				
				 out.println("<script type=\"text/javascript\">");
				  out.println("alert(' Farmer Login Sucessfully..');");
				  out.println("location='farmerhome.jsp';");
				  out.println("</script>");
			}
			else {
				 out.println("<script type=\"text/javascript\">");
				  out.println("alert('Farmer  Not Login..');");
				  out.println("location='farmerlogin.jsp';");
				  out.println("</script>");
			}
		
		}
	}


