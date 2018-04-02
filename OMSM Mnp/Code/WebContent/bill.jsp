<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%if (session.getAttribute("username")==null)
	{
		response.sendRedirect("index.html");
	}
%>
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
              <li><a href="logout.jsp">Logout</a></li>
         
            </ul>
            
          </div>
          <div id="content">
            <div class="content">
             <body>
		<%ResultSet rs;
	 Connection con;
	 Statement stmt;%>
		<%
		String uName=(String)session.getAttribute("username");
		int i=0,total=0;
		try{
	
		
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/srinu", "root", "");
			stmt = con.createStatement();
			String q = "select ProductName,Price from acart";
			rs = stmt.executeQuery(q);
			
			%>
			<table>
			<tr>
				<th>S.No</th>
				<th>ProductName</th>
				<th> Cost</th>
				

			</tr>
			<%while (rs.next()) { %>
			
			     <%   String pName=rs.getString(1) ;
			         
			          String price =rs.getString(2);
			          int prc=Integer.parseInt(price);
			          
			          total=total+prc;
			          if(prc!=0){
			          i++;%>
			          <tr>
			 <td><%=i%></td>
			 <td><%=pName%></td>
             <td><%=price %></td>
             <%} %>

	</tr>
	
			<% }}
			catch (Exception e) {
				System.out.println(e);
			}

		%>
	</table>	
	 Total Amount=<%=total %>
									<button>
										<a href="Viewcart.jsp">Back to Shop</a>
									</button>
</body>
</html>
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
