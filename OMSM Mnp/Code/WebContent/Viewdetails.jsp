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
             <%ResultSet rs;
	Connection con;
	Statement stmt;%>
		<%
		try{
	
		
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/srinu", "root", "");
			stmt = con.createStatement();
			String q = "select ProductName,CompanyName,ProductPrice from insertmedicine";
			rs = stmt.executeQuery(q);
			

		%>
		
	<center>
	<button><a href="Viewcart.jsp">VIewCartItems</a></button>
	</center>
		
	
		         
		           
		<table>
			<tr>
				
				
				<th>ProductName</th>
				<th>CompanyName</th>
				<th>ProductPrice</th>
				<th>Select Quantity</th>
				
                <th>SelectDrug</th>

		</tr>
		
			</table>
			</form>
			<%while (rs.next()) { %>
			
			<form action="AddCart.jsp">
			<table>
			<tr>
			     <%   String pName=rs.getString(1) ;
			          String cName=rs.getString(2);
			          String price=rs.getString(3);
			          %>
			 
				<td>
				<input type="text" readonly name= "pName" value="<%= pName %>" />
				</td>
				<td><input type="text" readonly name="cName" value="<%= cName %>" /></td>
				<td><input type="text" readonly name="price" value="<%= price %>"/></td>
				<td><select name="quantity">
				<option>0</option>
				<option>5</option>
				<option>10</option>
				</select>
              </td>
				<td><input type="submit" value="Add To shop"/></td>
				
				</tr>
				</table>
				</form>
				
				<%}
			}catch (Exception e) {
				System.out.println(e);
			}

		%>
		
		
		<br>
		

		<a href="User.jsp">BACK</a>
	</div>
	
</body>
</html></html>
          </div>
        </div>
      </div>
    </div>
    <div class="shadow"> </div>
  </div>
</div>
</body>
</html>
