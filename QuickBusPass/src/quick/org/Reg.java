package quick.org;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.tribes.group.Response;

/**
 * Servlet implementation class Reg
 */
@WebServlet("/Reg")
public class Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        
		String name = request.getParameter("name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String utype = request.getParameter("utype");
        String username = request.getParameter("username");                                                                                                
        String password = request.getParameter("password");
        
        DatabaseConnection db = new DatabaseConnection();
   		db.dbconnection();

        String queryText = "insert into register(name, address, email, mobile, utype, username, password) values('"+name+"','"+address+"','"+email+"','"+mobile+"','"+ utype+"','"+ username+"','"+password+"')";

        int i = db.getUpdate(queryText);
        if(i==0)
        {
        	out.println("<script type=\"text/javascript\">");
        	out.println("alert('Please provide valid for all fields')");
        	out.println("location=\"registration.jsp\"");
        	out.println("</script>");
        	//response.sendRedirect("registration.jsp");
        }
        else{
        	out.println("<script type=\"text/javascript\">");
        	out.println("alert('Register Successfully Please Login')");
        	out.println("location=\"studentlogin.jsp\"");
        	out.println("</script>");
        	//response.sendRedirect("studentlogin.jsp");
        }
        
          
}
	}


