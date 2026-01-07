<%-- 
    Document   : userlogcheck
    Created on : 17 Jun, 2023, 8:33:45 AM
    Author     : Darshan CS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connfile.jsp" %>
<!DOCTYPE html>
<%
String title = request.getParameter("title");
String complients = request.getParameter("complaints");
String date = request.getParameter("date");
String random = request.getParameter("random");

stmt.executeUpdate("insert into complaints value('" + title + "','" + complients + "','" + date + "','" + random + "')");

response.sendRedirect("userdashboard.jsp");

%>
