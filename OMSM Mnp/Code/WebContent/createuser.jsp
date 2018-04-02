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
<link rel="stylesheet" type="text/css" href="./css/style2.css">

             <script language="JavaScript">
            function valid() {
                var1 = document.f.username.value;
                var2 = document.f.newpassword.value;
                var3 = document.f.reenterpassword.value;
                var4 = document.f.email.value;
                var5 = document.f.contactnumber.value;
                var6 = document.f.address.value;
                
                 if (var1 == "")
                {
                    alert("Enter Your Name");
                    document.f.username.value;
                    return false;
                }
                 if (var2 == "")
                {
                    alert("Enter Your Password");
                    document.f.newpassword.value;
                    return false;
                }
                 if (var3!=var2)
                 {
                	
                     alert(" Mismatch Password");
                     document.f.reenterpassword.value;
                     return false;
                 }

                 if (var4 == "")
                {
                    alert("Enter Your email");
                    document.f.email.value;
                    return false;
                }
                
                   if (var4.indexOf("@", 0) < 0)
                {
                    alert("Please enter a valid e-mail address.");
                    
                    return false;
                }
                if (var4.indexOf(".", 0) < 0)
                {
                    alert("Please enter a valid e-mail address.");
                  
                    return false;
                }
                
                 if (var5 == "")
                {
                    alert("Enter Your phone");
                    document.f.contactnumber.value;
                    return false;
                }
                 if (!/^[0-9]{10}$/.test(var5)) {
                    alert("Please input exactly 10 numbers!");
                    return false;
                }
                
                 if (var6 == "")
                {
                    alert("Enter Your place");
                    document.f.address.value;
                    return false;
                }
                
              }
        </script>
<title>ONLINE MEDICAL STORE</title>
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
			  <li><a href="Changepassword.jsp">ChangePassword</a></li>
			  <li Class="active"><a href="createuser.jsp">CreateUser</a></li>
              <li><a href="logindetails.jsp">LoginDetails</a></li>
              <li><a href="logout.jsp">Logout</a></li>
            </ul>
            
          </div>
          <div id="content">
            <div class="content">
         
<form  name="f" onSubmit="return valid();"  action="createuser1.jsp" method="get" >
		<div id="reg1_div">
			<center>
				<table cellspacing="4">
					<tr>
						<th></th>
					</tr>
					<tr>
						<td>UserName:</td>
						<td><input type="text" name="username" required></td>
					</tr>
					<tr>
						<td>NewPassword:</td>
						<td><input type="password" name="newpassword" required></td>
					</tr>
					<tr>
						<td>Reenterpassword</td>
						<td><input type="password" name="reenterpassword" required></td>
					</tr>
						<td>Email:</td>
						<td><input type="text" name="email" required></td>
					</tr>
					<tr>
						<td>ContactNumber:</td>
						<td><input type="text" name="contactnumber" required></td>
					</tr>
					<tr>
						<td>Address:</td>
						<td><input type="text" name="address" required></td>
					</tr>

					<tr><td><input type="button" value="Cancel"></td>
					<td><input type="submit" value="Submit"></td>
					</tr>
				</table>
			</center>
		</div>
		
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
