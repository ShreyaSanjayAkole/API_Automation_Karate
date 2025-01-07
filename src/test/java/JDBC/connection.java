package JDBC;
import java.sql.Connection;
import java.sql.DriverManager;

public class connection {
	public static Connection getcon()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/dbtesting_Practice";
            String username="root";
            String password="Shreya 2001";
            Connection con=DriverManager.getConnection(url,username,password);
            return con;
		}
		catch(Exception e)
		{
			return null;
		}
		
	}
}
