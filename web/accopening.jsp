<%-- 
    Document   : accopening
    Created on : 10 Jun, 2023, 2:24:49 PM
    Author     : Darshan CS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .outer{
                font-size: 20px;
                background-color: lightcyan;
            }
            h1{
                background-color: lightblue;    
            }
/*            .body{
                background-color: lightblue;    
            }*/
            table th{
                font-size: 25px;
            }
            table tr td{
                padding: 15px 15px;
            }
            input[type=text],input[type=password],input[type=date],input[type=file],input[type=select]{
                height: 30px;
                width:500px;
                border-radius: 5px;
            }
            #gen{
                height: 30px;
                width:500px;
                border-radius: 5px;
            }
            .pics{
                border:2px solid black;
                padding-left: 4px;
                padding-top: 5px;
                border-radius: 5px;
            }
            input[type=submit]{
                border-radius: 5px;
                background-color: #0066ff;  
                color: black;
                font-size: 20px;
            }
            input[type=submit]:hover{
                font-size: 22px;
                color: black;
                background-color: whitesmoke; 
            }
        </style>
    </head>
    <body>
        <script>
            function UserAlert()
            {
                alert("Application Submitted!!");
                response.sendRedirect("activeusers.jsp");
            }
        </script>
        
        <h1 align="center">Account Opening Form</h1>
        <div class="outer">
            <form method="POST" action="Recommends" enctype="multipart/form-data">
                <table>
                    <th>Personal details</th>
                    <tr><td>First name</td><td><input type="text" name="first" pattern="[A-Za-z\s]+" required/></td>
                        <td>Last name</td><td><input type="text" name="second" pattern="[A-Za-z\s]+" required/></td></tr>
                    <tr><td>Father name</td><td><input type="text" name="father" pattern="[A-Za-z\s]+" required/></td>
                        <td>Mother name</td><td><input type="text" name="mother" pattern="[A-Za-z\s]+" required/></td></tr>
                    <tr><td>Gender</td><td>
                            <select id="gen" name="gender">
                                <option value="" selected disabled hidden>SELECT GENDER</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                                <option value="other">other</option>
                            </select>
                        </td>
                        <td>Date of Birth</td><td><input type="date" name="dob" /></td></tr>
                    <tr><td>Account Type</td><td>
                            <select id="gen" name="acctype" >
                                <option value="" selected disabled hidden>SELECT Account type</option>
                                <option value="savings">Savings</option>
                                <option value="current">Current</option>
                            </select>
                        </td>
                        <td>Photo</td><td><div class="pics"><input type="file" name="photo"/></div></td>
                    <tr><td>Password</td><td><input type="password" name="password"/></td>
                        <td>Confirm Password</td><td><input type="password"/></td></tr>
                    <th>KYC Details</th>
                    <tr><td>PAN Card Number</td><td><input type="text" name="pan"/></td>
                        <td>Adhar Number</td><td><input type="text" name="adhar"/></td></tr>
                    <tr><td>Mobile Number</td><td><input type="text" name="phone"/></td>
                        <td>Email Id</td><td><input type="text" name="email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" required/></td></tr>
                    <th>Address</th>
                    <tr><td>Address 1</td><td><input type="text" name="add1" pattern="[A-Za-z\s]+" required/></td>
                        <td>State</td><td><input type="text" name="state" pattern="[A-Za-z\s]+" required/></td></tr>
                    <tr><td>Address 2</td><td><input type="text" name="add2" pattern="[A-Za-z\s]+" required/></td>
                        <td>Postcode</td><td><input type="text" name="postcode" required/></td></tr>
                    <tr><td>City</td><td><input type="text" name="city" pattern="[A-Za-z\s]+" required/></td>
                        <td>Country</td><td>
                            <select id="gen" name="country" >
                                <option value="" selected disabled hidden>Select Country</option>
                                <option value="india">India</option>
                                <option value="pakistan">Pakistan</option>
                            </select>
                        </td></tr>
                    <tr><td colspan="4" align="center"><input type="submit" onclick="UserAlert()" value="Submit"/> </td></tr>
                </table>
            </form>
        </div>
    </body>
</html>
