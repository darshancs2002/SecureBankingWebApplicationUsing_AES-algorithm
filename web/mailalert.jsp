<%-- 
    Document   : mailalert
    Created on : 15 Jul, 2023, 8:07:28 PM
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
                alert("Account has been activated!!");
                window.location.href="activations.jsp";
            }
        </script>
    </head>
    <body>
        <center>
            <%@ include file="connfile.jsp" %>
            <%

                out.println("<script>UserAlert();</script>");
            %>
        </center>
    </body>
</html>