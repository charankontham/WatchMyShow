import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class RegisterClick extends HttpServlet{
  public void service(HttpServletRequest req,HttpServletResponse res)
  throws ServletException,IOException {
	  
	  try 
	  {
		 req.setAttribute("userExists"," ");
		 req.getRequestDispatcher("/register.jsp").forward(req, res);
      } 
		catch (Exception e)
		{
            e.printStackTrace();
        }
  }
}