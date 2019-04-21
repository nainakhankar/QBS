
<%@page import="java.util.Date"%>
<%@page import="quick.org.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header1.jsp" %>
                

<link href="css2/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='css/style.css' rel='stylesheet' type='text/css'>
</head>
<body>
	<!-- main -->
	<div class="main">
		<h1>Depot Login </h1>
		<div class="signin-form">
	<form class="jotform-form" action="Depologin" method="post" name="form_62563847788475" id="62563847788475" accept-charset="utf-8">
				<input type="text" placeholder="User Name" name="userid" required="">
				<input type="password" placeholder="Password" name="password" required="">
				<input type="submit" value="Sign In">
			</form>
			<div class="signin-text">
				
				<div class="clear"> </div>
			</div>
		
			
		</div>
	</div>
	<!-- //main -->

</body>
</html>