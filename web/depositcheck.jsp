<%-- 
    Document   : depositcheck
    Created on : 3 Jul, 2023, 5:43:35 PM
    Author     : Darshan CS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connfile.jsp" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <title>Login Page</title>
        <script>
            function UserAlert()
            {
                alert("deposit successful!");
                window.location.href="dashboard.jsp";
            }
          
            function InvalidAlert()
            {
                alert("invalid Credentials!");
                window.location.href="dashboard.jsp";
            }
            function noacc()
            {
                
                alert("no account found");
                window.location.href="dashboard.jsp";
            }
        </script>
    </head>
    <body>
        <center>

            <%
                int amount = Integer.parseInt(request.getParameter("amount"));
                String accno = request.getParameter("accno");
                String password = request.getParameter("password");
                rst = stmt.executeQuery("select * from activeuserss where random = '" + accno + "' and password = '" + password + "'");
                if (rst.next()) {

                    System.out.println(amount);
                    int oldbalance, newbalance;
                    rst = stmt.executeQuery("select * from activeuserss where random = '" + accno + "'");
                    if (rst.next()) {
                        oldbalance = rst.getInt("balance");
                        newbalance = oldbalance + amount;

                        stmt.executeUpdate("update activeuserss set balance=" + newbalance + " where random='" + accno + "'");

                        out.println("<script>UserAlert();</script>");



                        String transid = request.getParameter("transid");
                        String date = request.getParameter("date");
                        String type = request.getParameter("type");
                        String toacc = request.getParameter("toacc");
                        String status = request.getParameter("status");

                        stmt.executeUpdate("insert into transactions value('" + transid + "','" + type + "','" + accno + "','" + toacc + "','" + amount + "','" + status + "','" + date + "')");
                    } else {
                        out.println("<script>noacc();</script");
                    }
                } else {
                    out.println("<script>InvalidAlert();</script");
                }
            %>
        </center>
    </body>
</html>