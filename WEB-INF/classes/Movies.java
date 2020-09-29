import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Movies extends HttpServlet{
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
			int castid,crewid;
			//castid=crewid=0;
			Cookie[] c = req.getCookies();
            if (con != null) {				
				res.setContentType("text/html");
				pw.print("<script type='text/javascript'>alert('Connected to the database!');</script>");
				st = con.createStatement();
				for(int i=0;i<c.length;i++)
				{
					pw.print("<script type='text/javascript'>alert('for inside');</script>");
					System.out.println(c.length);
					System.out.println(c[i].getName());
					if("mname".equals(c[i].getName()))
					{
						pw.print("<script type='text/javascript'>alert('mname if inside');</script>");
						mname = c[i].getValue().replace("-", " ");
						req.setAttribute("mname",mname);
						rs = st.executeQuery("select * from movies where moviename = '"+ mname +"';");
						pw.print("<script type='text/javascript'>alert('after executing rs');</script>");
						rs.next();
						pw.print("<script type='text/javascript'>alert('rs next()');</script>");
						req.setAttribute("img",rs.getString("image_path"));
						Cookie imgpath = new Cookie("imgpath",rs.getString("image_path"));
						res.addCookie(imgpath);
						req.setAttribute("genre",rs.getString("genre"));
						req.setAttribute("rating",rs.getInt("rating"));
						req.setAttribute("releasedate",rs.getString("releasedate"));
						req.setAttribute("duration",rs.getString("movieduration"));
						req.setAttribute("language",rs.getString("language"));
						castid = rs.getInt("castid");
						crewid = rs.getInt("crewid");
						rs = st.executeQuery("select * from cast where castd = "+ castid +";");
						rs.next();
						req.setAttribute("cast1",rs.getString("hero"));
						req.setAttribute("cast2",rs.getString("heroine"));
						req.setAttribute("cast3",rs.getString("director"));
						req.setAttribute("cast4",rs.getString("name4"));
						req.setAttribute("cast5",rs.getString("name5"));
						rs = st.executeQuery("select * from crew where crewid = "+ crewid +";");
						rs.next();
						req.setAttribute("crew1",rs.getString("name1"));
						req.setAttribute("crew2",rs.getString("name2"));
						req.setAttribute("crew3",rs.getString("name3"));
						req.setAttribute("crew4",rs.getString("name4"));
						req.setAttribute("crew5",rs.getString("name5"));
						pw.print("<script type='text/javascript'>alert('after all rs getters');</script>");
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
            req.getRequestDispatcher("/home").forward(req, res);
        }else
		{
            req.getRequestDispatcher("/movies.jsp").forward(req, res);
        }

  }
}