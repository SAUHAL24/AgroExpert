package dbconnect;

import java.sql.Connection;


import java.sql.DriverManager;

public class Dataconnection2 {
static Connection connection;
	
	public static Connection getConnection()
	{
		
		try
		{
			//DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver Registered....");
		connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/crop","root","root");
		
			System.out.println("Connection established....");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return connection;
		
			
	}	
}
