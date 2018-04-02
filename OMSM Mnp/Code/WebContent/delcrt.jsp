<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

	

if (session.getAttribute("username")==null)
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
					<%
String uName=(String)session.getAttribute("username");
String pName=request.getParameter("pName");
//String cName=request.getParameter("cName");
//String prc=request.getParameter("price");

int x;

try {
	Class.forName("com.mysql.jdbc.Driver");
Connection	 con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/srinu", "root", "");
	Statement stmt=con.createStatement();
	String q="delete from acart where ProductName=+'"+ pName +"'";
	x=stmt.executeUpdate(q);
	out.println(x+"rows successfully deleted");
	
	response.sendRedirect("Viewcart.jsp");

	
} catch ( Exception e) {
	System.out.println(e);
}


%>
					
          </div>
        </div>
      </div>
    </div>
    <div class="shadow"> </div>
  </div>
</div>
</body>
</html>
