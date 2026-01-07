<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <title>Login Page</title>
        <script>
            function UserAlert()
            {
                alert("Login Succesful!");
                window.location.href="userdashboard.jsp";
            }
            //        function AdminAlert()
            //        {
            //            alert("Login Succesful!");
            //            window.location.href="Admin/admin.jsp";
            //        }
            function InvalidAlert()
            {
                alert("Account not registered!");
                window.location.href="netbanking.jsp";
            }
        </script>
    </head>
    <body>
        <center>
            <%@ include file="connfile.jsp" %>
            <%
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                rst = stmt.executeQuery("select * from activeuserss where email='" + username + "' and password='" + password + "'");
                if (rst.next()) {
                    session.setAttribute("email", username);
                    session.setAttribute("random", rst.getString("random"));
            //     response.sendRedirect("userdashboard.jsp");

                    out.println("<script>UserAlert();</script>");
                } else {
                    out.println("<script>InvalidAlert();</script");
                }
            %>
        </center>
    </body>
</html>
