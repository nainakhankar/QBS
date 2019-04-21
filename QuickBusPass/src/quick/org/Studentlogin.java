package quick.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Studentlogin")
public class Studentlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
   



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{ 
		HttpSession session=request.getSession();
		PrintWriter out = response.getWriter(); 
        String username= request.getParameter("username");
        String password= request.getParameter("password");
  
       
        DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();

        String queryText =("select * from register where username='"+username+"' and password='"+password+"'");
        ResultSet rs = db.getResultSet(queryText);
        try {
			
	        	if(rs.next())
				{
					String utype=rs.getString("utype");
	        		session.setAttribute("username", username);
	        		session.setAttribute("utype", utype);
					response.sendRedirect("userdetail.jsp");
				}
				else{
				
					out.println("<script type=\"text/javascript\">");
		        	out.println("alert('Please provide valid username & password')");
		        	out.println("location=\"studentlogin.jsp\"");
		        	out.println("</script>");
					///response.sendRedirect("studentlogin.jsp");
		
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
          
}
}
