import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Payment extends HttpServlet{
  protected void service(HttpServletRequest req,HttpServletResponse res)
  throws ServletException,IOException {
	  int isPaymentExist = 0;
	  boolean insertvar = false;
	  try 
	  {
		  Class.forName("com.mysql.jdbc.Driver");//postgresql.org.postgresql.Driver
		  Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/wms", "root", "root");//postgresql://localhost:5433/
			PrintWriter pw = res.getWriter();
			ResultSet rs = null;
			Statement st = null;
			float totalamount = 0.0f;
			int noftickets=0;
			String mname,tname,mtime,dt,nofticketstp,pricetp,username,imgpath,seats;
			mname=tname=mtime=dt=username=nofticketstp=pricetp=seats=imgpath="";
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
						req.setAttribute("language",rs.getString("language"));
						isPaymentExist++;
					}
					if("tname".equals(c[i].getName()))
					{
						tname = c[i].getValue().replace("-"," ");
						tname = tname.replace("*",":");
						tname = tname.replace("^",",");
						req.setAttribute("tname",tname);
						isPaymentExist++;
					}
					if("noftickets".equals(c[i].getName()))
					{
						nofticketstp = c[i].getValue().replace("-"," ");
						req.setAttribute("noftickets",nofticketstp);
						noftickets = Integer.parseInt(nofticketstp);
						isPaymentExist++;
					}
					if("dt".equals(c[i].getName()))
					{
						dt = c[i].getValue().replace("-"," ");
						req.setAttribute("dt",dt);
						isPaymentExist++;
					}
					if("mtime".equals(c[i].getName()))
					{
						mtime = c[i].getValue().replace("-"," ");
						mtime = mtime.replace("*",":");
						req.setAttribute("mtime",mtime);
						isPaymentExist++;
					}
					if("totalamount".equals(c[i].getName()))
					{
						pricetp = c[i].getValue().replace("-"," ");
						req.setAttribute("totalamount",pricetp);
						totalamount = Float.parseFloat(pricetp);
						isPaymentExist++;
					}
					if("usern".equals(c[i].getName()))
					{
						username = c[i].getValue();
						isPaymentExist++;
					}
					if("seats".equals(c[i].getName()))
					{
						seats = c[i].getValue().replace("^", ",");
						isPaymentExist++;
					}
					if("imgpath".equals(c[i].getName()))
					{
						imgpath = c[i].getValue();
						isPaymentExist++;
					}
					
				}
				totalamount = totalamount+30.62f;
				System.out.println((int)totalamount);
				rs = st.executeQuery("select * from cart");
				if(rs.next() == false)
				{
					st.executeUpdate("insert into cart(username,moviename,theatrename,price,noftickets,mdate,mtime,seats,imgpath) values('"+username+"','"+mname+"','"+tname+"','"+(int)totalamount+"','"+noftickets+"','"+dt+"','"+mtime+"','"+seats+"','"+imgpath+"')");
					rs = st.executeQuery("select * from cart");
					if(rs.next() != false)
					{
						rs.last();
						Cookie cartid = new Cookie("cartid",""+rs.getInt("cartid"));
						res.addCookie(cartid);
					}
				}
				else
				{
					rs.beforeFirst();
					while(rs.next())
					{
						if(!rs.getString("username").equals(username) || !rs.getString("moviename").equals(mname) || !rs.getString("theatrename").equals(tname) || rs.getInt("price")!=(int)totalamount || rs.getInt("noftickets")!=noftickets || !rs.getString("mdate").equals(dt) || !rs.getString("mtime").equals(mtime) || !rs.getString("seats").equals(seats) || !rs.getString("imgpath").equals(imgpath))
						{
							insertvar = true;
						}
						else
						{
							insertvar = false;
						}
					
					}
				}
				
					
				if(insertvar)
				{
					st.executeUpdate("insert into cart(username,moviename,theatrename,price,noftickets,mdate,mtime,seats,imgpath) values('"+username+"','"+mname+"','"+tname+"','"+(int)totalamount+"','"+noftickets+"','"+dt+"','"+mtime+"','"+seats+"','"+imgpath+"')");
					rs = st.executeQuery("select * from cart");
					if(rs.next() != false)
					{
						rs.last();
						Cookie cartid = new Cookie("cartid",""+rs.getInt("cartid"));
						res.addCookie(cartid);
					}
				}
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
		if(isPaymentExist!=9)
		{
			
            req.getRequestDispatcher("/seating").forward(req, res);
        }else
		{
            req.getRequestDispatcher("/payment.jsp").forward(req, res);
        }

  }
}