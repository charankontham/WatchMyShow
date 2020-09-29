import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;

public class ProceedToPay extends HttpServlet{
  protected void service(HttpServletRequest req,HttpServletResponse res)
  throws ServletException,IOException {
	  int isPayExist = 0;
	  try 
	  {
		  Class.forName("com.mysql.jdbc.Driver");//postgresql.org.postgresql.Driver
		  Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/wms", "root", "root");//postgresql://localhost:5433/
			PrintWriter pw = res.getWriter();
			ResultSet rs = null;
			Statement st = null;
			int cartid = 0;
			int price,noftickets;
			noftickets=price=0;
			String mname,tname,mtime,mdate,imgpath,username,seats;
			mname=tname=mtime=imgpath=mdate=username=seats="";
			Cookie[] c = req.getCookies();
            if (con != null) {
				res.setContentType("text/html");
				pw.print("<script type='text/javascript'>alert('Connected to the database!');</script>");
				st = con.createStatement();
				for(int i=0;i<c.length;i++)
				{
					if("tempcartid".equals(c[i].getName()))
					{
						cartid = Integer.parseInt(c[i].getValue());
						isPayExist++;
					}	
					if("usern".equals(c[i].getName()))
					{
						username = c[i].getValue();
						isPayExist++;
					}	
				}
				rs = st.executeQuery("select * from cart where cartid = '" + cartid + "';");
				if(rs.next())
				{
					mname = rs.getString("moviename");
					tname = rs.getString("theatrename");
					seats = rs.getString("seats");
					mtime = rs.getString("mtime");
					mdate = rs.getString("mdate");
					price = rs.getInt("price");
					imgpath = rs.getString("imgpath");
					noftickets = rs.getInt("noftickets");
					st.executeUpdate("insert into bookings(username,moviename,theatrename,noftickets,price,timings,date,seats,imgpath) values('"+username+"','"+mname+"','"+tname+"','"+noftickets+"','"+price+"','"+mtime+"','"+mdate+"','"+seats+"','"+imgpath+"')");
					st.executeUpdate("delete from cart where cartid='"+ cartid + "';");
					isPayExist++;
				}
            } 
			else 
			{
                pw.print("<script type='text/javascript'>alert('Not connected to the database!');</script>");
            }

        } 
		catch (Exception e) {
            e.printStackTrace();
        }
		if(isPayExist!=3)
		{
            req.getRequestDispatcher("/cart").forward(req, res);
			
        }else
		{
            req.getRequestDispatcher("/bookings").forward(req, res);
        }

  }
 
}