
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
                alert("Transfer successful!");
                window.location.href="userdashboard.jsp";
            }
          
            function InvalidAlert()
            {
                alert("invalid pin!");
                window.location.href="dashboard.jsp";
            }
            function balancealert()
            {
                
                alert("no balance");
                window.location.href="userdashboard.jsp";
            }
            function noacc()
            {
                
                alert("no account found");
                window.location.href="userdashboard.jsp";
            }
        </script>
    </head>
    <body>
        <center>

            <%
                String fromaccno = request.getParameter("accno");
                String toaccno = request.getParameter("toacc");
                int amount = Integer.parseInt(request.getParameter("amount"));
                System.out.println(amount);
                int oldbalance, newbalance;
                rst = stmt.executeQuery("select * from activeuserss where random = '" + fromaccno + "'");
                if (rst.next()) {
                    oldbalance = rst.getInt("balance");
                    rst = stmt.executeQuery("select * from activeuserss where random = '" + toaccno + "'");
                    if (rst.next()) {
                        if (amount < oldbalance) {
                            newbalance = oldbalance - amount;
                            stmt.executeUpdate("update activeuserss set balance=" + newbalance + " where random='" + fromaccno + "'");
                            rst = stmt.executeQuery("select * from activeuserss where random = '" + toaccno + "'");
                            if (rst.next()) {
                                oldbalance = rst.getInt("balance");
                                newbalance = oldbalance + amount;

                                stmt.executeUpdate("update activeuserss set balance=" + newbalance + " where random='" + toaccno + "'");

                                out.println("<script>UserAlert();</script");

                            }
                       
                        } else {
                            out.println("<script>balancealert();</script");
                        }

                        String transid = request.getParameter("transid");
                        String date = request.getParameter("date");
                        String type = request.getParameter("type");
                        String toacc = request.getParameter("toacc");
                        String status = request.getParameter("status");

                        stmt.executeUpdate("insert into transactions value('" + transid + "','" + type + "','" + fromaccno + "','" + toacc + "','" + amount + "','" + status + "','" + date + "')");

                    } else {
                        out.println("<script>noacc();</script");
                    }
                }
            %>
        </center>
    </body>
</html>


