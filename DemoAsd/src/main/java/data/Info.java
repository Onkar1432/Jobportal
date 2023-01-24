package data;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Info
 */
@WebServlet("/Info")
public class Info extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Info() {
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
		

		PrintWriter out = response.getWriter();
		String name = request.getParameter("Name");
		String email = request.getParameter("ID");
		String subject = request.getParameter("Cost");
		
		out.println(name);
		out.println(email);
		out.println(subject);
		
		
	HttpSession obj = request.getSession();
	obj.setAttribute("Name", name);
	obj.setAttribute("ID", email);
	obj.setAttribute("Cost", subject);
	
	
	
	RequestDispatcher rd = request.getRequestDispatcher("payment");
	rd.forward(request,response);
	
	out.println("<a href ='payment'>click here for Payment</a>");
	
	
	}

}
