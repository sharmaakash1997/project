/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dell
 */
public class Login extends HttpServlet {
   public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException
    {
        String name=request.getParameter("username");
        String password = request.getParameter("pass");
        
        RequestDispatcher rd = null;
        PrintWriter out=response.getWriter();
       
        request.setAttribute("name", name);
        try {
            LoginDAO l = new LoginDAO();
            String result = l.checkInfo(name, password);
            out.print(result);
           if (result.equals("Login successfull"))
            {
                rd=request.getRequestDispatcher("akk.html");  
                rd.forward(request,response);
            }
            
           
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 
}
