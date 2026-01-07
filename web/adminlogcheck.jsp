<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <title>Login Page</title>
        <script>
        function UserAlert()
        {
            alert("Login Succesful!");
            window.location.href="dashboard.jsp";
        }
//        function AdminAlert()
//        {
//            alert("Login Succesful!");
//            window.location.href="Admin/admin.jsp";
//        }
        function InvalidAlert()
        {
            alert("Invalid Credentials!");
            window.location.href="admin.jsp";
        }
        </script>
    </head>
    <body>
<center>
<%@ include file="connfile.jsp" %>
<% 
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        rst = stmt.executeQuery("select * from adminlog where username='" +username+ "' and password='"+password+"'");
        if(rst.next())
        { 
            out.println("<script>UserAlert();</script>");
        }
               else{
            out.println("<script>InvalidAlert();</script");
               }
        %>
</center>
</body>
</html>

