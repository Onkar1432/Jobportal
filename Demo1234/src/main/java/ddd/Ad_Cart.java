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
 * Servlet implementation class Ad_Cart
 */
@WebServlet("/Ad_Cart")
public class Ad_Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ad_Cart() {
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
		response.setContentType("text/html");
		
		String name =request.getParameter("Name");
		String adress = request.getParameter("Adress");
		String piece = request.getParameter("Piece");
		PrintWriter out = response.getWriter();
		out.println("<br>"+"Name = "+name+"<br>");
		out.println("Adress = "+adress+"<br>");
		out.println("piece = "+piece+"<br>");
		HttpSession hh = request.getSession();
		hh.setAttribute("Name", name);
		hh.setAttribute("Adress", adress);
		hh.setAttribute("Piece", piece);
		out.println("<a href = 'money' >Confirm your order</a>");
		out.close();
		
	}

}
