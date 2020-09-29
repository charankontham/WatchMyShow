import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Profile extends HttpServlet{
  public void service(HttpServletRequest req,HttpServletResponse res)
  throws ServletException,IOException {
	  boolean isUserExist=false;
	  try 
	  {
		 //request.setAttribute("name","charan");
		  Class.forName("com.mysql.jdbc.Driver");//postgresql.org.postgresql.Driver
		  Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/wms", "root", "root");//postgresql://localhost:5433/
			PrintWriter pw = res.getWriter();
            if (con != null) {				
				res.setContentType("text/html");
				pw.print("<script type='text/javascript'>alert('Connected to the database!');</script>");
				Cookie[] c = req.getCookies();
				for(int i=0;i<c.length;i++)
				{  
					System.out.println(c[i].getName());
					if(c[i].getName().equals("usern") && c[i].getValue()!="no")
					{
						pw.print("<script type='text/javascript'>alert('inside for loop');</script>");
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select * from users where username='" + c[i].getValue() + "';");
						rs.next();
						req.setAttribute("name",rs.getString("username"));
						req.setAttribute("phone",rs.getString("mobile"));
						req.setAttribute("email",rs.getString("email"));
						req.setAttribute("password",rs.getString("password"));//rs.getString("username");
						isUserExist=true;			
					}
					else
					{
						pw.print("<script type='text/javascript'>alert('User not found');</script>");
					}	
				}
				
            } else {
                pw.print("<script type='text/javascript'>alert('NotConnected to the database!');</script>");
            }

        } 
		catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
		if(!isUserExist)
		{
            req.getRequestDispatcher("/home").forward(req, res);
        }else
		{
            req.getRequestDispatcher("/profile.jsp").forward(req, res);
        }
  }
}