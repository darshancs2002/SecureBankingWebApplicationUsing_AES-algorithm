/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package network;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/Recommends")
@MultipartConfig(maxFileSize = 1073741824)
public class Recommend extends HttpServlet {

    private String dbURL = "jdbc:mysql://localhost:3306/test1";
    private String dbUser = "root";
    private String dbPass = "root";

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        String first = request.getParameter("first");
        String second = request.getParameter("second");
        String father = request.getParameter("father");
        String mother = request.getParameter("mother");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String acctype = request.getParameter("acctype");
        String password = request.getParameter("password");
        String pan = request.getParameter("pan");
        String adhar = request.getParameter("adhar");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String add1 = request.getParameter("add1");
        String state = request.getParameter("state");
        String add2 = request.getParameter("add2");
        String postcode = request.getParameter("postcode");
        String city = request.getParameter("city");
        String country = request.getParameter("country");
        // System.out.println("User Recommend :" + gen + age + marital + edu + interest + content);
        InputStream inputStream = null;
        Part filePart = request.getPart("photo");
        if (filePart != null) {

            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());


            inputStream = filePart.getInputStream();
           
        }

        Connection conn = null;
        String message = null;

        try {

            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
            
            //Checking if AID is Available Already
            String sql = "";
            PreparedStatement statement;
           
                sql = "INSERT INTO activeuserss(first,second,father,mother,gender,dob,acctype,photo,password,pan,adhar,phone,email,add1,state,add2,postcode,city,country, isActive) values (?, ?, ?, ?, ?, ?,?,?,?,?,?,?,?,?,?,?,?,?,?, 'False')";
                statement = conn.prepareStatement(sql);
                statement.setString(1, first);
                statement.setString(2, second);
                statement.setString(3, father);
                statement.setString(4, mother);
                statement.setString(5, gender);
                statement.setString(6, dob);
                statement.setString(7, acctype);
                statement.setString(9, password);
                statement.setString(10, pan );
                statement.setString(11, adhar);
                statement.setString(12, phone);
                statement.setString(13, email);
                statement.setString(14, add1);
                statement.setString(15, state);
                statement.setString(16, add2);
                statement.setString(17, postcode);
                statement.setString(18, city);
                statement.setString(19, country);
                
                if (inputStream != null) {
                    statement.setBlob(8, inputStream);
                }
            

            //  statement.setString(1, bio);




            int row = statement.executeUpdate();
            if (row > 0) {

                System.out.println("image upload sucess");
                response.sendRedirect("netbanking.jsp?msg=success,");
            } else {
                response.sendRedirect("netbanking.jsp?msg=Failed");

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}