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

@WebServlet("/AddMarketData")
public class AddMarketData extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String cropname=request.getParameter("cropname");
		String date=request.getParameter("date");
		String rate=request.getParameter("rate");
		String market=request.getParameter("address");
		String highrate=request.getParameter("HighRate");
		String lowrate=request.getParameter("Lowrate");
		String season=request.getParameter("season");
		System.out.println(cropname);
		System.out.println(date);
		System.out.println(rate);
		System.out.println(market);
		System.out.println(highrate);
		System.out.println(lowrate);
		System.out.println(season);
		HttpSession s3=request.getSession();
		String VendorEmail=(String)s3.getAttribute("VendorEmail");
		System.out.println(VendorEmail);
		
		try {
			Connection con=Dataconnection.getConnection();
			String query="insert into marketdata (cropname, date, rate, market, highrate, lowrate, season,VendorEmail) values (?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, cropname);
			ps.setString(2, date);
			ps.setString(3, rate);
			ps.setString(4, market);
			ps.setString(5, highrate);
			ps.setString(6, lowrate);
			ps.setString(7, season);
			ps.setString(8, VendorEmail);
			int i=ps.executeUpdate();
			if(i>0)
			{
				  out.println("<script type=\"text/javascript\">");
				  out.println("alert(' Vendor Data Insert Sucessfully..');");
				  out.println("location='VendorHome.jsp';");
				  out.println("</script>");
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
				  out.println("alert('Data insert failed please try again..');");
				  out.println("location='VendorHome.jsp';");
				  out.println("</script>");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
