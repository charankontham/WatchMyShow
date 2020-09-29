import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;

public class Cart extends HttpServlet{
  protected void service(HttpServletRequest req,HttpServletResponse res)
  throws ServletException,IOException {
	  boolean isCartExist=false;
	  try 
	  {
		  Class.forName("com.mysql.jdbc.Driver");//postgresql.org.postgresql.Driver
		  Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/wms", "root", "root");//postgresql://localhost:5433/
			PrintWriter pw = res.getWriter();
			Cookie[] c = req.getCookies();
            if (con != null) {				
				res.setContentType("text/html");
				pw.print("<script type='text/javascript'>alert('Connected to the database!');</script>");
				for(int i=0;i<c.length;i++)
				{
					if("usern".equals(c[i].getName()))
					{
							req.setAttribute("cartList", getCartDetails(con,c[i].getValue()));
							isCartExist = true;
					}
					else
					{
						pw.print("<script type='text/javascript'>alert('User not found');</script>");
					}
					
				}
				pw.print("<script type='text/javascript'>alert('after calling movies.jsp');</script>");
				
            } 
			else 
			{
                pw.print("<script type='text/javascript'>alert('NotConnected to the database!');</script>");
            }

        } 
		catch (Exception e) {
            e.printStackTrace();
        }
		if(!isCartExist)
		{
            req.getRequestDispatcher("/home").forward(req, res);
        }else
		{
            req.getRequestDispatcher("/cart.jsp").forward(req, res);
        }
  }
  public List<BookingsMaster> getCartDetails(Connection conn,String un)
   {
	System.out.println("In Cart getCartDetails START::");
    ResultSet rs1 = null;
	Statement st1 = null;
    BookingsMaster cartMaster = null;
    List<BookingsMaster> CartMasterList = new ArrayList<BookingsMaster>();
    try {
			st1 = conn.createStatement();
            rs1 = st1.executeQuery("select * from cart where username ='"+un+"';");
            while(rs1.next())
			{
				System.out.println("result set inside");
                cartMaster = new BookingsMaster();
				cartMaster.setCartid(rs1.getInt("cartid"));
                cartMaster.setMname(rs1.getString("moviename"));
                cartMaster.setTname(rs1.getString("theatrename"));
                cartMaster.setPrice(rs1.getInt("price"));
                cartMaster.setMdate(rs1.getString("mdate"));
                cartMaster.setSeats(rs1.getString("seats"));
				cartMaster.setMtime(rs1.getString("mtime"));
                cartMaster.setNoftickets(rs1.getInt("noftickets"));
                CartMasterList.add(cartMaster);
            }
    } catch (Exception e) {
        e.printStackTrace();
    }
	  
	System.out.println("In Cart getCartDetails END::");
    return CartMasterList;
 }
}