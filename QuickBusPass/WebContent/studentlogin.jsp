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
		<h1>Student Login</h1>
		<div class="signin-form">
			<form class="Online-form" action="Studentlogin" method="post" name="form_62563847788475" id="62563847788475">
	
				<input type="text" placeholder="User Name" name="username" required>
				
				<input type="password" placeholder="Password" name="password" required>
				
				<input type="submit" value="Sign In">
				
			</form>
			<div class="signin-text">
				
				<div class="text-right">
					<p><a href="studentregister.jsp"> Create New Account</a></p>
				</div>
				<div class="clear"> </div>
			</div>
		</div>
	</div>
	<!-- //main -->
	
</body>
</html>