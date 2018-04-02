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

public class Changepassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String CurrentPassword = request.getParameter("currentpassword");
		String NewPassword = request.getParameter("newpassword");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/srinu", "root", "");
			PreparedStatement pst = con
					.prepareStatement("Update register SET NewPassword='"
							+ NewPassword + "', ReenterPassword='"
							+ NewPassword + "' where NewPassword='"
							+ CurrentPassword + "'&& UserName='"+username+"'");
System.out.println("==================================");
			pst.executeUpdate();
response.sendRedirect("loguser.jsp");
			/*
			 * int i = pst.executeUpdate("update register set currentpassword='"
			 * + newpassword + "'");
			 */
			/*
			 * pst.setString(1, ""); pst.setString(2, UserName);
			 * pst.setString(3, CurrentPassword); pst.setString(4, NewPassword);
			 * pst.setString(5, ReenterPassword);
			 * response.sendRedirect("login.jsp");
			 */
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println(e);
		}

	}
}
