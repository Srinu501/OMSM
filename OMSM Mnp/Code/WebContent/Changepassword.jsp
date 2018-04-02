<!DOCTYPE html>
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
              <li><a href="Medicine.jsp">MEDICINES</a></li>
              <li><a href="Viewpurchase.jsp">PurchaseRecords</a></li>
               <li Class="active"><a href="Changepassword.jsp">ChangePasword</a></li>
              <li><a href="createuser.jsp">CreateUser</a></li>
              <li><a href="logdetails.jsp">LoginDetails</a></li>
              <li class><a href="logout.jsp">Logout</a></li>
            </ul>
            
          </div>
          <div id="content">
            <div class="content">
              <form action="Changepassword" method="get">
		<center>
			<table cellspacing="20">
				<tr>
					<td>UserName:</td>
					<td><input type="text" name="username" required></td>
				</tr>
				<tr>
					<td>CurrentPassword:</td>
					<td><input type="password" name="currentpassword" required></td>
				</tr>
				<tr>
					<td>NewPassword:</td>
					<td><input type="password" name="newpassword" required></td>
				</tr>
				<tr>
					<td>Reenterpassword</td>
					<td><input type="password" name="reenterpassword" required></td>
				</tr>
				<tr><td><input type="button" value="Back"></td>
				<td><input type="submit" value="ChangePassword"></td></tr>
			</table>
		</center>
	</form>


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
