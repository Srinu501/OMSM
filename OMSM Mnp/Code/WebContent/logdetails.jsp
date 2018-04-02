<%@ page import="java.sql.*" %>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>logged users</title>
</head>
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
              <li><a href="Purchaserecords.jsp">PurchaseRecords</a></li>
              <li Class><a href="createuser.jsp">CreateUser</a></li>
              <li Class="active"><a href="logdetails.jsp">LoginDetails</a></li>
              <li class><a href="logout.jsp">Logout</a></li>
            </ul>
            
          </div>
          <div id="content">
            <div class="content">
              <div id="rightlog_div">

<%

try {
	String user;
	
	Class.forName("com.mysql.jdbc.Driver");
	
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srinu","root","");
	
	PreparedStatement stmt=con.prepareStatement("select UserName from login");
	 ResultSet result =  stmt.executeQuery();
	 while(result.next())
	 {
		 
		  user=result.getString(1);
		%><center><br><font size=5cm><i><%out.println(user); %></i></font></center> 
		
		<%} 
		 
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	e.printStackTrace();
}




%>



</div>



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
