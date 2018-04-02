<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% if (session.getAttribute("username")==null)
	{
		response.sendRedirect("index.html");
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
              <li><a href="Insertmedicine.jsp">InsertMedicine</a></li>
              <li class="active"><a href="prdupdate.jsp">UpdateMedicine</a></li>
              <li><a href="delmed1.jsp">DeleteMedicne</a></li>
              <li><a href="Medicine.jsp">BackToHome</a></li>
              
            </ul>
            
          </div>
          <div id="content">
            <div class="content">

<div id="rightlog_div">
<form action="prdupdate.jsp">
<table border=1>

<tr><td>enter medicine name to UDATE:</td><td><input type="text" name="oproduct"></td></tr>
<tr><td>enter the medicine name:</td><td><input type="text" name="nprdname"></td></tr>
<tr><td>enter cost of the medicine:</td><td><input type="text" name="price"></td></tr>
</table>
<input type="submit" value="Update">

</form>
								
				</tr>
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

</div>
</body>
</html>