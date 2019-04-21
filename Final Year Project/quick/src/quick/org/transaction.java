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
 * Servlet implementation class Createpass
 */
@WebServlet("/transaction")
public class transaction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public transaction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		PrintWriter out = response.getWriter();
	        String pfrom= request.getParameter("pfrom");
	        String pto = request.getParameter("pto");
	        String sdate= request.getParameter("sdate");
	        String edate = request.getParameter("edate");
	        String pduration= request.getParameter("pduration");
	        String amount=(String) request.getParameter("amount");
	        String cardno= request.getParameter("cardno");
	        String cvvno= request.getParameter("cvvno");
	    	String expiry=(String) request.getParameter("expiry");
	     	String username=(String) session.getAttribute("username");
	       	
	        
	        DatabaseConnection db = new DatabaseConnection();
			db.dbconnection();
			
			String sql = "Select * From transaction Where username='"+username+"'";
	        ResultSet rs = db.getResultSet(sql);
	        try {
				if(rs.next())
				{
					 String queryText = "Update transaction Set pfrom='"+pfrom+"',pto='"+pto+"',sdate='"+sdate+"',edate='"+edate+"',pduration='"+pduration+"',amount='"+amount+"',cardno='"+cardno+"',cvvno='"+cvvno+"',expiry='"+expiry+"' Where username='"+username+"'";
				        int i = db.getUpdate(queryText);
				        if(i==0)
				        {
				        	out.println("<script type=\"text/javascript\">");
				        	out.println("alert('Please fillup all information')");
				        	out.println("location=\"transaction.jsp\"");
				        	out.println("</script>");
				        	//response.sendRedirect("ONLINE FORM.jsp");
				        }
				        else
				        {
				        	out.println("<script type=\"text/javascript\">");
				        	out.println("alert('Transaction Successfully Completed')");
				        	out.println("location=\"transaction.jsp\"");
				        	out.println("</script>");
				        	//response.sendRedirect("popup.html");
				        }  
						        
				}
				else
				{
					 String queryText = "insert into transaction(username,pfrom,pto,sdate,edate,pduration,amount,cardno,cvvno,expiry) values('"+username+"','"+pfrom+"','"+pto+"','"+sdate+"','"+edate+"','"+pduration+"','"+amount+"','"+cardno+"','"+cvvno+"','"+expiry+"')";
				        int i = db.getUpdate(queryText);
				        if(i==0)
				        {
				        	out.println("<script type=\"text/javascript\">");
				        	out.println("alert('Please fillup all information')");
				        	out.println("location=\"transaction.jsp\"");
				        	out.println("</script>");
				        	//response.sendRedirect("ONLINE FORM.jsp");
				        }
				        else
				        {
				        	out.println("<script type=\"text/javascript\">");
				        	out.println("alert('Transaction Successfully Completed')");
				        	out.println("location=\"transaction.jsp\"");
				        	out.println("</script>");
				        	//response.sendRedirect("popup.html");
				        }
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			          
			}
		}
