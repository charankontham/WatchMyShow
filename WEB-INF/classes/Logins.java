import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;

@WebServlet("/llogins")
public class Logins extends HttpServlet{
  public void doGet(HttpServletRequest req,HttpServletResponse res)
  throws ServletException,IOException {
	  
	  try 
	  {
		  Class.forName("com.mysql.jdbc.Driver");//postgresql.org.postgresql.Driver
		  Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/wms", "root", "root");//postgresql://localhost:5433/
			PrintWriter pw = res.getWriter();
            if (con != null) 
			{
				res.setContentType("text/html");
				//pw.print("Connected to the database!");
				String usern,pass;
				usern = req.getParameter("username");
				pass = req.getParameter("password");
				//pw.print("Hello "+usern);
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from users where username='"+ usern +"' AND password='"+ pass +"';");
				if(rs.next())
				{
					Cookie usernm = new Cookie("usern",usern);
					res.addCookie(usernm);
					pw.print("success");
					//RequestDispatcher rd = req.getRequestDispatcher("/home").include(req,res);
					//rd.include(req, res); 
				}
				else
				{
					pw.print("incorrect");//req.setAttribute("incorrect","Incorrect details<script>$('.load').hide();$('.incorrect').show();</script>");
					//req.getRequestDispatcher("/login.jsp").forward(req,res);
				}	
				
            } else {
                pw.print("Not connected to the database!");
            }

        } 
		catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }

  }
}