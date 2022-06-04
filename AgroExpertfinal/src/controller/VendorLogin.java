package controller;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dao.VendorDao;


@WebServlet("/VendorLogin")
public class VendorLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
			String email=request.getParameter("email");
			System.out.println(email);
		
			
		
			String password=request.getParameter("password");
			System.out.println(password);
			
	

			if(VendorDao.validate(email, password))
			{
				
				HttpSession session=request.getSession();
				
				session.setAttribute("VendorEmail",email);
				
				
				 out.println("<script type=\"text/javascript\">");
				  out.println("alert(' Vendor Login Sucessfully..');");
				  out.println("location='VendorHome.jsp';");
				  out.println("</script>");
			}
			else {
				 out.println("<script type=\"text/javascript\">");
				  out.println("alert('Incorrect details ..');");
				  out.println("location='vendorlogin.jsp';");
				  out.println("</script>");
			}
		
		}
	}


