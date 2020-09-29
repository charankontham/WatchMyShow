import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class ProfileEdit extends HttpServlet{
  public void doGet(HttpServletRequest req,HttpServletResponse res)
  throws ServletException,IOException {
	  
	  try 
	  {
		  Class.forName("com.mysql.jdbc.Driver");//postgresql.org.postgresql.Driver
		  Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/wms", "root", "root");//postgresql://localhost:5433/
			PrintWriter pw = res.getWriter();
			String olduser,newuser,phone,email,password;
            if (con != null) {
						res.setContentType("text/html");
						Statement st = con.createStatement();
						olduser = "";
						Cookie[] c = req.getCookies();
						for(int i=0;i<c.length;i++)
						{  
							if(c[i].getName().equals("usern") && !c[i].getValue().equals("no"))
							{
								olduser = c[i].getValue();	
							}
							 	
						}
						System.out.println(olduser);
						newuser = req.getParameter("nname");
						System.out.println(newuser);
						email = req.getParameter("nemail");
						phone = req.getParameter("nphone");
						password = req.getParameter("npassword");
						if(!newuser.equals(""))
						{
							Cookie newuc = new Cookie("usern",newuser);
							res.addCookie(newuc);
							st.executeUpdate("update users set username='"+newuser+"' WHERE username='"+olduser+"';");
							st.executeUpdate("update cart set username='"+newuser+"' where username='"+olduser+"';"); 
							st.executeUpdate("update bookings set username='"+newuser+"' where username='"+olduser+"';"); 
						}
						if(!email.equals(""))
						{
							st.executeUpdate("UPDATE users SET email='"+email+"' WHERE username='"+olduser+"';");
						}
						if(!phone.equals(""))
						{
							st.executeUpdate("UPDATE users SET mobile='"+phone+"' WHERE username='"+olduser+"';");
						}
						if(!password.equals(""))
						{
							st.executeUpdate("UPDATE users SET password='"+password+"' WHERE username='"+olduser+"';");
						}
						req.getRequestDispatcher("/home").forward(req, res);	
				}
				 else {
            }

        } 
		catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }

  }
}