<%@page import="quick.org.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Quick Bus Pass System</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/style3.css">
		<link href="css2/style.css" rel="stylesheet" type="text/css"  media="all" />
		<meta name="keywords" content="Online Bus pass" />
		<link href='http://fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="../../css1/responsiveslides.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		  <script>
		    // You can also use "$(window).load(function() {"
			    $(function () {
			
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
			      });
			});
		  </script>
	</head>
<body>

<!---start-header---->
<%@include file="dheader.jsp" %>	
				
      <table class="   username">
        <thead>
          <tr>
            <th>ROLL NUMBER</th>      
            <th>STUDENT NAME</th>
            <th>COLLEGE NAME</th>
            <th>START DATE</th>
            <th>END DATE</th>
            <th>ROUTE</th>
            <th>ADMIN APPROVAL</th>
            <th>VIEW DETAILS</th>
          </tr>
        </thead>
        <tbody>
        <%
	String username=(String) session.getAttribute("username");

	DatabaseConnection db = new DatabaseConnection();
	db.dbconnection();
	
	ResultSet rs = null;
	
	String sql="Select * from passform";
	rs=db.getResultSet(sql);
	
	while (rs.next())
	{
		String rollno = rs.getString("rollno");
		String id = rs.getString("id");
		String caproval = rs.getString("caproval");
%>
          <tr class="record">
            <td>
              	<%=rollno%>
            </td>
            <td class="overflow">
       			<%=rs.getString("fname")%>
            </td>
            <td class="date">
              	<%=rs.getString("collegename")%>
            </td>
            <td class="overflow">
       			<%=rs.getString("sdate")%>
            </td>
            <td class="overflow">
       			<%=rs.getString("edate")%>
            </td>
            <td class="overflow">
       			<%=rs.getString("pfrom")%> - TO - <%=rs.getString("pto")%>
            </td>
            <td class="overflow">
            	<%
            		if(caproval.equals("P"))
            		{
            	%>
            	<Form action="Collegeaproval" method="post" style="float:left">
            		<input type="hidden" name="studid" value="<%=id%>">
            		<input type="hidden" name="but" value="A">
        			<input type="submit" value="Aprove"/>
        		</Form>
        		<Form action="Collegeaproval" method="post">
            		<input type="hidden" name="studid" value="<%=id%>">
            		<input type="hidden" name="but" value="R">
        			<input type="submit" value="Reject"/>
        		</Form>
        		<%
            		}
            		else if(caproval.equals("R"))
            		{
        		%>
        			<div style="color:black;">Rejected</div>
        		<%
            		}
            		else
            		{
        		%>
        			<div style="color:black;">Aproved</div>
        		<%
            		}
        		%>
        		
            </td>
            <td class="overflow">
        		<a href="cviewpassform.jsp?studid=<%=id%>">View Details</a>
            </td>            
          </tr>
          <tr class="companion">
            <td class="output" colspan="7">
             
            </td>
          </tr>
          <%} %>
        </tbody>
      <tfoot>
     <tr>
        <td colspan="7"></td>
     </tr>
    </tfoot>
  </table>

  </body>
      <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js1/index.js"></script>
</html>
