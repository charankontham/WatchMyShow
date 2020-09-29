import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Booktickets extends HttpServlet{
  protected void service(HttpServletRequest req,HttpServletResponse res)
  throws ServletException,IOException {
	  boolean isMovieExist=false;
	  try 
	  {
		  Class.forName("com.mysql.jdbc.Driver");//postgresql.org.postgresql.Driver
		  Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/wms", "root", "root");//postgresql://localhost:5433/
			PrintWriter pw = res.getWriter();
			ResultSet rs = null;
			Statement st = null;
			String mname="";
			int castid;//,crewid;
			castid=0;//crewid=0;
			Cookie[] c = req.getCookies();
            if (con != null) {				
				res.setContentType("text/html");
				pw.print("<script type='text/javascript'>alert('Connected to the database!');</script>");
				st = con.createStatement();
				for(int i=0;i<c.length;i++)
				{
					System.out.println(c[i].getName());
					if("mname".equals(c[i].getName()))
					{
						mname = c[i].getValue().replace("-", " ");
						req.setAttribute("mname",mname);
						rs = st.executeQuery("select * from movies where moviename = '"+ mname +"';");
						rs.next();
						req.setAttribute("genre",rs.getString("genre"));
						req.setAttribute("rating",rs.getInt("rating"));
						req.setAttribute("releasedate",rs.getString("releasedate"));
						req.setAttribute("duration",rs.getString("movieduration"));
						castid = rs.getInt("castid");
						rs = st.executeQuery("select * from cast where castd = "+ castid +";");
						rs.next();
						req.setAttribute("hero",rs.getString("hero"));
						req.setAttribute("heroine",rs.getString("heroine"));
						req.setAttribute("director",rs.getString("director"));
						req.setAttribute("cast4",rs.getString("name4"));
						isMovieExist = true;
					}
					else
					{
						pw.print("<script type='text/javascript'>alert('else');</script>");
					}
					
				}
				pw.print("<script type='text/javascript'>alert('after calling movies.jsp');</script>");
				
            } 
			else 
			{
                pw.print("<script type='text/javascript'>alert('NotConnected to the database!');</script>");
            }

        } 
		catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
		if(!isMovieExist)
		{
            req.getRequestDispatcher("/movies").forward(req, res);
        }else
		{
            req.getRequestDispatcher("/booktickets.jsp").forward(req, res);
        }

  }
}