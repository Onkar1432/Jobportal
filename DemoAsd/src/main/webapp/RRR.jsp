<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import = "java.sql.ResultSet;" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor=yellow>
    <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/forum","root","root");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from student;");
    %><table border=1 align=center style="text-align:center">
      <thead>
          <tr>
             <th>ID</th>
             <th>NAME</th>
             <th>SKILL</th>
             <th>ACTION</th>
          </tr>
      </thead>
      <tbody>
        <%while(rs.next())
        {
            %>
            <tr>
                <td><%=rs.getString("id") %></td>
                <td><%=rs.getString("name") %></td>
                <td><%=rs.getString("skill") %></td>
                <td><%=rs.getString("action") %></td>
            </tr>
            <%}%>
           </tbody>
        </table><br>
    <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    3
    }
    %>
</body>
</html>