package data;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;





/**
 * Servlet implementation class DispatcherServelet
 */
@WebServlet("/DispatcherServelet")
public class DispatcherServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DispatcherServelet() {
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
		response.setContentType("text/html");
		PrintWriter writer=response.getWriter();
	  
		writer.println("<html><body>");  
		writer.println("This is your login data...<br><br>");
	 

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("driver loaded");
			
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/gutal","root","root");
			Statement statement=connection.createStatement();
			System.out.println("driver loaded");
			
			ResultSet set=statement.executeQuery("select * from login; ");
			System.out.println(":done");
		     writer.println("<table border=1 width=50% height=50%>");  
             writer.println("<tr><th>name</th><th>email</th><tr>"); 
			while(set.next()) {
		
				   String n = set.getString("NAME");  
	                 String nm = set.getString("email"); 
	                 
	                 writer.println("<tr><td>" + n + "</td><td>" + nm + "</td>"+"</tr>");   
	             }  
	             writer.println("</table>");  
	             writer.println("</html></body>");  
			}
			
		 catch (Exception e) {
			e.printStackTrace();

	}

}
	}
