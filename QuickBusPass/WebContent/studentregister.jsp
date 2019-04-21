<%@page import="java.util.Date"%>
<%@page import="quick.org.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header1.jsp" %>
<head>

</head>
<body>
	<!-- main -->
	<div class="main" id="mainreg">
		<h1>Sign Up</h1>
		<div class="signin-form">
		
		<form class="online-form" action="Reg" method="post" name="form_62563847788475" id="62563847788475" accept-charset="utf-8">
			      
			Full Name: <input type="text" placeholder ="Full name" class=" form-textbox validate[required]" id="input_16" name="name" size="32" required />
				   
			Address: <input type="text" placeholder ="Email Address" class=" form-textbox validate[required,email]" id="input_16" name="address" size="32" required />
			
			Mobile No.: <input type="text" placeholder ="Email Address" class=" form-textbox validate[required,email]" id="input_16" name="mobile" size="32" required />
			
			Email: <input type="email" placeholder ="Email Address" class=" form-textbox validate[required,email]" id="input_16" name="email" size="32" required />
			
			Select Type:<div>
						<select class="myselectbox" id="input_16" name="utype" required>
				            <option value="">Please select option</option>
				            <option value="student"> Student </option>
				            <option value="other"> Other </option>
				        </select>
				        </div>
			
			Username: <input type="text" placeholder="Username" class=" form-textbox validate[required]" id="input_16" name="username" size="32" required/>
			
			Password: <input type="password" placeholder ="Password" class=" form-textbox validate[required]" id="input_16" name="password" size="32" required/>
			
			<input type="submit" value="Sign Up">
			
		</form>	
		</div>
	</div>
	<!-- //main -->
	
</body>
</html>