<%-- 
    Document   : userlogcheck
    Created on : 17 Jun, 2023, 8:33:45 AM
    Author     : Darshan CS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connfile.jsp" %>
<!DOCTYPE html>
<%
String first = request.getParameter("first");
String second = request.getParameter("second");
String father = request.getParameter("father");
String mother = request.getParameter("mother");
String gender = request.getParameter("gender");
String dob = request.getParameter("dob");
String acctype = request.getParameter("acctype");
String photo = request.getParameter("photo");
String password = request.getParameter("password");
String pan = request.getParameter("pan");
String adhar = request.getParameter("adhar");
String phone = request.getParameter("phone");
String email = request.getParameter("email");
String add1 = request.getParameter("add1");
String state = request.getParameter("state");
String add2 = request.getParameter("add2");
String postcode = request.getParameter("postcode");
String city = request.getParameter("city");
String country = request.getParameter("country");

stmt.executeUpdate("insert into accopen value('" + first + "','" + second + "','" + father + "','" + mother + "','" + gender + "','" + dob + "','" + acctype + "','" + photo + "','" + password + "','" + pan + "','" + adhar + "','" + phone + "','" + email + "','" + add1 + "','" + state + "','" + add2 + "','" + postcode + "','" + city + "','" + country + "')");

response.sendRedirect("netbanking.jsp");

%>
