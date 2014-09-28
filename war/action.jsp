<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%
 String userName = request.getParameter("username");
 String passWord = request.getParameter("password");
 
 //Query Database
  String tbUsername = "admin";
  String tbPassword = "12345";
  String firstname = "nittaya";
  
  if(userName.equals(tbUsername) && passWord.equals(tbPassword)){
	  out.println("Welcome to Nakhonpathom");
	  session.setAttribute("username_ses", userName);
	  session.setAttribute("firstname_ses", firstname);
	  response.sendRedirect("index.jsp");
  }else{
	  out.println("please check username or password inputted! ");
  }
 %> 
