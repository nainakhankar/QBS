package quick.org;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Collegereg
 */
@WebServlet("/Collegereg")
public class Collegereg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Collegereg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String name = request.getParameter("name");
        String eaddress = request.getParameter("eaddress");

        String userid = request.getParameter("userid");                                                                                                
        String password = request.getParameter("password");
        DatabaseConnection db = new DatabaseConnection();
   			db.dbconnection();

        String queryText = "insert into collegereg(name, eaddress,userid, password) values('"+name+"','"+eaddress+"','"+userid+"','"+password+"')";

        int i = db.getUpdate(queryText);
        if(i==0)
        {
        response.sendRedirect("collegelogin.jsp");
        }
        else{
         
        response.sendRedirect("collegelogin.jsp");
        }
          
}
	}


