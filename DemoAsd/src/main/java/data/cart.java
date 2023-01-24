package data;

import java.io.*;  

import javax.servlet.http.*;  
  
  
public class cart extends HttpServlet {  
  

public void doPost(HttpServletRequest request, HttpServletResponse response){  
        try{  
  
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
          
        String n=request.getParameter("userName");  
        out.print("Welcome "+n);  
          
        HttpSession session=request.getSession();  
        session.setAttribute("uname",n);  
  
        out.print("<a href='Assd'>visit</a>");  
                  
        out.close();  
        }catch(Exception e){System.out.println(e);}
        }}
