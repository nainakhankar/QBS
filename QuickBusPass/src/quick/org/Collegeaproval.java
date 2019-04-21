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
 * Servlet implementation class Collegeaproval
 */
@WebServlet("/Collegeaproval")
public class Collegeaproval extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Collegeaproval() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
		String name = "";
		String collegename = "";
		String sql="Select * from passform Where id='"+studid+"' and utype='student'";
		ResultSet rs=db.getResultSet(sql);
		
				try {
						if(rs.next())
						{
							 email = rs.getString("email");
							 name = rs.getString("fname");
							 collegename = rs.getString("collegename");
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		
		
			if(but.equals("A"))
			{
				String query ="update passform set caproval = 'A' where id='"+studid+"'";
			
				int i=db.getUpdate(query);
				
				if(i == 0)
				{
					out.println("<script type=\"text/javascript\">");
		        	out.println("alert('Error Occured')");
		        	out.println("location=\"csrequest.jsp\"");
		        	out.println("</script>");
					//response.sendRedirect("csrequest.jsp");
				}
				else
				{
					SimpleSendEmail send = new SimpleSendEmail(
							"inbotics.testing@gmail.com",email, "From '"+collegename+"'", "Dear '"+name+"' Your Pass Form request is approved from College and send for depo admin aproval",
							"Mahendra@inbotics");
					
					out.println("<script type=\"text/javascript\">");
		        	out.println("alert('Approved Successfully')");
		        	out.println("location=\"csrequest.jsp\"");
		        	out.println("</script>");
					//response.sendRedirect("csrequest.jsp");
				}
			}
			else
			{
				String query ="update passform set caproval = 'R' where id='"+studid+"'";
				
				int i=db.getUpdate(query);
				
				if(i == 0)
				{
					out.println("<script type=\"text/javascript\">");
		        	out.println("alert('Error Occured')");
		        	out.println("location=\"csrequest.jsp\"");
		        	out.println("</script>");
					//response.sendRedirect("csrequest.jsp");
				}
				else
				{
					SimpleSendEmail send = new SimpleSendEmail(
							"inbotics.testing@gmail.com",email, "From '"+collegename+"'", "Dear '"+name+"' Your Pass Form request is rejected from College Admin Please Visit Office",
							"Mahendra@inbotics");
					
					out.println("<script type=\"text/javascript\">");
		        	out.println("alert('Pass Form is Rejected')");
		        	out.println("location=\"csrequest.jsp\"");
		        	out.println("</script>");
					//response.sendRedirect("csrequest.jsp");
				}
			}

		
	}

}
