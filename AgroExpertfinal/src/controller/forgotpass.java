package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnect.Dataconnection;
import algorithm.otp;

/**
 * Servlet implementation class forgotpass
 */
@WebServlet("/forgotpass")
public class forgotpass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
	String email=request.getParameter("email");
	System.out.println(email);
	
	String password=randomString.OTP(6);
	Mailer n=new Mailer();
	n.EmailSending(email, "OTP", password);
	
	
	try {
		
		Connection con=Dataconnection.getConnection();
		String qery="update farmerregister set password=? where email=?";
		PreparedStatement ps=con.prepareStatement(qery);
		ps.setString(1, password);
		ps.setString(2, email);
		int h=ps.executeUpdate();
		if(h>0)
		{
			HttpSession s2=request.getSession();
			s2.setAttribute("OTPMail", email);
			out.println("<script type=\"text/javascript\">");
			  out.println("alert('OTP send Sucessfully..');");
			  out.println("location='EnterOTP.jsp';");
			  out.println("</script>");
		}
		else
		{
			out.println("<script type=\"text/javascript\">");
			  out.println("alert('OTP not sent..');");
			  out.println("location='forgetpass.jsp';");
			  out.println("</script>");
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	
	}

}
