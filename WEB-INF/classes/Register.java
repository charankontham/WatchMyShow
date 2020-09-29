import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;

@WebServlet("/register")
public class Register extends HttpServlet{
  public void doGet(HttpServletRequest req,HttpServletResponse res)
  throws ServletException,IOException {
	  
	  try 
	  {
		  Class.forName("com.mysql.jdbc.Driver");//postgresql.org.postgresql.Driver
		  Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/wms", "root", "root");//postgresql://localhost:5433/
			PrintWriter pw = res.getWriter();
			ResultSet rs = null;
			
            if (con != null) 
			{
				res.setContentType("text/html");
				String username,password,mobile,email;
				username = req.getParameter("username");
				password = req.getParameter("password");
				email = req.getParameter("email");
				mobile = req.getParameter("mobile");
				Statement st = con.createStatement();
				rs = st.executeQuery("select * from users where username='"+ username +"';");
				if(rs.next()==false)
				{
					st.executeUpdate("insert into users values('"+ username + "','"+ mobile +"','"+ email +"','"+ password +"');");
					pw.print("success");
					//req.getRequestDispatcher("/login.jsp").forward(req, res);
				}
				else
				{
					pw.print("exists");//req.setAttribute("userExists","User already Exists");
					//req.getRequestDispatcher("/register.jsp").forward(req, res);
				}	
				
            } else {
                pw.print("Not connected to the database!");
            }

        } 
		catch (Exception e)
		{
            e.printStackTrace();
        }
  }
}