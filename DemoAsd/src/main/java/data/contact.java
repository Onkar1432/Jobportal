package data;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class contact
 */
@WebServlet("/contact")
public class contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contact() {
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
		doGet(request, response);
		String name = request.getParameter("NAME");
		String email = request.getParameter("email");
		String subject = request.getParameter("SUBJECT");
		String message = request.getParameter("message");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("driver loaded");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gutal", "root", "root");

			System.out.println("connection done");
			String url = "insert into contact (NAME , email , SUBJECT, message) values (?,?,?,?);";
			PreparedStatement st = con.prepareStatement(url);
			st.setString(1, name);
			st.setString(2, email);
			st.setString(3, subject);
			st.setString(4, message);
			
			st.executeUpdate();
			System.out.println("executed succefully");
			}
			catch(Exception e){
				System.out.println(e);
				System.out.println("mysql class not found");

	}

}
}