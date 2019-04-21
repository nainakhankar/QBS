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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Collegelogin
 */
@WebServlet("/Collegelogin")
public class Collegelogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Collegelogin() {
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

		HttpSession session=request.getSession();
		PrintWriter out = response.getWriter();
		
        String username= request.getParameter("username");
        String password= request.getParameter("password");
        
        session.setAttribute("username", username);
        
        DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();

        String queryText ="Select *  from collegelogin Where username='"+username+"' and password='"+password+"'";
        ResultSet rs = db.getResultSet(queryText);
        try {
			if(rs.next())
				{
					String cname=rs.getString("collegename");
					session.setAttribute("cname", cname);
					response.sendRedirect("csrequest.jsp");
				}
				else{
					out.println("<script type=\"text/javascript\">");
			    	out.println("alert('Please provide valid username & password')");
			    	out.println("location=\"collegelogin.jsp\"");
			    	out.println("</script>");
			
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		} 
          
}


	
