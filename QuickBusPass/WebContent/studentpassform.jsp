<%@page import="java.util.Date"%>
<%@page import="quick.org.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@include file="studheader.jsp" %>	
<script>
	function display1(str)
	{
		if(str=="yes")
		{
			document.getElementById('disabledata').style.display = "block";
		}
		else
		{
			document.getElementById('disabledata').style.display = "none";
		}
	}
	function setenddate()
	{
		var sdate=new Date(document.getElementById("sdate").value);
		var pduration=document.getElementById("pduration").value;
		//alert(pduration);
   		var days = 0;
   		if(pduration==="monthly")
   		{
   			days = 30;
   		}
   		else if(pduration==="quaterly")
   		{
   			days = 90;
   		}
   		else if(pduration==="hyearly")
   		{
   			days = 180;
   		}
   		else
   		{
   			days = 365;
   		}
		 sdate.setDate(sdate.getDate()+ days);
		 //alert(sdate);
         var date2=(sdate.getUTCMonth()+1)+"/"+sdate.getDate()+"/"+sdate.getFullYear();
         document.getElementById("edate").value=date2;
        //alert(date2);
	}
</script>

<%
		DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		String username=(String) session.getAttribute("username");
		
		String queryText = "Select * From register Where username='"+username+"'";
		
		ResultSet rs = db.getResultSet(queryText);
		if(rs.next())
		{
			String name=rs.getString("name");
			String address=rs.getString("address");
			String email=rs.getString("email");
			String mobile=rs.getString("mobile");
			String utype=rs.getString("utype");
%>

<div style="padding-left:200px ">
<form class="signin-form" action="passform" method="post"name="form_62573819780467" id="62573819780467" accept-charset="utf-8">
  <input type="hidden" name="formID" value="62573819780467" />
  
  <div class="form-all">
    <ul class="form-section page-section">
      <li id="cid_1" class="form-input-wide" data-type="control_head">
        <div class="form-header-group">
          <div class="header-text httal htvam">
            <h2 id="header_1" class="form-header">
       Personal Information
            </h2>
          
          </div>
        </div>
      </li>
    <li class="form-line jf-required" data-type="control_textbox" id="id_3">
        <label class="form-label form-label-left form-label-auto" id="label_3" for="input_3">
      Full Name
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_3" class="form-input jf-required">
          <input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_3" name="fname" required size="50" value="<%=name %>" required/>
        </div>
     </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_4">
        <label class="form-label form-label-left form-label-auto" id="label_4" for="input_4">
        Date of Birth:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_4" class="form-input jf-required">
          <input type="date" min="1960-01-01" max="2001-12-31" class=" form-textbox validate[required]" data-type="input-textbox" id="input_4" name="dob" size="50" value="" required />
        </div>
      </li>  
      <li class="form-line jf-required" data-type="control_textbox" id="id_4">
        <label class="form-label form-label-left form-label-auto" id="label_4" for="input_4">
      	 Gender:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_4" class="form-input jf-required">
          <select class="form-textbox validate[required]" style="width:315px" id="input_6" name="gender" required>
            <option value="0">Please Select Gender</option>
            <option value="Male"> Male </option>
            <option value="Female"> Female </option>
          </select>
        </div>
      </li>    
      <li class="form-line jf-required" data-type="control_textbox" id="id_4">
        <label class="form-label form-label-left form-label-auto" id="label_4" for="input_4">
      	  Religion Category:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_4" class="form-input jf-required">
          <select class="form-textbox validate[required]" style="width:315px" id="input_6" name="rcategory" required>
            <option value="">Please select Category</option>
            <option value="General"> General </option>
            <option value="Sc"> Sc </option>
            <option value="Sst"> Sst </option>
            <option value="Obc"> Obc </option>
          </select>
        </div>
      </li>
      
<!-- *********************************************************************
      
******************************** Address details *************************
      
**************************************************************************-->

      <li id="cid_11" class="form-input-wide" data-type="control_head">
        <div class="form-header-group">
          <div class="header-text httal htvam">
            <h2 id="header_11" class="form-header">
              Permanent Address :
            </h2>
          </div> 
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_3">
        <label class="form-label form-label-left form-label-auto" id="label_3" for="input_3">
      		Address:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_3" class="form-input jf-required">
          <input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_3" name="address" value="<%=address %>" required size="50" value="" required/>
        </div>
     </li>
     <li class="form-line jf-required" data-type="control_textbox" id="id_3">
        <label class="form-label form-label-left form-label-auto" id="label_3" for="input_3">
      		 Village / Town / City:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_3" class="form-input jf-required">
          <input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_3" name="vtc" required size="50" value="" required/>
        </div>
     </li>
     <li class="form-line jf-required" data-type="control_textbox" id="id_3">
        <label class="form-label form-label-left form-label-auto" id="label_3" for="input_3">
      		District
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_3" class="form-input jf-required">
          <input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_3" name="district" required size="50" value="" required/>
        </div>
     </li>  
     <li class="form-line jf-required" data-type="control_dropdown" id="id_98">
        <label class="form-label form-label-left form-label-auto" id="label_98" for="input_98">
          State:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_98" class="form-input jf-required">
          <select class="form-textbox validate[required]" style="width:315px" id="input_98" name="state"required>
            <option value="0">Select State Name</option>
            <option value="Andhra Pradesh"> Andhra Pradesh </option>
            <option value="Arunachal Pradesh"> Arunachal Pradesh </option>
            <option value="Assam"> Assam </option>
            <option value="Bihar"> Bihar </option>
            <option value="Chhattisgarh"> Chhattisgarh </option>
            <option value="Delhi"> Delhi </option>
            <option value="Goa"> Goa </option>
            <option value="Gujarat"> Gujarat </option>
            <option value="Haryana"> Haryana </option>
            <option value="Himachal Pradesh"> Himachal Pradesh </option>
            <option value="Jammu and Kashmir"> Jammu and Kashmir </option>
            <option value="Jharkhand"> Jharkhand </option>
            <option value="Karnataka"> Karnataka </option>
            <option value="Kerala"> Kerala </option>
            <option value="Madhya Pradesh"> Madhya Pradesh </option>
            <option value="Maharashtra"> Maharashtra </option>
            <option value="Manipur"> Manipur </option>
            <option value="Meghalaya"> Meghalaya </option>
            <option value="Mizoram"> Mizoram </option>
            <option value="Nagaland"> Nagaland </option>
            <option value="Orissa"> Orissa </option>
            <option value="Punjab"> Punjab </option>
            <option value="Rajasthan"> Rajasthan </option>
            <option value="Sikkim"> Sikkim </option>
            <option value="Tamil Nadu"> Tamil Nadu </option>
            <option value="Tripura"> Tripura </option>
            <option value="Uttar Pradesh"> Uttar Pradesh </option>
            <option value="Uttarakhand"> Uttarakhand </option>
            <option value="West Bengal"> West Bengal </option>
          </select>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_16">
        <label class="form-label form-label-left form-label-auto" id="label_16" for="input_16">
          Pin Code:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_16" class="form-input jf-required">
          <input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_16" name="pincode" size="30" value=""required />
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_16">
        <label class="form-label form-label-left form-label-auto" id="label_16" for="input_16">
          Mobile No:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_16" class="form-input jf-required">
          <input type="text" value="<%=mobile %>" pattern="[789][0-9]{9}" maxlength="10" class=" form-textbox validate[required]" data-type="input-textbox" id="input_16" name="mobile" size="30" value=""required />
        </div>
      </li>
     <li class="form-line jf-required" data-type="control_textbox" id="id_16">
        <label class="form-label form-label-left form-label-auto" id="label_16" for="input_16">
          Email:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_16" class="form-input jf-required">
          <input type="email" value="<%=email %>" class=" form-textbox validate[required]" data-type="input-textbox" id="input_16" name="email" size="30" value=""required />
        </div>
      </li>
      <!-- <li class="form-line form-line-column form-col-3 jf-required" data-type="control_email" id="id_107">
        <label class="form-label form-label-top" id="label_107" for="input_107">
          Email
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_107" class="form-input-wide jf-required">
          <span class="form-sub-label-container" style="vertical-align: top">
           <input type="email" class=" form-textbox validate[Email]" id="input_539" name="email" size="30" value=""required />

            <label class="form-sub-label" for="input_107" style="min-height: 13px;"> Must ensure that you have working Email. </label>
          </span>
        </div>
      </li> -->
      <li class="form-line jf-required" data-type="control_textbox" id="id_4">
        <label class="form-label form-label-left form-label-auto" id="label_4" for="input_4">
      	  User Type:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_4" class="form-input jf-required">
          <input type="text" value="<%=utype%>" class=" form-textbox validate[form-required]" data-type="input-textbox" id="input_2" name="utype" size="50" required/>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_4">
        <label class="form-label form-label-left form-label-auto" id="label_4" for="input_4">
      	  Any Physical Disabilit:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_4" class="form-input jf-required">
          <select class="form-textbox validate[required]" onchange="display1(this.value)" style="width:315px" id="input_6" name="handicap" required>
            <option value="">Please select option</option>
            <option value="yes"> Yes </option>
            <option value="no"> No </option>
          </select>
        </div>
      </li>
<!-- *********************************************************************
      
******************************** Other details *************************
      
**************************************************************************-->
<%
	if(utype.equals("student"))
	{
%>
<li>
<div id="collegedata">
	<ul>
	 <li id="cid_60" class="form-input-wide" data-type="control_head">
        <div class="form-header-group">
          <div class="header-text httal htvam">
            <h2 id="header_60" class="form-header">
              COLLEGE DETAILS
            </h2>
          </div>
        </div>
      </li>
      
      <li class="form-line jf-required" data-type="control_textbox" id="id_2">
        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2" >
      	College Name: 
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_2" class="form-input jf-required">
          <select class="form-textbox validate[required]" style="width:100px" id="input_6" name="collegename" required>
            <option value="0">Please Select College Name</option>
            <%
	            String sql = "Select * From collegelogin";
	    		
	    		ResultSet rs1 = db.getResultSet(sql);
	    		while(rs1.next())
	    		{
	    			String collegename=rs1.getString("collegename");
            %>
            		<option value="<%=collegename%>"><%=collegename%></option>
            <%
	    		}
            %>
          </select>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_2">
        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2" >
      Roll Number:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_2" class="form-input jf-required">
          <input type="text" class=" form-textbox validate[form-required]" data-type="input-textbox" id="input_2" name="rollno" size="50" required/>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_2">
        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2" >
      College Address: 
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_2" class="form-input jf-required">
          <input type="text" class=" form-textbox validate[form-required]" data-type="input-textbox" id="input_2" name="caddress" size="50" required/>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_2">
        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2" >
      	Year: 
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_2" class="form-input jf-required">
          <select class="form-textbox validate[required]" style="width:100px" id="input_6" name="year"required>
            <option value="0">Please Select Year</option>
            <option value="FE"> First Year </option>
            <option value="SE">Second Year</option>
            <option value="TE">Third Year</option>
            <option value="BE">Fourth Year</option>
          </select>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_2">
        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2" >
      	Branch: 
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_2" class="form-input jf-required">
          <select class="form-textbox validate[required]" style="width:100px" id="input_6" name="branch" required>
      		<option value="0">Please Select Branch</option>
            <option value="IT"> Information Techonology </option>
            <option value="Computer"> Computer Science</option>
            <option value="EXTC"> Electronics and Telecommnunication</option>
            <option value="Mechanical">  Mechanical Engineering</option>
            <option value="civil"> Civil Engineering</option>
            <option value="ET"> Electricle Engineering</option>
          </select>
        </div>
      </li>
      </ul>
 </div>
 </li>
<%
	}
%>
 
 <li>
	<div id="disabledata" style="display:none;">
		<ul>
		 <li id="cid_60" class="form-input-wide" data-type="control_head">
	        <div class="form-header-group">
	          <div class="header-text httal htvam">
	            <h2 id="header_60" class="form-header">
	              Disablity Details
	            </h2>
	          </div>
	        </div>
	      </li>
	      
	     <li class="form-line jf-required" data-type="control_textbox" id="id_2">
	        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2" >
	      	Disablity Type 
	          <span class="form-required">
	            *
	          </span>
	        </label>
	        <div id="cid_2" class="form-input jf-required">
	          <input type="text" class=" form-textbox validate[form-required]" data-type="input-textbox" id="input_2" name="dtype" size="50" required/>
	        </div>
	      </li>
	      <li class="form-line jf-required" data-type="control_textbox" id="id_2">
	        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2" >
	      	Medical Certificate 
	          <span class="form-required">
	            *
	          </span>
	        </label>
	        <div id="cid_2" class="form-input jf-required">
	          <input type="text" class=" form-textbox validate[form-required]" data-type="input-textbox" id="input_2" name="certificate" size="50" required/>
	        </div>
	      </li>
	      <li class="form-line jf-required" data-type="control_textbox" id="id_2">
	        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2" >
	      	Certificate No. 
	          <span class="form-required">
	            *
	          </span>
	        </label>
	        <div id="cid_2" class="form-input jf-required">
	          <input type="text" class=" form-textbox validate[form-required]" data-type="input-textbox" id="input_2" name="certificateno" size="50" required/>
	        </div>
	      </li>
	   </ul>
	 </div>
 </li>
 <!-- *********************************************************************
      
******************************** End college details details **************
      
**************************************************************************-->

<!-- *********************************************************************
      
******************************** Pass Route Details *************************
      
**************************************************************************-->
<li>
<div>
	<ul>
	 <li id="cid_60" class="form-input-wide" data-type="control_head">
        <div class="form-header-group">
          <div class="header-text httal htvam">
            <h2 id="header_60" class="form-header">
              PASS ROUTE DETAILS
            </h2>
          </div>
        </div>
      </li>
      
     <li class="form-line jf-required" data-type="control_textbox" id="id_2">
        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2" >
      	At which center you want collect ID/Pass:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_2" class="form-input jf-required">
           <select class="form-textbox validate[required]" style="width:100px" id="input_6" name="center" required>
	            <option value="0">Please Select Center Name</option>
	            <%
		            String sql = "Select * From depo";
		    		
		    		ResultSet rs1 = db.getResultSet(sql);
		    		while(rs1.next())
		    		{
		    			String busdepo=rs1.getString("busdepo");
	            %>
	            		<option value="<%=busdepo%>"><%=busdepo%></option>
	            <%
		    		}
	            %>
          </select>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_2">
        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2" >
      	Select Source
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_2" class="form-input jf-required">
           <select class="form-textbox validate[required]" style="width:100px" id="input_6" name="pfrom" required>
	            <option value="0">Please Select Source</option>
	            <%
		            String sqlq = "Select Distinct(source) From timereaquired";
		    		
		    		ResultSet res1 = db.getResultSet(sqlq);
		    		while(res1.next())
		    		{
		    			String source=res1.getString("source");
	            %>
	            		<option value="<%=source%>"><%=source%></option>
	            <%
		    		}
	            %>
          </select>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_2">
        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2" >
      	Select Destination
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_2" class="form-input jf-required">
           <select class="form-textbox validate[required]" style="width:100px" id="input_6" name="pto" required>
	            <option value="0">Please Select Destination</option>
	            <%
		            String sqlq1 = "Select Distinct(destination) From timereaquired";
		    		
		    		ResultSet res11 = db.getResultSet(sqlq1);
		    		while(res11.next())
		    		{
		    			String destination=res11.getString("destination");
	            %>
	            		<option value="<%=destination%>"><%=destination%></option>
	            <%
		    		}
	            %>
          </select>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_2">
        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2" >
      	Pass Duration: 
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_2" class="form-input jf-required">
          <select class="form-textbox validate[required]" style="width:100px" id="pduration" name="pduration" required>
            <option value="0">Please Select Pass Duration</option>
            <option value="monthly"> Monthly </option>
            <option value="quaterly">Quaterly</option>
            <option value="hyearly">Half Yearly</option>
            <option value="yearly"> Yearly</option>
          </select>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_2">
        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2" >
      	Start date: 
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_2" class="form-input jf-required">
         	<input type="date" class=" form-textbox validate[form-required]" data-type="input-textbox" onchange="setenddate()" id="sdate" name="sdate" size="50" required/>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_2">
        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2" >
      	End date: 
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_2" class="form-input jf-required">
         	<input type="text" class=" form-textbox validate[form-required]" data-type="input-textbox" id="edate" name="edate" size="50" readonly/>
        </div>
      </li>
      </ul>
 </div>
 </li>
 <%
		}
 %>
 <!-- *********************************************************************
      
