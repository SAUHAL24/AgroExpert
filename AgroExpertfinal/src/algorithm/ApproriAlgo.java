package algorithm;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import bean.CropBean;

/**
 * Servlet implementation class ApproriAlgo
 */
@WebServlet("/ApproriAlgo")
public class ApproriAlgo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		HttpSession menuSession=request.getSession();
		ArrayList<CropBean>arrayListMenu=new ArrayList<CropBean>();
		
		String csvFile = "D:\\AgroExpert1.csv";
	    String line = "\n";
	    String cvsSplitBy = ",";
	    String[] inputArray = request.getParameterValues("region");

	    for (int i = 0; i < inputArray.length; i++)
	    {
		System.out.println(inputArray[i]);
	    }

	    ArrayList<CropBean> ms1=new ArrayList<CropBean>();
	    
	    try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) {

	        while ((line = br.readLine()) != null) 
	        {
	            // use comma as separator
	        	System.out.println("------------------------------");
	        	System.out.println(line);
	         	System.out.println("------------------------------");
	            String[] firstStep = line.split(cvsSplitBy);
	            
	            System.out.println(" [Id=" + firstStep[0] +", Region=" + firstStep[1] + ",Crop=" + firstStep[2] +"]");
	     
	            CropBean ms=new CropBean();
	         
	            ms.setId(firstStep[0]);
	            ms.setRegion(firstStep[1]);
	           
	            ms.setCrop(firstStep[2]);
	            ms1.add(ms);
	        }

	        Iterator<CropBean> itr1 = ms1.iterator();
	        while (itr1.hasNext()) 
	        { 
	        	CropBean itrMenu=itr1.next(); 
	         
	           
	            String[] ingredientsList=itrMenu.getRegion().split("/");
	            System.out.println(ingredientsList[1]);
	            int resultCount=0;
	            
	            for (int i=0;i<ingredientsList.length;i++)
	            {
	            	for(int j=0;j<inputArray.length;j++)
	            	{
	            		if(ingredientsList[i].equalsIgnoreCase(inputArray[j]))
	            		{
	            			resultCount++;
	            		}
	            		
	            	}
	            }
	            
	            if(resultCount==ingredientsList.length)
	            {

	            	
	            	 System.out.println("Prediction of Crop is:"+itrMenu.getCrop());
	            	
	            	 CropBean fp=new CropBean();
	            	
	            	 fp.setCrop(itrMenu.getCrop());
	         
	            	 
	            	 arrayListMenu.add(fp);
	            	 
	            	
	            }
	            
	            
	            
	        }
	       
	        
	    } catch (ArrayIndexOutOfBoundsException exception) {
	        exception.printStackTrace();
	    }
		
	    menuSession.setAttribute("Menu", arrayListMenu);
		RequestDispatcher dispatcher= request.getRequestDispatcher("CropRecommend.jsp");
		dispatcher.forward(request, response);
		}

}