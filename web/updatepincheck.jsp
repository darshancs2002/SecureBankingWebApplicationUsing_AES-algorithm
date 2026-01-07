<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connfile.jsp" %>
<%
String password=request.getParameter("password");
String email=request.getParameter("email");



stmt.executeUpdate("update activeuserss set password='"+password+"' where email='"+email+"'");
response.sendRedirect("userdashboard.jsp");
%>

