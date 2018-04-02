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

public class Registeration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,

			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String UserName = request.getParameter("username");
		String NewPassword = request.getParameter("newpassword");
		String ReenterPassword = request.getParameter("reenterpassword");
		String UserType = request.getParameter("usertype");
		String Email = request.getParameter("email");
		String ContactNumber = request.getParameter("contactnumber");
		String Address = request.getParameter("address");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/srinu", "root", "");
			PreparedStatement pst = con
					.prepareStatement("insert into register values(?,?,?,?,?,?,?,?)");
			pst.setString(1, "");
			pst.setString(2, UserName);
			pst.setString(3, NewPassword);
			pst.setString(4, ReenterPassword);
			pst.setString(5, UserType);
			pst.setString(6, Email);
			pst.setString(7, ContactNumber);
			pst.setString(8, Address);
			pst.executeUpdate();
			response.sendRedirect("login.jsp");

		} catch (ClassNotFoundException | SQLException e) {
			System.out.println(e);
		}

	}
}
