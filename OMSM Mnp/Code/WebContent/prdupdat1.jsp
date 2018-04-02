<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>menu change</title>
</head>
<body>
<%
				try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srinu","root","");
				String nproductname=request.getParameter("nprdname");
				String oproduct=request.getParameter("oproduct");
				String cost=request.getParameter("price");
				PreparedStatement stmt=con.prepareStatement("update insertmedicine set ProductName=?,ProductPrice=? where ProductName=?");
				stmt.setString(1,nproductname);
				stmt.setString(2, cost);
				stmt.setString(3,oproduct);
				stmt.executeUpdate();
				response.sendRedirect("loguser.jsp");
				
				
				
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}


		 %>

</body>
</html>