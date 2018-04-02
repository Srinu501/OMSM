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
              <li class="active"><a href="Medicine.jsp">MEDICINES</a></li>
              <ul>
              <li><a href="Insertmedicine.jsp">InsertMedicine</a>
              <li><a href="prdupdate.jsp">UpdateMedicine</a>
              <li><a href="delmed1.jsp">DeleteMedicine</a>
              </li></ul>
              <li><a href="Viewpurchase.jsp">PurchaseRecords</a></li>
              <li><a href="Changepassword.jsp">ChamgePassword</a></li>
               <li><a href="createuser.jsp">CreateUser</a></li>
			  <li><a href="logdetails.jsp">LoginDetails</a></li>
              <li><a href="logout.jsp">Logout</a></li>
            </ul>
            
          </div>
          <div id="content">
            <div class="content">
              <body>
	
	 <div id="rightlog_div">
		<center>
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
