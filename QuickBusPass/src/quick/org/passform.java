package quick.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Online
 */
@WebServlet("/passform")
public class passform extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public passform() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
	    
			String username=(String) session.getAttribute("username");
			String fname = request.getParameter("fname");	
	        String dob = request.getParameter("dob");
	        String gender= request.getParameter("gender");
	        String rcategory= request.getParameter("rcategory");
	        String address= request.getParameter("address");
	        String vtc= request.getParameter("vtc");
	        String district= request.getParameter("district");
	        String state= request.getParameter("state");
	        String pincode= request.getParameter("pincode");
	        String mobile= request.getParameter("mobile");
	        String email = request.getParameter("email");
	        String utype = request.getParameter("utype");
	        String handicap = request.getParameter("handicap");
	        
	        String collegename = "NA";
    	  	String caddress = "NA";
	        String branch = "NA";
	        String year = "NA";
	        String rollno = "NA";
	        String dtype  = "NA";
	        String certificate= "NA";
	        String certificateno = "NA";
	       
	      if(utype.equals("student"))
	      {
	    	  	 collegename = request.getParameter("collegename");
	    	  	 caddress = request.getParameter("caddress");
		         branch = request.getParameter("branch");
		         year = request.getParameter("year");
		         rollno = request.getParameter("rollno");
	      }
	      
	      if(handicap.equals("yes"))
	      {
	    	  	 dtype  = request.getParameter("dtype");
		         certificate= request.getParameter("certificate");
		         certificateno = request.getParameter("certificateno");
	      }
	     
	        String center= request.getParameter("center");
	        String pfrom = request.getParameter("pfrom");
	        String pto = request.getParameter("pto");
	        String pduration = request.getParameter("pduration");
	        String sdate = request.getParameter("sdate");
	        String edate = request.getParameter("edate");
	        
	        DateFormat dateFormat = new SimpleDateFormat("yyyy");
	        Date date = new Date();
	        String curryear=dateFormat.format(date);
	       
	        DatabaseConnection db = new DatabaseConnection();
			db.dbconnection();
		
		String querytxt="Select * From passform Where foryear='"+curryear+"' and username='"+username+"'";
		ResultSet res=db.getResultSet(querytxt);
		try {
			if(!res.next())
			{
				
				String query="Select * From passform Where sdate='"+sdate+"' and username='"+username+"'";
				ResultSet rs=db.getResultSet(query);
					if(!rs.next())
					{
					    String queryText = "insert into passform(fname,dob,gender,rcategory,address,vtc,district,state,pincode,mobile,email,utype,collegename,rollno,caddress,year,branch,disability,dtype,certificate,certificateno,center,pfrom,pto,pduration,sdate,edate,username,foryear) values('"+fname+"','"+dob+"','"+gender+"','"+rcategory+"','"+address+"','"+vtc+"','"+district+"','"+state+"','"+pincode+"','"+mobile+"','"+email+"','"+utype+"','"+collegename+"','"+rollno+"','"+caddress+"','"+year+"','"+branch+"','"+handicap+"','"+dtype+"','"+certificate+"','"+certificateno+"','"+center+"','"+pfrom+"','"+pto+"','"+pduration+"','"+sdate+"','"+edate+"','"+username+"','"+curryear+"')";
   
					    int i = db.getUpdate(queryText);
					    if(i==0)
					    {
					    	out.println("<script type=\"text/javascript\">");
					    	out.println("alert('Error Occured')");
					    	out.println("location=\"studentpassform.jsp\"");
					    	out.println("</script>");
					    	//response.sendRedirect("studentpassform.jsp");
					    }
					    else{
					    	session.setAttribute("utype", utype);
					    	session.setAttribute("handicap", handicap);
					    	session.setAttribute("sdate", sdate);
					    	
					    	out.println("<script type=\"text/javascript\">");
					    	out.println("alert('Pass Form Sumbmited Successfully')");
					    	out.println("location=\"studentdoc.jsp\"");
					    	out.println("</script>");
					    	//response.sendRedirect("studentdoc.jsp");
					    }      
					}
					else
					{
						out.println("<script type=\"text/javascript\">");
				    	out.println("alert('Please change selected start date')");
				    	out.println("location=\"studentpassform.jsp\"");
				    	out.println("</script>");
					}
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
		    	out.println("alert('This year form is allreday fillup please renew pass')");
		    	out.println("location=\"studentpassform.jsp\"");
		    	out.println("</script>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

	 

	      
	 

	    

