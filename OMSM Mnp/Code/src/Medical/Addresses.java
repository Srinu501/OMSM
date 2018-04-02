package Medical;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Addresses extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		String[] HouseNo = new String[2];
		String[] Street = new String[2];
		String[] City = new String[2];
		String[] Country = new String[2];
		int i=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/srinu", "root", "");
			System.out.println("haiiiiiiii");

		
	
		HouseNo[i]= request.getParameter("addresses[0].houseNo");
		Street[i] = request.getParameter("addresses[0].street");
		City[i] = request.getParameter("addresses[0].city");
		Country[i] = request.getParameter("addresses[0].country");
		
		
		System.out.println("haiiiiiiii");

		
		
			PreparedStatement pst = con
					.prepareStatement("insert into addressestable values(?,?,?,?)");
			pst.setString(1,  HouseNo[i] );
			pst.setString(2,  Street[i]);
			pst.setString(3,  City[i]);
			pst.setString(4,  Country[i]);
			
			int a=pst.executeUpdate();
			if(a!=0)
			{
				
			
			System.out.println("haiiiiiiii");
			
			}i++;
			
			} catch(ClassNotFoundException | SQLException e) {
			System.out.println(e);
		}

	}

	}


