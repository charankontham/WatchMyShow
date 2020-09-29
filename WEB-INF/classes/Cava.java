import java.io.*;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

public class Cava extends HttpServlet{
  protected void service(HttpServletRequest req,HttpServletResponse res)
  throws ServletException,IOException {
		try 
		{
			req.getRequestDispatcher("/home");
        } 
		catch (Exception e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        }
  }
}