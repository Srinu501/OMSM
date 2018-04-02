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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Deleted Medicine</title>
<link rel="stylesheet" href="css/divison.css" type="text/css">
</head>
<body>
	
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
              <li><a href="prdupdate.jsp">UpdateMedicine</a></li>
              <li class="active"><a href="delmed1.jsp">DeleteMedicne</a></li>
              <li><a href="Medicine.jsp">BackToHome</a></li>
            </ul>
          
          </div>
          <div id="content">
            <div class="content">
			<form action="delmed.jsp" method="get">

			<table cellspacing="20">

				<tr>
					<td>ProductName:</td>
					<td><input type="text" name="productname"></td>
				</tr>

				<tr><td><input type="button" value="Back"></td>
				<td><input type="submit" value="Delete"></td>
				</tr>
			</table>


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