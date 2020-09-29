import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;

public class Bookings extends HttpServlet{
  protected void service(HttpServletRequest req,HttpServletResponse res)
  throws ServletException,IOException {
	  boolean isBookingsExist = false;
	  try 
	  {
		  Class.forName("com.mysql.jdbc.Driver");//postgresql.org.postgresql.Driver
		  Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/wms", "root", "root");//postgresql://localhost:5433/
			PrintWriter pw = res.getWriter();
			ResultSet rs = null;
			Statement st = null;
			int noftickets,price;
			noftickets=price=0;
			String mname,tname,mtime,mdate,imgpath,username,seats,cartid;
			mname=tname=mtime=cartid=imgpath=mdate=username=seats="";
			Cookie[] c = req.getCookies();
            if (con != null) {
				res.setContentType("text/html");
				pw.print("<script type='text/javascript'>alert('Connected to the database!');</script>");
				st = con.createStatement();
				for(int i=0;i<c.length;i++)
				{
					if("usern".equals(c[i].getName()))
					{
						username = c[i].getValue();
						if(username!="no")
						{
							isBookingsExist=true;
						}
					}
					if("cartid".equals(c[i].getName()))
					{
						cartid = c[i].getValue();
					}
					if("imgpath".equals(c[i].getName()))
					{
						imgpath = c[i].getValue();
					}
					
				}
				if(cartid!="" && imgpath!="" && username!="")
				{
					rs = st.executeQuery("select * from cart where cartid = '" + Integer.parseInt(cartid) + "';");
					if(rs.next())
					{
						mname = rs.getString("moviename");
						tname = rs.getString("theatrename");
						seats = rs.getString("seats");
						mtime = rs.getString("mtime");
						mdate = rs.getString("mdate");
						price = rs.getInt("price");
						noftickets = rs.getInt("noftickets");
						st.executeUpdate("insert into bookings(username,moviename,theatrename,noftickets,price,timings,date,seats,imgpath) values('"+username+"','"+mname+"','"+tname+"','"+noftickets+"','"+price+"','"+mtime+"','"+mdate+"','"+seats+"','"+imgpath+"')");
						st.executeUpdate("delete from cart where cartid='"+ Integer.parseInt(cartid) + "';");
					}
					
				}
				req.setAttribute("bookingsList", getBookingsDetails(con,username));
            } 
			else 
			{
                pw.print("<script type='text/javascript'>alert('Not connected to the database!');</script>");
            }

        } 
		catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
		if(!isBookingsExist)
		{
            req.getRequestDispatcher("/home").forward(req, res);
			
        }
		else
		{
            req.getRequestDispatcher("/bookings.jsp").forward(req, res);
        }

  }
   public List<BookingsMaster> getBookingsDetails(Connection conn,String un)
   {
	System.out.println("In Bookings getBookingsDetails START::");
    ResultSet rs1 = null;
	Statement st1 = null;
    BookingsMaster bookingsMaster = null;
    List<BookingsMaster> BookingsMasterList = new ArrayList<BookingsMaster>();
    try {
			st1 = conn.createStatement();
            rs1 = st1.executeQuery("select * from bookings where username='"+un+"';");
            while(rs1.next())
			{
				System.out.println("result set inside");
                bookingsMaster = new BookingsMaster();
                bookingsMaster.setMname(rs1.getString("moviename"));
                bookingsMaster.setTname(rs1.getString("theatrename"));
                bookingsMaster.setPrice(rs1.getInt("price"));
                bookingsMaster.setMdate(rs1.getString("date"));
                bookingsMaster.setSeats(rs1.getString("seats"));
				bookingsMaster.setImgpath(rs1.getString("imgpath"));
				bookingsMaster.setMtime(rs1.getString("timings"));
                bookingsMaster.setNoftickets(rs1.getInt("noftickets"));
                BookingsMasterList.add(bookingsMaster);
            }
    } catch (Exception e) {
        e.printStackTrace();    
    }
	  
	System.out.println("In Home getBokingsDetails END::");
    return BookingsMasterList;
 }
 
}