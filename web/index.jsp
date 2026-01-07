<!DOCTYPE html>
<html>
    <head>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Carter+One&family=Rubik+Pixels&family=Shrikhand&display=swap" rel="stylesheet">
        <style>
            body{
                background-color: lightcyan;
            }
            .head{
                /*                border: 2px solid black;*/
                display: inline-block;
                margin-top: 2.3in;
                font-family: monospace;
                font-size: 600%;
                margin-left: 90px;
                color: #9988ff;
                font-family: 'Rubik Pixels', cursive;
                font-family: 'Shrikhand', cursive;
            }            
            .images{
                padding-left: -1.5in;
                margin-top: 100px;
                display: inline-block;
                float:right;
                


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
            /*            card section starts*/
            .features {
                display: flex;
                justify-content: center;
                align-items: center;
                flex-wrap: wrap;
                margin: 40px 0;
                margin-top: 300px;
            }
            .feature {
                flex-basis: 30%;
                max-width: 300px;
                padding: 20px;
                text-align: center;
                margin: 20px;
                background-color: whitesmoke;
                border-radius: 4px;
                box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
                border: 2px solid black;
            }
            .feature img {
                width: 80px;
                height: 80px;
            }
            .feature h3 {
                font-size: 24px;
                margin-bottom: 10px;
            }
            .feature p {
                font-size: 16px;
                color: #666;
            }
            /*          card end*/
            #services{
                margin-top: 500px;
                display: flex;
                padding-top: 300px;
                /*                border: 2px solid black;
                */                display: inline-block;
                position: absolute;
                top: 03px;
                color: cornflowerblue;
            }
            .about{
                display: flex;
                justify-content: center;
                align-items: center;
                flex-wrap: wrap;
            }
            #abouts{
                flex-basis: 30%;
                max-width: 300px;
                padding: 20px;
                text-align: center;
                margin: 20px;
            }
            #abouts p{
                font-size: 18px;
            }
            #abouts h1{
                color: cornflowerblue;
            }
/*            .full{
                margin-top: 100px;
            }*/

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
        <div class="full">
        <h1 class="head">ONLINE <br/>BANKING</h1>
        <img src="Images/img1.png" class="images" alt="error"/>

        <h1 id="services">BANKING SERVICES</h1>
        <section class="features">
            <div class="feature">
                <img src="Images/loan.jpg" alt="Icon 1">
                <h3>Personal Loans</h3>
                <p>Personal Loan on Credit Card Flexicash(Overdraft Against Salary)<br/>Business Loan<br/>Home Loan</p>
            </div>
            <div class="feature">
                <img src="Images/savings.png" alt="error"/>
                <h3>Savings Account</h3>
                <p>Regular Savings Account<br/>Salary Account<br/>Senior Citizen Savings Account<br/>Retire Happy Savings Account</p>
            </div>
            <div class="feature">
                <img src="Images/fixed.jpg" alt="Icon 3">
                <h3>Fixed Deposit(FD)</h3>
                <p>Fixed Deposit<br/>FD Xtra<br/>Tax Saving FD<br/>Money Multiplier FD</p>
            </div>
        </section>

        <section class="about">
            <div id="abouts">
                <h1>About Cryptography</h1>
                <p>Cryptography is the practice of secure<br/> communication in the presence<br/> of third parties or adversaries.
                    <br/>It plays a crucial role in protecting<br/> data privacy and ensuring <br/>secure communication.</p>
            </div>
            <div id="abouts">
                <h1>WE TAKE YOUR SECURITY SERIOUSLY!</h1>
                <p>We make you feel special <br/>Your data will be safe with us<br/>
                    you can feel free to raise complaints</p>
            </div>
            <div id="abouts">
                <h1>IMPORTANT LINKS</h1>
                <p><a href="accopening.jsp">Account creation</a><br/>
                    <a href="#">Withdraw money</a><br/>
                    <a href="#">Transfer money</a><br/>
                    <a href="#">Check Balance</a></p>
            </div>
        </section>
    </div>
    </body>
</html>
