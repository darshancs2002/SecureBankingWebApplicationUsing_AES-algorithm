<%-- 
    Document   : admin
    Created on : 14 Jun, 2023, 8:58:26 AM
    Author     : Darshan CS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .inner{
                border:2px solid black;
                display: inline-block;
                padding: 20px 25px;
                margin: 2in 5.5in;
                background: cornsilk;

            } 
            table tr td{
                padding: 8px 20px;
            }
            a{
                text-decoration: none;
            }
            h1{
                font-size: 20px;
            }
            input[type=text],[type=password]{
                height: 30px;
                width: 300px;
                border-radius:5px;
                font-size: 15px;
            }
            .outer{
                background: lightcyan;
                display: inline-block;
                height: 700px;
            }
            input[type=submit]{

                border-radius: 5px;
                background-color: whitesmoke;  
                color: black;
                font-size: 20px;
            }
            input[type=submit]:hover{
                font-size: 22px;
                color: cornsilk;
                background-color: #0066ff; 
            }
            .nav {
                background-color:cornflowerblue;
                height: 60px;
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 0 20px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                /*                border-radius: 10px;*/
                position: fixed;
                width:1400px;
                margin-bottom:100px; 
            }

            .logo a {
                color: #fff;
                font-size: 24px;
                text-decoration: none;
            }

            .nav-links {
                list-style-type: none;
                display: flex;
                margin: 0;
                padding: 0;
            }

            .nav-links li {
                position: relative;
            }

            .nav-links li a {
                color:black;
                text-decoration: none;
                font-size: 18px;
                padding: 8px 12px;
                border-radius: 4px;
                transition: background-color 0.3s;
            }

            .nav-links li:hover a {
                background-color:cornflowerblue;
                color: white;
            }

            .nav-links li::before {
                content: '';
                position: absolute;
                width: 100%;
                height: 3px;
                background-color:burlywood;
                transform: scaleX(0);
                transform-origin: left center;
                transition: transform 0.3s;
            }

            .nav-links li:hover::before {
                transform: scaleX(1);
            }
        </style>
    </head>
    <body>
        <div class="nav">
            <div class="logo">
                <a href="#">Onilne Banking</a>
            </div>
            <ul class="nav-links">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="netbanking.jsp">Net Banking</a></li>
                <li><a href="admin.jsp">Admin</a></li>
            </ul>
        </div>
        <div class="outer">
            <div class="inner">
                <form method="POST" action="adminlogcheck.jsp">
                <table border="0" cellspacing="0px">
                    <h1>Administrator</h1>
                    <p>Sign in to continue</p>
                    <tr><td><input type="text" placeholder="USERNAME" name="username"/></td></tr>
                    <tr><td><input type="password" placeholder="PASSWORD" name="password"/></td></tr>
                    <tr><td align="center"><input type="submit" value="SIGN IN"/> </td></tr>

                </table>
                </form>
            </div>
        </div>

    </body>
</html>
