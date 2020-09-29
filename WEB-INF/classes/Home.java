import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;
public class Home extends HttpServlet{
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	  Connection con =null;
	  try 
	  {
		  //Class.forName("com.mysql.jdbc.Driver");//postgresql.org.postgresql.Driver
		   con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/wms", "root", "root");//postgresql://localhost:5433/
			PrintWriter pw = res.getWriter();
            if (con != null) {	
				System.out.println("In Home Servlet");
				System.out.println("Connection Established!!");
				res.setContentType("text/html");
				pw.print("Connected to the database!");				
				req.setAttribute("movieList", getMovieDetails(con));
				req.setAttribute("recentSearchList", (Object)this.getRecent10SearchDetails(con));
            } else {
                pw.print("Not connected to the database!");
            }
			//res.sendRedirect("home.html");//getRequestDispatcher("/home.html").forward(req, res);
			req.getRequestDispatcher("/home.jsp").forward(req, res);
        } 
		catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
			try{
				con.close();
			}catch(Exception ex){
				 ex.printStackTrace();
			}
		}

  }
  public List<MovieMaster> getMovieDetails(Connection conn){
	  
	System.out.println("In Home getMovieDetails START::");
    PreparedStatement pstmt = null;
    ResultSet rs=null;
    MovieMaster movieMaster=null;
    List<MovieMaster> movieMasterList = new ArrayList<MovieMaster>();
    try {
          pstmt = conn.prepareStatement("select moviename,genre,rating,language,image_path from movies");
            rs = pstmt.executeQuery();
            while(rs.next()) {
                movieMaster = new MovieMaster();
                movieMaster.setName(rs.getString("moviename"));
                movieMaster.setGenre(rs.getString("genre"));
                movieMaster.setRating(rs.getString("rating"));
                movieMaster.setLanguage(rs.getString("language"));
                movieMaster.setMoviePath(rs.getString("image_path"));
                movieMasterList.add(movieMaster);
            }
    } catch (Exception e) {
        e.printStackTrace();    
    }
	  
	  System.out.println("In Home getMovieDetails END::");
   return movieMasterList;
 }
 public List<SearchDetails> getRecent10SearchDetails(final Connection conn) {
        System.out.println("In getRecent10SearchDetails START::");
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        SearchDetails sd = null;
        final List<SearchDetails> sdList = new ArrayList<SearchDetails>();
        try {
            pstmt = conn.prepareStatement("select searchString from searchdetails order by unq_id limit 5");
            rs = pstmt.executeQuery();
            while (rs.next()) {
                sd = new SearchDetails();
                sd.setSearchString(rs.getString("searchString"));
                sdList.add(sd);
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("In getRecent10SearchDetails END::");
        return sdList;
    }
}