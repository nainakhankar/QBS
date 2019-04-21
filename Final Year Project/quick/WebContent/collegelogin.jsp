<%@page import="java.util.Date"%>
<%@page import="quick.org.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header1.jsp" %>

	
<body>
	<!-- main -->
	<div class="main">
		<h1>College Login</h1>
		<div class="signin-form">
		<form class="online-form" action="Collegelogin" method="post" name="form_62563847788475" id="62563847788475" accept-charset="utf-8">
				<input type="text" placeholder="User Name" value="" name="username" required="">
				<input type="password" placeholder="Password" value="" name="password" required="">
				<input type="submit" value="Sign In">
			</form>
			<div class="signin-text">
				
				<div class="text-right">
				
				</div> 
				<div class="clear"> </div>
			</div>
			
			
		</div>
	</div>
	<!-- //main -->
	
</body>
</html >