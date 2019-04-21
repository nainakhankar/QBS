package quick.org;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


/**
 * Servlet implementation class passformdoc
 */
@WebServlet("/passformdoc")
public class passformdoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public passformdoc() {
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
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		ArrayList<String> textbox1 = new ArrayList<String>();
		ArrayList<String> textbox = new ArrayList<String>();
		String realpath = getServletContext().getRealPath("/doc");

		// process only if its multipart content
		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
				for (FileItem item : items) {
					if (item.isFormField()) {

						String fieldValue = item.getString();
						textbox.add(fieldValue);
							
					} else {
						
						String name = new File(item.getName()).getName();
						textbox1.add(name);
						System.out.println(textbox1);
						item.write(new File(realpath+File.separator + name));
					}
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		String username=(String)session.getAttribute("username");

		DatabaseConnection db = new DatabaseConnection();
		int i=0;
		db.dbconnection();
		
		String utype=(String)session.getAttribute("utype");
		String handicap=(String)session.getAttribute("handicap");
		
		if(utype.equals("student"))
		{
			if(handicap.equals("yes"))
			{
				i=db.getUpdate("Update passform Set photo='"+textbox1.get(0)+"',sign='"+textbox1.get(1)+"',receipt='"+textbox1.get(2)+"',certpic='"+textbox1.get(3)+"' Where username='"+username+"'");
			}
			else
			{
				i=db.getUpdate("Update passform Set photo='"+textbox1.get(0)+"',sign='"+textbox1.get(1)+"',receipt='"+textbox1.get(2)+"',certpic='NA' Where username='"+username+"'");
			}
		}
		else
		{
			if(handicap.equals("yes"))
			{
				i=db.getUpdate("Update passform Set photo='"+textbox1.get(0)+"',sign='"+textbox1.get(1)+"',receipt='NA',certpic='"+textbox1.get(3)+"' Where username='"+username+"'");
			}
			else
			{
				i=db.getUpdate("Update passform Set photo='"+textbox1.get(0)+"',sign='"+textbox1.get(1)+"',receipt='NA',certpic='NA' Where username='"+username+"'");
			}
		}
			if(i==1)
			{
				out.println("<script type=\"text/javascript\">");
	        	out.println("alert('Upload Successfully')");
	        	out.println("location=\"studentrequest.jsp\"");
	        	out.println("</script>");
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
	        	out.println("alert('Error Occured in Documents Uploading')");
	        	out.println("location=\"studentdoc.jsp\"");
	        	out.println("</script>");
			}
	}

}
