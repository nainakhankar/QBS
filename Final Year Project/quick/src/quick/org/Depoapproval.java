package quick.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sendmail.SimpleSendEmail;

/**
 * Servlet implementation class Depoapproval
 */
@WebServlet("/Depoapproval")
public class Depoapproval extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Depoapproval() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter(); 
		String studid = request.getParameter("studid");
		String but = request.getParameter("but");
		
        DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		
		String email = "";
		String name ="";
		String utype = "";
		String sql="Select * from passform Where id='"+studid+"' and utype='student'";
		ResultSet rs=db.getResultSet(sql);
	
			try {
					if(rs.next())
					{
						 email = rs.getString("email");
						 name = rs.getString("fname");
						 utype = rs.getString("utype");
	//					}
	//					else
	//					{
	//						SimpleSendEmail send = new SimpleSendEmail(
	//								"inbotics.testing@gmail.com",email, "Pass Form Aproval From Depo", "Dear '"+name+"' Your Pass Form request is approved from depo admin",
	//								"Mahendra@inbotics");
	//					}
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		 
			
			
			if(but.equals("A"))
			{
				String query ="update passform set daproval = 'A' where id='"+studid+"'";
			
				int i=db.getUpdate(query);
				
				if(i == 0)
				{
		        	out.println("<script type=\"text/javascript\">");
		        	out.println("alert('Error Occured')");
		        	out.println("location=\"dpassformrequest.jsp\"");
		        	out.println("</script>");
					//response.sendRedirect("dpassformrequest.jsp");
				}
				else
				{
					
					SimpleSendEmail send = new SimpleSendEmail(
						"inbotics.testing@gmail.com",email, "Pass Form Aproval From Depo", "Dear '"+name+"' Your Pass Form request is approved from depo admin",
						"Mahendra@inbotics");
					
					out.println("<script type=\"text/javascript\">");
		        	out.println("alert('Approved Successfully')");
		        	out.println("location=\"dpassformrequest.jsp\"");
		        	out.println("</script>");
					//response.sendRedirect("dpassformrequest.jsp");
				}
			}
			else
			{
				String query ="update passform set daproval = 'R' where id='"+studid+"'";
				
				int i=db.getUpdate(query);
				
				if(i == 0)
				{
					out.println("<script type=\"text/javascript\">");
		        	out.println("alert('Error Occured')");
		        	out.println("location=\"dpassformrequest.jsp\"");
		        	out.println("</script>");
					//response.sendRedirect("dpassformrequest.jsp");
				}
				else
				{
					
					SimpleSendEmail send = new SimpleSendEmail(
						"inbotics.testing@gmail.com",email, "Pass Form Rejection From Depo", "Dear '"+name+"' Your Pass Form request is rejected from depo admin",
						"Mahendra@inbotics");
					
					out.println("<script type=\"text/javascript\">");
		        	out.println("alert('Pass Form is Rejected')");
		        	out.println("location=\"dpassformrequest.jsp\"");
		        	out.println("</script>");
					//response.sendRedirect("dpassformrequest.jsp");
				}
			}

		
	}

}