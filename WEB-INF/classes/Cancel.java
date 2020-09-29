import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;

public class Cancel extends HttpServlet{
  protected void service(HttpServletRequest req,HttpServletResponse res)
  throws ServletException,IOException {
	  try 
	  {
		  Class.forName("com.mysql.jdbc.Driver");//postgresql.org.postgresql.Driver
		  Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/wms", "root", "root");//postgresql://localhost:5433/
			PrintWriter pw = res.getWriter();
			Statement st = null;
			int cartid = 0;
			Cookie[] c = req.getCookies();
            if (con != null) {
				res.setContentType("text/html");
				pw.print("<script type='text/javascript'>alert('Connected to the database!');</script>");
				st = con.createStatement();
				for(int i=0;i<c.length;i++)
				{
					if("deletecartid".equals(c[i].getName()))
					{
						cartid = Integer.parseInt(c[i].getValue());
					}
				}
				
				st.executeUpdate("delete from cart where cartid='"+ cartid + "';");	
				req.getRequestDispatcher("/cart").forward(req, res);
            } 
			else 
			{
                pw.print("<script type='text/javascript'>alert('Not connected to the database!');</script>");
            }

        } 
		catch (Exception e) {
            e.printStackTrace();
        }
  }
 
}