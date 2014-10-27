<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<% 

String strusername = request.getParameter("username");
String strpassword = request.getParameter("password");
//session.setAttribute("username", strusername);
//session.setAttribute("password", strpassword);

//Query DB
String dbusername = "5405100028";
String dbpassword = "1234";

if(strusername.equals(dbusername) && strpassword.equals(dbpassword)){
	//out.println("Welcome To Nakhon Si Thammarut"); 
	session.setAttribute("username11",dbusername);
	response.sendRedirect("index.jsp");
	
}
	else{
	out.println("Try again");
}


%>

<!DOCTYPE html >
<html>
<head>

<title>Insert title here</title>
</head>
<body>



</body>
</html>