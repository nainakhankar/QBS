<%@page import="quick.org.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>

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
<%
DatabaseConnection db = new DatabaseConnection();
db.dbconnection();
%>		
      <table class="   username">
        <thead>
          <tr>
            <th>ROLL NUMBER</th>      
            <th>STUDENT NAME</th>
            <th>COLLEGE NAME</th>
            <th>START DATE</th>
            <th>END DATE</th>
            <th>ROUTE</th>
            <th>DEPO</th> 
          </tr>
        </thead>
        <tbody>
<%       
	ResultSet rs = null;
	String depo=(String) session.getAttribute("depo");
	String sql="Select * from passform WHere utype!='other' and caproval='A' and center='"+depo+"' and photo!='null'";
	rs=db.getResultSet(sql);
	
	while (rs.next())
	{
		String rollno = rs.getString("rollno");
		String id = rs.getString("id");
		String caproval = rs.getString("caproval");
		String daproval = rs.getString("daproval");
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
            		if(daproval.equals("P"))
            		{
            	%>
            			<Form action="Depoapproval" method="post" style="float:left">
		            		<input type="hidden" name="studid" value="<%=id%>">
		            		<input type="hidden" name="but" value="A">
		        			<input type="submit" value="Aprove"/>
		        		</Form>
		        		<Form action="Depoapproval" method="post">
		            		<input type="hidden" name="studid" value="<%=id%>">
		            		<input type="hidden" name="but" value="R">
		        			<input type="submit" value="Reject"/>
		        		</Form>
        		<%
            		}
            		else if(daproval.equals("R"))
            		{
        		%>
        			<div style="color:black;">Rejected</div>
        		<%
            		}
            		else
            		{
        		%>
        			<div style="color:black;">Approved</div>
        		<%
            		}
        		%>
        		
            </td>
            <!--  <td class="overflow">
        		<a href="cviewpassform.jsp?studid=<%=id%>">View Details</a>
            </td> -->           
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

<%
	ResultSet rs11 = null;
	
	String sql11="Select * from passform WHere utype ='other'";
	rs11=db.getResultSet(sql11);
	
	if(rs11.next())
	{
%>
  <table class="   username">
        <thead>
          <tr>
            <th>SR NO.</th>      
            <th>APPLICANT NAME</th>
            <th>START DATE</th>
            <th>END DATE</th>
            <th>ROUTE</th>
            <th>APPROVAL</th> 
          </tr>
        </thead>
        <tbody>
    <%
	ResultSet rs1 = null;
	
	String sql1="Select * from passform WHere utype ='other'";
	rs1=db.getResultSet(sql1);
	
	while (rs1.next())
	{
		String id1 = rs1.getString("id");
		String caproval1 = rs1.getString("caproval");
		String daproval1 = rs1.getString("daproval");
%>
          <tr class="record">
            <td>
              	<%=id1%>
            </td>
            <td class="overflow">
       			<%=rs1.getString("fname")%>
            </td>
            <td class="overflow">
       			<%=rs1.getString("sdate")%>
            </td>
            <td class="overflow">
       			<%=rs1.getString("edate")%>
            </td>
            <td class="overflow">
       			<%=rs1.getString("pfrom")%> - TO - <%=rs1.getString("pto")%>
            </td>
            <td class="overflow">
            	<%
            		if(daproval1.equals("P"))
            		{
            	%>
            		<Form action="Depoapproval" method="post" style="float:left">
	            		<input type="hidden" name="studid" value="<%=id1%>">
	            		<input type="hidden" name="but" value="A">
	        			<input type="submit" value="Aprove"/>
	        		</Form>
	        		<Form action="Depoapproval" method="post">
	            		<input type="hidden" name="studid" value="<%=id1%>">
	            		<input type="hidden" name="but" value="R">
	        			<input type="submit" value="Reject"/>
	        		</Form>
        		<%
            		}
            		else if(daproval1.equals("R"))
            		{
        		%>
        			    <div style="color:black;">Rejected</div>
        		<%
            		}
            		else
            		{
        		%>
        				<div style="color:black;">Approved</div>
        		<%
            		}
        		%>         
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
<%
	}
%>
  </body>
      <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js1/index.js"></script>
</html>
