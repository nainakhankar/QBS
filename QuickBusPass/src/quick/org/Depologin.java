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
 * Servlet implementation class Depologin
 */
@WebServlet("/Depologin")
public class Depologin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Depologin() {
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
		HttpSession session=request.getSession();
        String userid= request.getParameter("userid");
        String password= request.getParameter("password");
  
       
        DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();

		 String queryText = "Select * From depo Where userid='"+userid+"' and password='"+password+"'";

        ResultSet rs = db.getResultSet(queryText);
        try {
			if(rs.next())
			{
				String depo=rs.getString("busdepo");
				session.setAttribute("depo", depo);
				response.sendRedirect("dpassformrequest.jsp");
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Please provide valid username & password')");
				out.println("location=\"Depologin.jsp\"");
				out.println("</script>");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
          
}


	

	}


