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


@WebServlet("/password")
public class password extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

PrintWriter out=response.getWriter();

String password=request.getParameter("password");

System.out.println(password);
HttpSession s3=request.getSession();
String email=(String)s3.getAttribute("OTPMail");

try {
	Connection con2=Dataconnection.getConnection();
	String query="update farmerregister set password=? where email=?";
	PreparedStatement ps2=con2.prepareStatement(query);
	ps2.setString(1, password);
	ps2.setString(2, email);
	
	int k=ps2.executeUpdate();
	if(k>0)
	{
		out.println("<script type=\"text/javascript\">");
		  out.println("alert('Password set Sucessfully..');");
		  out.println("location='farmerlogin.jsp';");
		  out.println("</script>");
	}
	else
	{
		out.println("<script type=\"text/javascript\">");
		  out.println("alert('Incorrect details..');");
		  out.println("location='UpdatePass.jsp';");
		  out.println("</script>");
	}
} catch (Exception e) {
	e.printStackTrace();
}
	}

}
