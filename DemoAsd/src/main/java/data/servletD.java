package data;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class servletD
 */
@WebServlet("/servletD")
public class servletD extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servletD() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter writer=response.getWriter();
	  
		writer.println("<html><body>");  
		writer.println("This is your login data...<br><br>");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/gutal","root","root");
			Statement statement=connection.createStatement();
			
			
			ResultSet set=statement.executeQuery("select * from login; ");
			
		     writer.println("<table border=1 width=10% height=10%>");  
             writer.println("<tr><th>name</th><th>email</th><tr>"); 
			while(set.next()) {
		
				   String n = set.getString("NAME");  
	                 String nm = set.getString("email"); 
	                 
	                 writer.println("<tr><td>" + n + "</td><td>" + nm + "</td>"+"</tr>");   
	             }  
	             writer.println("</table>");  
	             writer.println("</html></body>"); 
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		}
	

}
