<%@page import="java.util.Date"%>
<%@page import="quick.org.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<script>
	function display()
	{
		var utype="<%=session.getAttribute("utype")%>";
		var handicap="<%=session.getAttribute("handicap")%>";
		if (utype == 'student') {
			if (handicap == 'yes') {
				document.getElementById('third').style.display = "block";
				document.getElementById('fourth').style.display = "block";
			} else {
				document.getElementById('third').style.display = "block";
			}
		} else if (utype == 'other') {
			if (handicap == 'handicap') {
				document.getElementById('fourth').style.display = "block";
			}
		}
	}
	
</script>
<body onload="display();">
<%@include file="studheader.jsp"%>
<div style="padding-left: 200px">
	<form class="" action="passformdoc" method="post"
		name="form_62573819780467" id="62573819780467" enctype="multipart/form-data">
		<input type="text" name="sdate" value="<%=session.getAttribute("sdate")%>">
		<div class="form-all">
			<ul class="form-section page-section">
				<li id="cid_1" class="form-input-wide" data-type="control_head">
					<div class="form-header-group">
						<div class="header-text httal htvam">
							<h2 id="header_1" class="form-header">Attach Documents</h2>

						</div>
					</div>
				</li>
				<li class="form-line jf-required" data-type="control_textbox"
					id="id_3"><label
					class="form-label form-label-left form-label-auto" id="label_3"
					for="input_3"> Passport Size Photo <span
						class="form-required"> * </span>
				</label>
					<div id="cid_3" class="form-input jf-required">
						<input type="file" class=" form-textbox validate[required]"
							data-type="input-textbox" id="input_3" name="file1" size="50"
							required />
					</div></li>
				<li class="form-line jf-required" data-type="control_textbox"
					id="id_5"><label
					class="form-label form-label-left form-label-auto" id="label_4"
					for="input_4"> Signature of the Applicant: <span
						class="form-required"> * </span>
				</label>
					<div id="cid_4" class="form-input jf-required">
						<input type="file" class=" form-textbox validate[required]"
							data-type="input-textbox" id="input_4" name="file2" size="50"
							value="" required />
					</div></li>
			</ul>
		</div>
		<div id="third" class="form-all" style="display: none">
			<ul class="form-section page-section">
				<li class="form-line jf-required" data-type="control_textbox"
					id="id_4"><label
					class="form-label form-label-left form-label-auto" id="label_4"
					for="input_4"> Current Year Fee Receipt: <span
						class="form-required"> * </span>
				</label>
					<div id="cid_4" class="form-input jf-required">
						<input type="file" class=" form-textbox validate[required]"
							data-type="input-textbox" id="input_4" name="file3" size="50"
							value="" required />
					</div></li>
			</ul>
		</div>
		<div id="fourth" class="form-all" style="display: none">
				<ul class="form-section page-section">
					<li class="form-line jf-required" data-type="control_textbox"
						id="id_4"><label
						class="form-label form-label-left form-label-auto" id="label_4"
						for="input_4"> Certificate: <span class="form-required">
								* </span>
					</label>
						<div id="cid_4" class="form-input jf-required">
							<input type="file" class=" form-textbox validate[required]"
								data-type="input-textbox" id="input_4" name="file4" size="50"
								value="" required />
						</div></li>
				</ul>
		</div>
		<div class="form-all">
				<ul class="form-section page-section">
					<li class="form-line" data-type="control_button" id="id_18">
						<div style="padding-right: 200px">
							<div id="cid_18" class="form-input-wide">
								<div style="text-align: center" class="form-buttons-wrapper">
									<input type="hidden" class="form-hidden" value="6"
										id="input_101" name="q101_applicationNo" />
									<button id="input_18" type="submit" class="form-submit-button">
										Submit</button>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
	</form>
</div>
</body>
</html>
