package ddd;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class money
 */
@WebServlet("/money")
public class money extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public money() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		try {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			HttpSession hh = request.getSession();
			String name = (String)hh.getAttribute("Name");
			String adress = (String)hh.getAttribute("Adress");
			String piece = (String)hh.getAttribute("Piece");
			out.println("<br>"+"name of customer = "+name+" <br> ");
			out.println(" customer adress = "+adress+" <br> ");
			out.println(", Quantity="+piece+"<br>  ");
			out.println("<a href = 'money2'>Pay</a>");
			out.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
