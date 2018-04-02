<!DOCTYPE html>
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
              <li><a href="Medicine.jsp">MEDICINE</a></li>
              <li><a href="Viewpurchase.jsp">PurchaseRecords</a></li>
              <li><a href="Changepassword.jsp">ChangePassword</a></li>
              <li><a href="createuser.jsp">CreateUser</a></li>
			  <li><a href="logdetails.jsp">LoginDetails</a></li>
              <li class="active last"><a href="logout.jsp">Logout</a></li>
            </ul>
            <div class="connect"> <a href="#" class="facebook">&nbsp;</a> <a href="#" class="twitter">&nbsp;</a> <a href="#" class="vimeo">&nbsp;</a> </div>
            <div class="footenote"> <span>&copy; Copyright &copy; 2011.</span> <span><a href="#">Domain Name</a> all rights reserved</span> </div>
          </div>
          <div id="content">
            <div class="content">
              <ul>
                <li>
                  <div id="content" > <img src="images/5.jpg" width="726" height="546" alt="">
				  <p>Welcome To Admin</p>
              </ul>
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