******************************** End pass details  **************
      
**************************************************************************-->

      	<!--<li class="form-line allowTime" data-type="control_datetime" id="id_22">
        <label class="form-label form-label-left form-label-auto" id="label_22" for="input_22"> Arrival Date & Time </label>
        <div id="cid_22" class="form-input jf-required">
          <span class="form-sub-label-container" style="vertical-align: top">
            <input class="form-textbox validate[limitDate]" id="month_22" name="q22_arrivalDate[month]" type="tel" size="2" maxlength="2" value="10" />
            <span class="date-separate">
              &nbsp;-
            </span>
            <label class="form-sub-label" for="month_22" id="sublabel_month" style="min-height: 13px;"> Month </label>
          </span>
          <span class="form-sub-label-container" style="vertical-align: top">
            <input class="currentDate form-textbox validate[limitDate]" id="day_22" name="q22_arrivalDate[day]" type="tel" size="2" maxlength="2" value="15" />
            <span class="date-separate">
              &nbsp;-
            </span>
            <label class="form-sub-label" for="day_22" id="sublabel_day" style="min-height: 13px;"> Day </label>
          </span>
          <span class="form-sub-label-container" style="vertical-align: top">
            <input class="form-textbox validate[limitDate]" id="year_22" name="q22_arrivalDate[year]" type="tel" size="4" maxlength="4" value="2016" />
            <label class="form-sub-label" for="year_22" id="sublabel_year" style="min-height: 13px;"> Year </label>
          </span>-->


      
<div style="padding-right:200px ">
   <li class="form-line" data-type="control_button" id="id_18">
        <div id="cid_18" class="form-input-wide">
          <div style="text-align:center" class="form-buttons-wrapper">
            <button id="input_18" type="submit" class="mybutton">
              Submit
            </button>
            &nbsp;
           <!--  <button id="input_print_18" style="margin-left:25px;" class="form-submit-print" type="button">
   
              <span id="span_print_18" class="span_print">
                Print Form
              </span>
            </button> -->
            &nbsp;
            <!-- <button id="input_reset_87" type="reset" class="form-submit-reset form-submit-button-simple_red">
              Clear Form
            </button>-->
          
          </div>
        </div>
   </li>  
     		 <input type="hidden" class="form-hidden" value="6" id="input_101" name="q101_applicationNo" />
       </div>	
    </ul>
    </div>
    <p> Note :when your form is Aproved from college then only you can create pass otherwise your pass will be rejected(for Aproved details see in a history)</p>
  </form>
</div>
	</body>
</html>
