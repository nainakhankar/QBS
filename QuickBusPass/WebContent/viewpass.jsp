<%@page import="quick.org.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="studheader.jsp" %>	
<link rel="stylesheet" href="calender/lcard.css" type="text/css" />
<body>

     <div class="addusermain1">
        <div class="aulogindiv1">
                <form action="insertuser.php" method="post" class="aulogform1">
                    <div>
                        <h4 class="auloghead1">Pass Details</h4>
                    </div>

<%
DatabaseConnection db = new DatabaseConnection();
db.dbconnection();
	String username=(String) session.getAttribute("username");
        
	ResultSet rs = null;
	
	String sql="Select * from passform Where username = '"+username+"' and caproval='A' and daproval='A'";
	rs=db.getResultSet(sql);
	
	if(rs.next())
	{
		String id = rs.getString("id");
		String fname = rs.getString("fname");
		String address = rs.getString("address");
		String email = rs.getString("email");
		String dob = rs.getString("dob");
		String photo = rs.getString("photo");		
		String sign = rs.getString("sign");
		
		String sql1="Select * from transaction Where username = '"+username+"'";
		ResultSet rs1=db.getResultSet(sql1);
		if(rs1.next())
		{
			String edate = rs1.getString("edate");
			String sdate = rs1.getString("sdate");
			String pfrom = rs1.getString("pfrom");
			String pto = rs1.getString("pto");
%>
                    <div class="shift1">
                        <div class="card1">
                        	<div>
                        		<img src="calender/ashok.jpg" width="40px" height="52px" style="float:left"> 
                        		<h5  style="float:left;background-color:red;color:white;padding:5px 15px;border-radius:5px;">
                        			<span style="padding:0 103px;">THE UNION OF INDIA</span><br>
                        			MAHARASHTRA STATE BUS PASS DETAILS
                        		</h5>
                        		<img src="calender/ashok.jpg" width="40px" height="52px">
                        	</div>
                        	<br>
                        	<div>
                        		<span class="name1">Start date:- <%=sdate%></span>
                        		<span class="name1" style="padding:0 0px">End date: <%=edate%></span><br><br>
                        	</div>

                        	<div class="avatar1" style="float:left">
                            	<img src="doc/<%=photo%>" width="90px" height="80px"> 
                            </div>
                            <!-- <div class="avatar1" style="float:right">
                            	<img src="calender/goldicon.png" width="90px" height="80px"> 
                            </div> -->
                            <br>
                            
                            	<div style="padding-left:190px"><b style="font-weight:bold;">DOB:-<%=dob%></b></div><br>
                            
                            <span class="name1">
                            	<div style="padding-left:110px">Source:-<%=pfrom%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Destination:-<%=pto%></div>
                            </span>
                            <div class="my-label1">Name:</div> 
                            <div class="my-text1"><%=fname%></div>
<!--                             <div class="my-label1">Address:</div> -->
<%--                             <div class="my-text1"><%=address%></div> --%>
                            <div class="my-label1">Email: </div>
                            <div class="my-text1"><%=email%></div>

<!--                             <div> -->
<!-- 	                            <div class="my-label123" style="padding-top:20px;">Applicant Signature:</div>  -->
<%-- 	                            <div class="my-text1" style="padding-top:20px;"><img src="doc/<%=sign%>" width="90px" height="40px"></div> --%>
<!-- 	                        </div> -->
	                        <div style="float:right">
	                            <div class="my-label123" style="padding-top:5px;">Applicant Signature:</div>
	                            <div class="my-text1" style="padding-top:5px;"><img src="doc/<%=sign%>" width="90px" height="40px"></div>
	                        </div>
                            
                        </div><br><br>
                        <div>
                    		<img src="images/best.jpg" width="520px;">
                    	</div>
                    </div>
                    
<%
		}
	}
	else
	{        
	ResultSet res = null;
	
	String sql1="Select * from passform Where username = '"+username+"' and collegename='' and caproval='P' and daproval='A'";
	res=db.getResultSet(sql1);
	
	if(res.next())
	{
		String id = res.getString("id");
		String fname = res.getString("fname");
		String address = res.getString("address");
		String email = res.getString("email");
		String dob = res.getString("dob");
		String photo = res.getString("photo");
		String sign = res.getString("sign");
		String sql2="Select * from transaction Where username = '"+username+"'";
		ResultSet rs2=db.getResultSet(sql2);
		if(rs2.next())
		{
			String edate = rs2.getString("edate");
			String sdate = rs2.getString("sdate");
			String pfrom = rs2.getString("pfrom");
			String pto = rs2.getString("pto");
%>
                   <div class="shift1">
                        <div class="card1">
                        	<div>
                        		<img src="calender/ashok.jpg" width="40px" height="52px" style="float:left"> 
                        		<h5  style="float:left;background-color:red;color:white;padding:5px 15px;border-radius:5px;">
                        			<span style="padding:0 103px;">THE UNION OF INDIA</span><br>
                        			MAHARASHTRA STATE BUS PASS DETAILS
                        		</h5>
                        		<img src="calender/ashok.jpg" width="40px" height="52px">
                        	</div>
                        	<br>
                        	<div>
                        		<span class="name1">Start date:- <%=sdate%></span>
                        		<span class="name1" style="padding:0 0px">End date: <%=edate%></span><br><br>
                        	</div>

                        	<div class="avatar1" style="float:left">
                            	<img src="doc/<%=photo%>" width="90px" height="80px"> 
                            </div>
                            <!-- <div class="avatar1" style="float:right">
                            	<img src="calender/goldicon.png" width="90px" height="80px"> 
                            </div> -->
                            <br>
                            
                            	<div style="padding-left:190px"><b style="font-weight:bold;">DOB:-<%=dob%></b></div><br>
                            
                            <span class="name1">
                            	<div style="padding-left:110px">Source:-<%=pfrom%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Destination:-<%=pto%></div>
                            </span>
                            <div class="my-label1">Name:</div> 
                            <div class="my-text1"><%=fname%></div>
<!--                             <div class="my-label1">Address:</div> -->
<%--                             <div class="my-text1"><%=address%></div> --%>
                            <div class="my-label1">Email: </div>
                            <div class="my-text1"><%=email%></div>

<!--                             <div> -->
<!-- 	                            <div class="my-label123" style="padding-top:20px;">Applicant Signature:</div>  -->
<%-- 	                            <div class="my-text1" style="padding-top:20px;"><img src="doc/<%=sign%>" width="90px" height="40px"></div> --%>
<!-- 	                        </div> -->
	                        <div style="float:right">
	                            <div class="my-label123" style="padding-top:5px;">Applicant Signature:</div>
	                            <div class="my-text1" style="padding-top:5px;"><img src="doc/" width="90px" height="40px"></div>
	                        </div>
                            
                        </div><br><br>
                        <div>
                    		<img src="images/best.jpg" width="520px;">
                    	</div>
                    </div>
<%
		}
	}
	else
	{
%>
         <div style="padding:150px 200px;font-size:35px;font-family:Times New Roman;font-weight:bold; ">
             Your Pass Details Not Available
         </div> 
<%
	}
	}
%>
              </form>
        </div>     
     </div>
</body>
</html>