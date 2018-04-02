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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class cart
 */

public class cart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String productId=request.getParameter("productId");
		String productName=request.getParameter("productName");
		String productPrice=request.getParameter("productPrice");
		
		
		HttpSession session=request.getSession();
		String userName=(String) session.getAttribute("username");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/srinu", "root", "");
			PreparedStatement pst = con
					.prepareStatement("insert into cart values(?,?,?,?)");
			pst.setString(1, productId);
			pst.setString(2, productName);
			pst.setString(3, productPrice);
			pst.setString(4, userName);
			pst.executeUpdate();
			response.sendRedirect("Insertmedicine.jsp");

		} catch (ClassNotFoundException | SQLException e) {
			System.out.println(e);
		}

		
	}



	
	}


