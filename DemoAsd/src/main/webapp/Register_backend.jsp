<%@page import="java.sql.Statement"%>
<%@ page import = "java.sql.*" %>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
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
catch(ClassNotFoundException e){
	System.out.println(e);
	System.out.println("mysql class not found");}



%>
</body>
</html>