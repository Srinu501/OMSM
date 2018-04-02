<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<!DOCTYPE html>
<html>
<head>
<title></title>
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
						<div id="sidebar">
							<a href="#"><img id="logo" src="images/logo.gif" with="154"
								height="74" alt=""></a>
							<ul class="navigation">

								<li><a href="logout.jsp">Logout</a></li>

							</ul>

						</div>
						<div id="content">
							<div class="content">
								<body>
									<%
										ResultSet rs;
										Connection con;
										Statement stmt;
									%>
									<%
										String uName = (String) session.getAttribute("username");

										try {

											Class.forName("com.mysql.jdbc.Driver");
											con = DriverManager.getConnection(
													"jdbc:mysql://localhost:3306/srinu", "root", "");
											stmt = con.createStatement();
											String q = "select ProductName,CompanyName,ProductQuantity,Price from acart where UserName='"
													+ uName + "'";
											rs = stmt.executeQuery(q);
									%>
									<%
										while (rs.next()) {
									%>

									<form action="delcrt.jsp">
										<table>

											<tr>

												<%
															String pName = rs.getString(1);
															String cName = rs.getString(2);
															String pq = rs.getString(3);
															String price = rs.getString(4);
												%>
											
											<tr>
												<td><input type="text" readonly name="pName"
													value="<%=pName%>" /></td>
												<td><input type="text" readonly name="cName"
													value="<%=cName%>" /></td>
												<td><input type="text" readonly name="pq"
													value="<%=pq%>" /></td>
												<td><input type="text" readonly name="price"
													value="<%=price%>" /></td>
												<td><input type="submit" value="Delete Item"></td>
											</tr>
										</table>
									</form>

									<%
										}
										} catch (Exception e) {
											System.out.println(e);
										}
									%>

									<button>
										<a href="bill.jsp">ProceedToBill</a>
									</button>
									<button>
										<a href="Viewdetails.jsp">Continue Shopping</a>
									</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="shadow"></div>
		</div>
	</div>
</body>
</html>
