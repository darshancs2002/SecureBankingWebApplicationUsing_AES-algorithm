<%-- 
    Document   : connfile
    Created on : 26 Apr, 2023, 8:10:13 AM
    Author     : Darshan CS
--%>

<%@ page language="java" import="java.sql.*" %>
<% 
    String driver = "com.mysql.jdbc.Driver";
    Class.forName(driver).newInstance();
    
    Connection con=null;
    ResultSet rst=null;
    Statement stmt=null;
  
    try{
        String url="jdbc:mysql://localhost/test1?user=root&password=root";
        con=DriverManager.getConnection(url);
        stmt=con.createStatement();
    }
    catch(Exception e){
        System.out.println(e.getMessage());
               
    }
%>    
