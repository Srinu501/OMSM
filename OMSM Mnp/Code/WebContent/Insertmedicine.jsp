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
<link rel="stylesheet" href="css/divison.css" type="text/css">
<title>Insert Medicine</title>

</head>
<body>
<body background="Images/10.jpg">
	
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
              <li class="active"><a href="Insertmedicine.jsp">InsertMedicine</a></li>
              <li><a href="prdupdate.jsp">UpdateMedicine</a></li>
              <li><a href="delmed1.jsp">DeleteMedicne</a></li>
              <li><a href="Medicine.jsp">BackToHome</a></li>
            </ul>
            
          </div>
          <div id="content">
            <div class="content">
              <form action="insert" method="get">
		<center>
		<table cellspacing="20">
				<tr>
					<th><h2></h2></th>
				</tr>
				<tr>
					<td>ProductName:</td>
					<td><input type="text" name="productname" required></td>
				</tr>
				<tr>
					<td>CompanyName:</td>
					<td><input type="text" name="companyname" required></td>
				</tr>
				<tr>
					<td>ProductQuality:</td>
					<td><select name="ProductQuality">
							<option value="syrup">Syrup</option>
							<option value="injection">Injection</option>
							<option value="drops">Drops</option>
							<option value="tablets">Tablets</option>
							<option value="lotion">Lotion</option>
							<option value="tabs">Tabs</option>
					</select></td>
				</tr>
				<tr>
					<td>ProductQuantity:</td>
					<td><input type="text" name="productquantity" required></td>
				</tr>
				<tr>
					<td>ProductPrice:</td>
					<td><input type="text" name="productprice" required></td>
				</tr>
				
				<tr>
					<td>Expirydate:</td>
					<td><input type="date" name="expirydate" required></td>
				</tr>
				<tr><td><button a href="Insertmedicine.jsp">BACK</a></td>
				<td><input type="submit" value="Submit"></td>
						


								
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
	