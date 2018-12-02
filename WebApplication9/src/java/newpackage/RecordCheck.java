/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RecordCheck {
    
    public String insert(int id,String fname,String pass) throws ClassNotFoundException, SQLException, IOException
    {
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");  
        PreparedStatement ps = con.prepareStatement("insert into id values(?,?,?)");
        ps.setString(1, fname);
        ps.setString(2,pass);
         ps.setInt(3, id);
        int rs=ps.executeUpdate();
        if(rs>0)
        {
            return "data inserted";
        }
        return "data not inserted";
    }    

   public String insertque(String q) throws ClassNotFoundException, SQLException, IOException
    {
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");  
        PreparedStatement ps = con.prepareStatement("insert into ans(question) values(?)");
        ps.setString(1, q);
        
        int rs=ps.executeUpdate();
        if(rs>0)
        {
            return "data inserted";
        }
        return "data not inserted";
    }    
    public static void main(String args[]) throws ClassNotFoundException, SQLException, IOException
    {
        RecordCheck n=new RecordCheck();
         n.insertque("passwr");
    }

}
