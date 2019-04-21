package quick.org;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Display
 */
@WebServlet("/Display")
public class Display extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Display() {
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

		String lastname = request.getParameter("lastname");
        String firstname= request.getParameter("firstname");
        String middlename = request.getParameter("middlename");

        String dob = request.getParameter("dob");
        String month = request.getParameter("month");
        String myear = request.getParameter("myear");
        String gender= request.getParameter("gender");
        String maritalstatus= request.getParameter("maritalstatus");
        String religion = request.getParameter("religion");
   
        
        String category= request.getParameter("category");
      
        String houseno= request.getParameter("houseno");
        String village= request.getParameter("village");
        String district= request.getParameter("district");
        String state= request.getParameter("state");
        String pincode= request.getParameter("pincode");
        String mobileno= request.getParameter("mobileno");
        String phoneno = request.getParameter("phoneno");
        String email = request.getParameter("email");
        String collegename = request.getParameter("collegename");
        String  branch = request.getParameter("branch");
        String year = request.getParameter("year");
        String rollno = request.getParameter("rollno");
        String uidno = request.getParameter("uidno");
        
        String student  = request.getParameter("student");
        String studentsign= request.getParameter("studentsign");
        String status = request.getParameter("status");
;

        String place= request.getParameter("place");
        String Date = request.getParameter("Date");
        String tMonth = request.getParameter("tMonth");
        
        String tYear = request.getParameter("tYear");
 
        String username= request.getParameter("username");
        
        

        
       
        DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();

		   
		 String queryText =("Update online Set lastname='"+lastname+"', firstname='"+firstname+"', middlename='"+middlename+"', dob='"+dob+"', month='"+month+"', myear='"+myear+"', gender='"+gender+"', maritalstatus='"+maritalstatus+"', religion='"+religion+"', category='"+category+"', houseno='"+houseno+"' , village='"+village+"', district='"+district+"', state='"+state+"' , pincode='"+pincode+"', mobileno='"+mobileno+"',phoneno='"+phoneno+"',email='"+email+"',collegename='"+collegename+"', branch='"+branch+"', year='"+year+"', student='"+student+"',studentsign='"+studentsign+"',status='"+status+"', place='"+place+"', Date='"+Date+"' ,tMonth='"+tMonth+"',tYear='"+tYear+"',rollno='"+rollno+"',uidno='"+rollno+"'where username='"+username+"'");
        
        int i = db.getUpdate(queryText);
        if(i==0)
        {
        	
        response.sendRedirect("ONLINE FORM.jsp");
        }
        else{
        response.sendRedirect("display2.jsp");
        }
          
}

	}


