<%@page import="java.util.Date"%>
<%@page import="quick.org.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@include file="cheader.jsp" %>	
<script>
	function display(str)
	{
		if(str=="student")
		{
			document.getElementById('collegedata').style.display = "block";
			document.getElementById('disabledata').style.display = "none";
		}
		else if(str=="handicap")
		{
			document.getElementById('disabledata').style.display = "block";
			document.getElementById('collegedata').style.display = "none";
		}
		else
		{
			document.getElementById('disabledata').style.display = "none";
			document.getElementById('collegedata').style.display = "none";
		}
	}
</script>

<%
		DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		String studid=request.getParameter("studid");
		
		String queryText = "Select * From passform Where id='"+studid+"'";
		
		ResultSet rs = db.getResultSet(queryText);
		if(rs.next())
		{
			String fname=rs.getString("fname");
			
			String address=rs.getString("address");
			String email=rs.getString("email");
			String mobile=rs.getString("mobile");
%>

<div style="padding-left:200px ">
<form class="" action="Collegeaproval" method="post" name="form_62573819780467" id="62573819780467" accept-charset="utf-8">
  <input type="hidden" name="but" value="A" />
  <input type="hidden" name="studid" value="<%=studid%>" />
  
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
          <input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_3" name="fname" required size="50" value="<%=fname %>" required/>
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
          <input type="date" class=" form-textbox validate[required]" data-type="input-textbox" id="input_4" name="dob" value="<%=rs.getString("dob")%>" size="50" required />
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
          <input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_4" name="gender" value="<%=rs.getString("gender")%>" size="50" required />
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
       		<input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_3" name="rcategory" required size="50" value="<%=rs.getString("rcategory")%>" required/>
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
          <input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_3" name="vtc" required size="50" value="<%=rs.getString("vtc")%>" required/>
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
          <input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_3" name="district" required size="50" value="<%=rs.getString("district")%>" required/>
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
          <input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_3" name="state" required size="50" value="<%=rs.getString("state")%>" required/>
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
          <input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_16" name="pincode" size="30" value="<%=rs.getString("pincode")%>" required />
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
          <input type="text" value="<%=mobile %>" class=" form-textbox validate[required]" data-type="input-textbox" id="input_16" name="mobile" size="30" value=""required />
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
          <input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_16" name="utype" size="30" value="<%=rs.getString("utype")%>" required />
        </div>
      </li>
<!-- *********************************************************************
      
******************************** Other details *************************
      
**************************************************************************-->
<li>
<div id="collegedata" style="display:none;">
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
          <input type="text" value="<%=rs.getString("collegename")%>" class=" form-textbox validate[form-required]" data-type="input-textbox" id="input_2" name="collegename" size="50" required/>
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
          <input type="text" value="<%=rs.getString("rollno")%>" class=" form-textbox validate[form-required]" data-type="input-textbox" id="input_2" name="rollno" size="50" required/>
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
          <input type="text" value="<%=rs.getString("caddress")%>" class=" form-textbox validate[form-required]" data-type="input-textbox" id="input_2" name="caddress" size="50" required/>
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
          <input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_16" name="utype" size="30" value="<%=rs.getString("year")%>" required />
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
         <input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_16" name="utype" size="30" value="<%=rs.getString("branch")%>" required />
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
          <input type="text" value="<%=rs.getString("center")%>" class=" form-textbox validate[form-required]" data-type="input-textbox" id="input_2" name="center" size="50" required/>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_2">
        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2" >
      	From:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_2" class="form-input jf-required">
          <input type="text" value="<%=rs.getString("pfrom")%>" class=" form-textbox validate[form-required]" data-type="input-textbox" id="input_2" name="pfrom" size="50" required/>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_2">
        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2" >
      	To: 
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_2" class="form-input jf-required">
          <input type="text" value="<%=rs.getString("pto")%>" class=" form-textbox validate[form-required]" data-type="input-textbox" id="input_2" name="pto" size="50" required/>
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
          <input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_16" name="utype" size="30" value="<%=rs.getString("pduration")%>" required />
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
         	<input type="date" value="<%=rs.getString("sdate")%>" class=" form-textbox validate[form-required]" data-type="input-textbox" id="input_2" name="sdate" size="50" required/>
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
         	<input type="date" value="<%=rs.getString("edate")%>" class=" form-textbox validate[form-required]" data-type="input-textbox" id="input_2" name="edate" size="50" required/>
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
            <button id="input_18" type="submit" class="form-submit-button">
              Approve
            </button>
            &nbsp;
            <button style="margin-left:25px;" class="form-submit-print" type="button">
              <span id="span_print_18">
               	<a href="csrequest.jsp">Back</a>
              </span>
            </button>
          </div>
        </div>
   </li>  
       </div>	
    </ul>
    </div>
    <p> Note :when your form is Aproved from college then only you can create pass otherwise your pass will be rejected(for Approve details see in a history)</p>
  </form>
</div>
	</body>
</html>
