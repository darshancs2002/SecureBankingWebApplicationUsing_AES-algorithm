<%-- 
    Document   : rejectcheck
    Created on : 29 Jun, 2023, 12:32:41 PM
    Author     : Darshan CS
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <title>Login Page</title>
        <script>
            function UserAlert()
            {
                alert("Payment Successsful Thankyou for donating");
                window.location.href="activations.jsp";
            }
        </script>
    </head>
    <body>
        <center>
            <%@ include file="connfile.jsp" %>
            <%@page import="network.mail"%>
            <%
                String first = request.getParameter("first");
                String second = request.getParameter("second");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");
                String state = request.getParameter("state");

                //stmt.executeUpdate("insert into reject value('" + first + "','" + second + "','" + email + "','" + phone + "','" + state + "')");
                stmt.executeUpdate("UPDATE activeuserss SET date=NOW(), isActive='Rejected' WHERE email='"+email+"'");
               // stmt.executeUpdate("delete from accopen where email='" + email + "'");
                response.sendRedirect("dashboard.jsp");


                String msg = "Your account has been rejected due to invalid credentials...! please fill application with valid details..!";
                mail m = new mail();
                m.secretMail(msg, first, email);
                System.out.println("success");




                stmt.executeUpdate("delete from accopen where email='" + email + "'");
    //            out.println("<script>UserAlert();</script>");
    //             response.sendRedirect("mailalert.jsp");
%>
        </center>
    </body>
</html>