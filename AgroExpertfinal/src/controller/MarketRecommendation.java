package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import dbconnect.Dataconnection;

@WebServlet("/MarketRecommendation1")
public class MarketRecommendation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String crop=request.getParameter("crop");
		String date=request.getParameter("date");
		String season=request.getParameter("season");
		System.out.println(crop);
		System.out.println(date);
        System.out.println(season);
		/*String date = "12/8/2012";*/
		String[] dateParts = date.split("-");
		System.out.println(Arrays.toString(dateParts));
		String day = dateParts[2]; 
		System.out.println("Current day"+day);
		String month = dateParts[1];
		System.out.println("Current month"+month);
		String year = dateParts[0];
		
		
		System.out.println(year);
		
		
        
        ArrayList<String>market=new ArrayList<>();
        ArrayList<Float>rate=new ArrayList<>();
        ArrayList<Float>lowrate=new ArrayList<>();
        ArrayList<Float>highrate=new ArrayList<>();
        ArrayList<Float>AvgRate=new ArrayList<>();
        
        try {
			
        	Connection con=Dataconnection.getConnection();
        	String query="select * from marketdata";
        	PreparedStatement ps=con.prepareStatement(query);
        	ResultSet rs=ps.executeQuery();
        	while(rs.next())
        		
        	{
        		
        	double Rate=rs.getDouble(4);
        	double LowRate=rs.getDouble(7);
        	double HighRate=rs.getDouble(6);
        	String Market=rs.getString(5);
        	String Season=rs.getString(8);
        	String Crop=rs.getString(2);
        	
        	System.out.println(Season);
        	System.out.println(Crop);
        	System.out.println(Rate);
        	System.out.println(LowRate);
        	System.out.println(HighRate);
        	System.out.println(Market);
        	
        	
        	}
        }
		 catch (Exception e) 
		{
			e.printStackTrace();
		}
        
        try {
			
		
        	
        	Connection con1=Dataconnection.getConnection();
        	String query1="select * from marketdata where cropname='"+crop+"' and date='"+date+"' and season='"+season+"'";
        	PreparedStatement pst=con1.prepareStatement(query1);
        	ResultSet rs1=pst.executeQuery();
        	
        	while(rs1.next())
        		
        	{
        		if(date.contains(month))
        		{
        		float Rate=rs1.getFloat(4);
        		float LowRate=rs1.getFloat(7);
        		float HighRate=rs1.getFloat(6);
        		
        		AvgRate.add(Rate);
        		lowrate.add(LowRate);
        		highrate.add(HighRate);
        		
        		}
        		}
        } catch (Exception e) {
			e.printStackTrace();
		}
        	
    
}
}
        
        
		

