<%@page import="quick.org.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="studheader.jsp" %>	

<div style="padding-right:400px ">
<div style="padding-left:200px ">
<form class="Online-form" action="transaction" method="post"  name="form_62573819780467" id="62573819780467" >
<ul>    
      <li id="cid_83" class="form-input-wide" data-type="control_head">
        <div class="form-header-group">
          <div class="header-text httal htvam">
            <h2 id="header_83" class="form-header">
		      	Transaction for Create/Renew pass:
		      	<input type="hidden"value=" "    class=" form-textbox validate[required]" data-type="input-textbox" id="input_2" name="username"size="50" value="" required/>
            </h2>
          </div>
        </div>
      </li>
<%
DatabaseConnection db = new DatabaseConnection();
db.dbconnection();
	String username=(String) session.getAttribute("username");
	ResultSet rs = null;
	
	String sql="Select * from passform Where username = '"+username+"'";
	rs=db.getResultSet(sql);
	
	if(rs.next())
	{
		String id = rs.getString("id");
		String caproval = rs.getString("caproval");
		String daproval = rs.getString("daproval");
		String pfrom = rs.getString("pfrom");
		String pto = rs.getString("pto");
		String sdate = rs.getString("sdate");
		String edate = rs.getString("edate");
		String pduration = rs.getString("pduration");
		String amount = "";

		if(caproval.equals("A") && daproval.equals("A") || caproval.equals("P") && daproval.equals("A"))
		{
			ResultSet rs1 = null;
			
			String sql1="Select * from transaction Where username = '"+username+"'";
			rs1=db.getResultSet(sql1);
			if(rs1.next())
			{
				 pfrom = rs1.getString("pfrom");
				 pto = rs1.getString("pto");
				 sdate = rs1.getString("sdate");
				 edate = rs1.getString("edate");
				 pduration = rs1.getString("pduration");
				 //amount = rs1.getString("amount");
			}
			String sql2="Select * from timereaquired Where source='"+pfrom+"' and destination='"+pto+"'";
			ResultSet rs2=db.getResultSet(sql2);
			if(rs2.next())
			{
				 amount = rs2.getString("monthly");
			}
%>
	  <li class="form-line jf-required" data-type="control_dropdown" id="id_98">
        <label class="form-label form-label-left form-label-auto" id="label_98" for="input_98">
         	Start stop:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_98" class="form-input jf-required">
          <input type="text" value="<%=pfrom%>" class=" form-textbox validate[required]" data-type="input-textbox" id="input_2" name="pfrom" size="34" required/>
        </div>
      </li>
	  <li class="form-line jf-required" data-type="control_dropdown" id="id_98">
        <label class="form-label form-label-left form-label-auto" id="label_98" for="input_98">
       		End Stop:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_98" class="form-input jf-required">
          <input type="text" value="<%=pto%>" class=" form-textbox validate[required]" data-type="input-textbox" id="input_2" name="pto"size="34" required/>
        </div>
      </li>
       <li class="form-line jf-required" data-type="control_dropdown" id="id_98">
        <label class="form-label form-label-left form-label-auto" id="label_98" for="input_98">
         	Start Date:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_98" class="form-input jf-required">
          <input type="date" value="<%=sdate%>" class=" form-textbox validate[required]" data-type="input-textbox" id="input_2" name="sdate" required/>
        </div>
      </li>
	  <li class="form-line jf-required" data-type="control_dropdown" id="id_98">
        <label class="form-label form-label-left form-label-auto" id="label_98" for="input_98">
       		End Date:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_98" class="form-input jf-required">
          <input type="date" value="<%=edate%>" class=" form-textbox validate[required]" data-type="input-textbox" id="input_2" name="edate" width="80%" required/>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_dropdown" id="id_98">
        <label class="form-label form-label-left form-label-auto" id="label_98" for="input_98">
       		Pass Duration:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_98" class="form-input jf-required">
          <input type="text" value="<%=pduration%>" class=" form-textbox validate[required]" data-type="input-textbox" id="input_2" name="pduration" size="34" required/>
        </div>
      </li>
       <li class="form-line jf-required" data-type="control_textbox" id="id_2">
        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2">
			Amount:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_2" class="form-input jf-required">
          <input type="text" value="<%=amount%>" class=" form-textbox validate[required]" data-type="input-textbox" id="input_2" name="amount" size="50" readonly required/>
        </div>
      </li>
	  <li class="form-line jf-required" data-type="control_textbox" id="id_2">
        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2">
			Credit/Debit Card No:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_2" class="form-input jf-required">
          <input type="text"  class=" form-textbox validate[required]" data-type="input-textbox" id="input_2" name="cardno"size="50" value="" required/>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_2">
        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2">
			CVV no:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_2" class="form-input jf-required">
          <input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_2" name="cvvno" size="50" value="" required/>
        </div>
	  </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_2">
        <label class="form-label form-label-left form-label-auto" id="label_2" for="input_2">
			Card Expiry Year & Month
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_2" class="form-input jf-required">
          <input type="date" class=" form-textbox validate[required]" data-type="input-textbox" id="input_2" name="expiry" size="10" value="" required/>
        </div>
	  </li>  
       <li class="form-line" data-type="control_button" id="id_87">
        <div id="cid_87" class="form-input-wide">
          <div style="margin-left:206px" class="form-buttons-wrapper">
            <button id="input_87" type="submit" class="mybutton">
              Create / Renew Pass
            </button>          
          </div>
        </div>
      </li>
<%
		}
	}
%>
    </ul>
    </form>
   </div>
</div>
</body>
</html>
</body>
</html>