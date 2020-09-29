import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;
public class SearchServlet extends HttpServlet{
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	  Connection con =null;
	  try 
	  {
		  Class.forName("com.mysql.jdbc.Driver");//postgresql.org.postgresql.Driver
		   con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/wms", "root", "root");//postgresql://localhost:5433/
			PrintWriter pw = res.getWriter();
            if (con != null)
			{	
				System.out.println("In SearchServlet Servlet");
				res.setContentType("text/html");
				//pw.print("Connected to the database!");	
				String searchString = req.getParameter("searchString");
				if(saveSearchString(searchString,con)){
					List<MovieMaster> movieList = getMovieList(con,searchString);
					pw.println(movieList);
				}
				else{
					pw.println("No Results found !!");
				}
				//System.out.format("movieList::"+getMovieDetails(con));
            }
			else
			{
                pw.print("Not connected to the database!");
            }
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
  public boolean saveSearchString(String searchString,Connection con)
  {
	  System.out.println("In saveSearchString START::"+searchString);
		PreparedStatement pstmt=null;
		PreparedStatement insPstmt = null;
        ResultSet res = null;
        try {
            pstmt = con.prepareStatement("SELECT moviename FROM movies WHERE moviename like ?");
            pstmt.setString(1, "%"+searchString+"%");
            res = pstmt.executeQuery();
            if (res.next()) {
				System.out.println("In saveSearchString EXIST::"+searchString);
                pstmt = con.prepareStatement("INSERT INTO searchdetails(searchString) VALUES(?)");
				pstmt.setString(1, searchString);
				pstmt.executeUpdate(); 
	  System.out.println("In saveSearchString END::"+searchString);
				return true;
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }     
	  System.out.println("In saveSearchString END::"+searchString);
		return false;
}
public List<MovieMaster> getMovieList(Connection conn,String  searchString){
	  System.out.println("In getMovieList START::"+searchString);
    PreparedStatement pstmt = null;
    ResultSet rs=null;
    MovieMaster movieMaster=null;
    List<MovieMaster> movieMasterList=new ArrayList<MovieMaster>();
    try {
          pstmt = conn.prepareStatement("select moviename,genre,rating,language,image_path from movies WHERE moviename like ?");
            pstmt.setString(1, "%"+searchString+"%");
            rs = pstmt.executeQuery();
            while(rs.next()) {
                movieMaster=new MovieMaster();
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
	  System.out.println("In getMovieList END::"+searchString);
   return movieMasterList;
 }
}