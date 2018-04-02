<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	
		String UserName = request.getParameter("username");
		String NewPassword = request.getParameter("newpassword");
		String ReenterPassword = request.getParameter("reenterpassword");
		String Email = request.getParameter("email");
		String ContactNumber = request.getParameter("contactnumber");
		String Address = request.getParameter("address");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/srinu", "root", "");
			PreparedStatement pst = con
					.prepareStatement("insert into register values(?,?,?,?,?,?,?)");
			pst.setString(1, "");
			pst.setString(2, UserName);
			pst.setString(3, NewPassword);
			pst.setString(4, ReenterPassword);
			pst.setString(5, Email);
			pst.setString(6, ContactNumber);
			pst.setString(7, Address);
			pst.executeUpdate();
			response.sendRedirect("loguser.jsp");

		} catch (SQLException e) {
			System.out.println(e);
		}

	%>

</body>
</html>