/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author Admin
 */
public class ques extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException 
    {
         PrintWriter out=res.getWriter();
        res.setContentType("text/html;charset=UTF-8");
        String e =req.getParameter("email");
        String q=req.getParameter("que");
        String ds=null;
                RequestDispatcher rd = null;

         RecordCheck rs = new RecordCheck();
        try {
             ds=rs.insertque(e,q);
             if(ds.equals("data inserted"))
             {
                  rd=req.getRequestDispatcher("ques.jsp");  
                rd.forward(req,res);
             }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(check.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(check.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}