package controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import algorithm.MultiRegression;
import bean.DataBean;
import dbconnect.Dataconnection;

/*@WebServlet("/PredictionController")*/
@WebServlet(name="PredictionController", urlPatterns={"/PredictionController"})
public class PredictionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();  
		response.setContentType("text/html");
		try 
		{
		Connection c=Dataconnection.getConnection();
		Statement s=c.createStatement();
		ResultSet r=s.executeQuery("select DISTINCT cropname from marketdata where cropname='"+request.getParameter("crop")+"'");
		if(r.next()==true)
		{
		ArrayList<String> market=new ArrayList<String>();
		ArrayList<Float> avgRate =new ArrayList<Float>();
		ArrayList<Float> highRate =new ArrayList<Float>();
		ArrayList<Float> lowRate =new ArrayList<Float>();
		DecimalFormat df = new DecimalFormat("#.##");
		Connection con=Dataconnection.getConnection();
		try
		{
		
			Statement smt = con.createStatement();              ///**************
			ResultSet rs=smt.executeQuery("select DISTINCT market from marketdata");
			while(rs.next())
			{
				market.add(rs.getString(1));
				System.out.println(rs.getString(1));
				System.out.println("Have to CHANGE");
			}
		} catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// Market wise Regression
		ArrayList<DataBean> result=new ArrayList<DataBean>();
		for(int n=0;n<market.size();n++)
		{
			avgRate.clear();
			highRate.clear();
			lowRate.clear();
			
			String cropname=request.getParameter("crop");
		   
			String season=request.getParameter("season");
		    System.out.println(market.get(n));
		    try 
		    {
				Statement smt1=con.createStatement();
				ResultSet rs1=smt1.executeQuery("select rate,highrate,lowrate,date from marketdata where cropname='"+cropname+"' and season='"+season+"' and market='"+market.get(n)+"'");
				while(rs1.next())
				{
					
						avgRate.add(rs1.getFloat(1));
						highRate.add(rs1.getFloat(2));
						lowRate.add(rs1.getFloat(3));
					
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    
		//Data
				
		MultiRegression mr = new MultiRegression();
		ArrayList<Float> yList =new ArrayList<Float>();
		ArrayList<Float> x1List =new ArrayList<Float>();
		ArrayList<Float> x2List =new ArrayList<Float>();
		
		
		float sumx21=0,sumyx2=0, sumx22=0, sumyx1=0, sumx11=0, Ybar=0, X1bar=0, X2bar=0;
		
		for(int i=0;i<avgRate.size();i++)  //avg rate cal control change
		{
			float y = mr.calculateSmallavg(avgRate.get(i), avgRate);
			Ybar= avgRate.get(i)-y;
			System.out.println("value of Ybar= "+Ybar);
			yList.add(y);
			
			float x1 = mr.calculateSmallHigh(highRate.get(i), highRate);  //high rate cal control change
			X1bar=highRate.get(i)-x1;
			System.out.println("value of X1bar= "+X1bar);
			x1List.add(x1);
			
			float x2 = mr.calculateSmallLow(lowRate.get(i), lowRate);  ////low rate cal control change
			X2bar=lowRate.get(i)-x2;
			System.out.println("value of X2bar= "+X2bar);
			x2List.add(x2);
						
			sumx11 +=x1*x1;
			sumx22 +=x2*x2;
			sumx21 +=x2*x1;
			
			sumyx1 +=y*x1;
			sumyx2 +=y*x2;
						
		}
		
		// formula for b1 (page no. 3 )
		
		float b1= ((sumx22*sumyx1)- (sumx21*sumyx2))/((sumx11*sumx22)-(sumx21*sumx21));
		System.out.println("value of b1= "+b1);
		// formula for b2
		
		float b2= ((sumx11*sumyx2)-(sumx21*sumyx1))/((sumx11*sumx22)-(sumx21*sumx21));
		System.out.println("value of b2= "+b2);
		
		// formula for b0
						
		float b0=Ybar-b1*highRate.get(0)-b2*lowRate.get(0);
		
		float e=1;
		
		System.out.println("value 1= "+highRate.get(0));
		System.out.println("value 2= "+lowRate.get(0));
		
		//main code
		float Y= b0+b1*highRate.get(0)+b2*lowRate.get(0)+e;
		System.out.println("value of Y= "+Y);	
		result.add(new DataBean(market.get(n), Y));
		}
		System.out.println("................"+result);
		HttpSession hsession=request.getSession();
		hsession.setAttribute("result", result);
	/*	response.sendRedirect("ViewMarketRecommend.jsp");*/
		
		
		response.setContentType("text/html");  
		out.println("<script type=\"text/javascript\">");  
		out.println("alert('Selected crop is...');");
		out.println("location='ViewMarketRecommend.jsp';");
		out.println("</script>");
		}
		else
		{
			
			response.setContentType("text/html");  
			out.println("<script type=\"text/javascript\">");  
			out.println("alert('Selected crop data does not exist...');");
			out.println("location='ViewMarketRecommendation.jsp';");
			out.println("</script>");
		}
		} 
		catch (SQLException e1) 
		{
			
			e1.printStackTrace();
		}
	}

}
