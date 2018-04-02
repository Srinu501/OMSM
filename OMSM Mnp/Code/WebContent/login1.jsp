<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>User Home Page</title>
</head>
<body>
<%
		String username = request.getParameter("uname");
		String password = request.getParameter("pwd");
		
		//HttpSession session = request.getSession();

		//try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/srinu", "root", "");
			Statement stmt = con.createStatement();
			String q = "select * from register where UserName='" + username
					+ "' && NewPassWord='" + password + "'";
			ResultSet rs = stmt.executeQuery(q);                     
        if(rs.next()) 
		{
        	String st = rs.getString(2);
			if (st.equals("admin")) {

				session.setAttribute("username", username);
				response.sendRedirect("loguser.jsp");

			}
			else {

				session.setAttribute("username", username);
				response.sendRedirect("Viewdetails.jsp");

			} 		}
        else
        {
        	%><script>
        	alert("in valid username&password");
        	window.location("login.html");
        	</script>
        	<%
        	//response.sendRedirect("login.html");
        }
        		/* } catch (Exception e) {
			System.out.println(e);
		} */
       
%>


</body>
</html>