

<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <% 
    if (session.getAttribute("username")==null)
	{
		response.sendRedirect("index.html");
	}
   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<title>Pollena Minima | Contact</title>
<meta charset="utf-8">
<link href="css/style.css" rel="stylesheet" type="text/css">
<!--[if IE 6]><link href="css/ie6.css" rel="stylesheet" type="text/css"><![endif]-->
<!--[if IE 7]><link href="css/ie7.css" rel="stylesheet" type="text/css"><![endif]-->
</head>
<body>
<div id="background">
  <div id="page">
    <div class="header">
      <div class="footer">
        <div class="body">
          <div id="sidebar"> <a href="#"><img id="logo" src="images/logo.gif" with="154" height="74" alt=""></a>
            <ul class="navigation">
              <li><a href="Medicine.jsp">MEDICINES</a></li>
              <li class="active"><a href="Viewpurchase.jsp"></a>PurchaseRecords</li>
              <li><a href="Changepassword.jsp">ChangePassword</a></li>
              <li><a href="createuser.jsp">CreateUser</a></li>
			  <li><a href="logdetails.jsp">LoginDetails</a></li>
              <li><a href="logout.jsp">Logout</a></li>
            </ul>
            >
          </div>
          <div id="content">
            <div class="content">
             <body>
	
	<div class="mystyle">
		<%!ResultSet rs;
	Connection con;
	Statement stmt;%>
		<%
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/srinu", "root", "");
			stmt = con.createStatement();
			String q = "select * from productdetails";
			rs = stmt.executeQuery(q);
			
		%>
	</div>
	<div class="mystyle">
	<center>
		<table border="2">
			<tr>
				<th>S.No</th>
				<th>ProductName</th>
				<th>ProductQuantity</th>
				<th>ProductPrice</th>
			
			
			</tr>
			<%while (rs.next()) { %>
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>

				<%
			}
		%>
			</tr>
		</table>
		<a href="loguser.jsp">BACK</a>
	</center>
</div>
</body>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="shadow"> </div>
  </div>
</div>
</body>
</html>
