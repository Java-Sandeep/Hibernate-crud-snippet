<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="beans.User"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>CRUD Application</h1>
	
	<hr>
	<a href="index.jsp">Get Register</a>
	<hr></center>
		<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3390/test","root","");
		PreparedStatement ps = con.prepareStatement("select * from UserInfo where id = " + request.getParameter("id"));
		ResultSet rs = ps.executeQuery();
		rs.next();
		%>
		<div class="container">
			<div class="row">
				<div class="col-sm-2"></div>
				<div class="col-sm-8">
				<form action="edit" method="post">
					<input type="hidden" value="<%=rs.getString(1) %>" name="id"><br>
					<div class="form-group">
						<label for="exampleInputEmail1">First Name</label>
						<input type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" value="<%=rs.getString(2) %>" name="fname">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Last Name</label>
						<input type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" value="<%=rs.getString(3) %>" name="lname">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Enter Email</label>
						<input type="email" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" value="<%=rs.getString(4) %>" name="email">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Mobile Number</label>
						<input type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" value="<%=rs.getString(5) %>" name="mobile">
					</div>
					<a href="allusers.jsp">Back</a> &nbsp &nbsp<button type="submit" class="btn btn-primary">Edit</button>
	</form>
	</div>
	<div class="col-sm-2"></div>
	</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>