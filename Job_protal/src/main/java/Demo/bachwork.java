package Demo;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 * Servlet implementation class bachwork
 */
@WebServlet("/bachwork")
public class bachwork extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bachwork() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String FirstName = request.getParameter("FirstName");
		String LName = request.getParameter("LastName");
		String Email = request.getParameter("EmailID");
		String mobile = request.getParameter("mobileNumber");
		String Adress = request.getParameter("Address");
		String city = request.getParameter("City");
		String pin = request.getParameter("PinCode");
		String State = request.getParameter("State");
		String country = request.getParameter("Country");
		String hobby = request.getParameter("Hobby");
		String  Qua= request.getParameter("Qualification");
		try{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("driver loaded");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gutal", "root", "root");

			System.out.println("connection done");
			String url = "insert into Registration (FirstName , LastName , EmaillD ,  mobileNumber , Address , City , PinCode , State , Country , Hobby , Qualification) values (?,?,?,?,?,?,?,?,?,?,?));)";
			PreparedStatement st = con.prepareStatement(url);
			st.setString(1, FirstName);
			st.setString(2, LName);
			st.setString(3, Email);
			st.setString(4, mobile);
			st.setString(5, Adress);
			st.setString(6, city);
			st.setString(7, pin);
			st.setString(8, State);
			st.setString(9, country);
			st.setString(10, hobby);
			st.setString(11, Qua);
			
			st.executeUpdate();
			System.out.println("executed succefully");
			}
			catch(Exception e){
				System.out.println(e);
				System.out.println("mysql class not found");

	}
	}
}
