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
String cName=request.getParameter("cName");
String prc=request.getParameter("price");
String qunt=request.getParameter("quantity");
int price=Integer.parseInt(prc);
int quantity=Integer.parseInt(qunt);
int cost=quantity*price;



try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/srinu", "root", "");
	if(quantity!=0){
		
	PreparedStatement pst = con
			.prepareStatement("insert into acart values(?,?,?,?,?,?)");
	pst.setString(1, "");
	pst.setString(2, uName);
	pst.setString(3, pName);
	pst.setString(4,cName );
	pst.setInt(5,quantity);
	pst.setInt(6, cost);
	pst.executeUpdate();
	}
	response.sendRedirect("Viewdetails.jsp");

} catch ( SQLException e) {
	System.out.println(e);
}



%>

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
