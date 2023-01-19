<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="update1" method = "post">
<%@include file = "Header.jsp" %>
new name<input type = "text" name = "FirstName">
old name<input type = "text" name = "FirstName">
<input type = "submit">
 <%@include file = "footer.jsp" %>
 </form>
</body>
</html>