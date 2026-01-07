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
                String email = request.getParameter("email");
                String password = request.getParameter("password");

                stmt.executeUpdate("insert into userlog value('" + email + "','" + password + "')");
                response.sendRedirect("dashboard.jsp");

                String first = request.getParameter("first");
                String second = request.getParameter("second");
                String father = request.getParameter("father");
                String mother = request.getParameter("mother");
                String gender = request.getParameter("gender");
                String dob = request.getParameter("dob");
                String acctype = request.getParameter("acctype");
                String photo = request.getParameter("photo");
                String pan = request.getParameter("pan");
                String adhar = request.getParameter("adhar");
                String phone = request.getParameter("phone");
                String add1 = request.getParameter("add1");
                String state = request.getParameter("state");
                String add2 = request.getParameter("add2");
                String postcode = request.getParameter("postcode");
                String city = request.getParameter("city");
                String country = request.getParameter("country");
                String random = request.getParameter("random");
                String date = request.getParameter("date");

                //stmt.executeUpdate("insert into activeuserss value('" + random + "','" + first + "','" + second + "','" + father + "','" + mother + "','" + gender + "','" + dob + "','" + acctype + "','" + photo + "','" + password + "','" + pan + "','" + adhar + "','" + phone + "','" + email + "','" + add1 + "','" + state + "','" + add2 + "','" + postcode + "','" + city + "','" + country + "','" + date + "',0)");
                stmt.executeUpdate("UPDATE activeuserss SET random='"+random+"', date=NOW(), isActive='True' WHERE email='"+email+"'");
                String msg = "hurray...Your account has been activated";
                mail m = new mail();
                m.secretMail(msg, first, email);
                System.out.println("success");




                //stmt.executeUpdate("delete from accopen where email='" + email + "'");
    //            out.println("<script>UserAlert();</script>");
    //             response.sendRedirect("mailalert.jsp");
%>
        </center>
    </body>
</html>