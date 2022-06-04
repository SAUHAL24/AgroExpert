package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnect.Dataconnection;


@WebServlet("/OTP")
public class OTP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out=response.getWriter();
String otp=request.getParameter("OTP");
System.out.println(otp);

HttpSession s3=request.getSession();
String email=(String)s3.getAttribute("OTPMail");

try {
	Connection con=Dataconnection.getConnection();
	
	String qery="select * from farmerregister where email='"+email+"'";
	PreparedStatement ps=con.prepareStatement(qery);
	ResultSet rs=ps.executeQuery();
	
	while(rs.next())
	{
		String otp1=rs.getString(7);
		
		if(otp.equals(otp1))
		{
			  out.println("<script type=\"text/javascript\">");
			  out.println("alert('OTP verified sucessfully..');");
			  out.println("location='UpdatePass.jsp';");
			  out.println("</script>");
		}
		else
		{
			out.println("<script type=\"text/javascript\">");
			  out.println("alert('Incorrect otp..');");
			  out.println("location='EnterOTP.jsp';");
			  out.println("</script>");
		}
	}
	
} catch (Exception e) {
e.printStackTrace();
}
		
	}

}
