<%@page import="java.sql.*"%>
<html>
<head>
<style type="text/css">
table {
	width: 60%;
	border: medium;
	border-style: solid;
	text-align: center;
}

tr {
	border: thin;
	border-color: black;
}
</style>
</head>
<body>

	<div class="lab_details">
		<%
			String ProductName = request.getParameter("productname");
			
			
			
			Class.forName("com.mysql.jdbc.Driver");
		Connection	con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/srinu", "root", "");
		Statement	stmt = con.createStatement();
			
		response.sendRedirect("Medicine.jsp");
	
	
			%>

	</div>
</body>
</html>