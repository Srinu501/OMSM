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

public class Insertmed extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ProductName = request.getParameter("productname");
		String CompanyName = request.getParameter("companyname");
		String ProductQuality = request.getParameter("ProductQuality");
		String ProductQuantity = request.getParameter("productquantity");
		String ProductPrice = request.getParameter("productprice");	
		String ExpiryDate = request.getParameter("expirydate");
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/srinu", "root", "");
			PreparedStatement pst = con
					.prepareStatement("insert into insertmedicine values(?,?,?,?,?,?,?)");
			pst.setString(1, "");
			pst.setString(2, ProductName);
			pst.setString(3, CompanyName);
			pst.setString(4, ProductQuality);
			pst.setString(5, ProductQuantity);
			pst.setString(6, ProductPrice);
			
			pst.setString(7, ExpiryDate);
			
			pst.executeUpdate();
			response.sendRedirect("Insertmedicine.jsp");

		} catch (ClassNotFoundException | SQLException e) {
			System.out.println(e);
		}

		
	}

}
