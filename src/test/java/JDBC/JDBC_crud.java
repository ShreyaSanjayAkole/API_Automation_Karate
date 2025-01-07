package JDBC;

import java.sql.Connection;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class JDBC_crud {
	
	public static void main(String args[]) {
		try {
			Connection con=connection.getcon();
			createRecord(con);
			readRecords(con);
			updateRecord(con);
			deleteRecord(con);
		}catch(Exception e) {
			System.out.println(e);
		}
	}
	
	public static void createRecord(Connection con)throws SQLException{
		String insert = "INSERT INTO Employees VALUES(?,?,?,?,?,?)";
		try {
			PreparedStatement ins = con.prepareStatement(insert);
			ins.setInt(1, 101);
			ins.setString(2, "Frist");
			ins.setString(3, "Last");
			ins.setInt(4, 1);
			ins.setDouble(5, 50000.00);
			ins.setString(6, "2025-01-02");
			int rowcount = ins.executeUpdate();
			System.out.println("Rows inserted: "+rowcount);
		}catch(Exception e) {
			System.out.println(e);
		}
	}
	
	// READ
    public static void readRecords(Connection con) throws SQLException {
        String selectQuery = "SELECT * FROM Employees";
        try {
        		Statement stmt = con.createStatement();
        		ResultSet rs = stmt.executeQuery(selectQuery);
        		while (rs.next()) {
	                int id = rs.getInt("employee_id");
	                String fname = rs.getString("first_name");
	                String lname = rs.getString("last_name");
	                int dId = rs.getInt("department_id");
	                double salary = rs.getDouble("salary");
	                Date joiningDate = rs.getDate("joining_date");
	                
	                System.out.printf("ID: %d, Name: %s %s, Department ID: %d, Salary: %.2f, Joining Date: %s%n", id, fname, lname, dId, salary, joiningDate);
        		}
        		
        }catch(Exception e) {
			System.out.println(e);
		}
       
    }

    // UPDATE
    public static void updateRecord(Connection con) throws SQLException {
        String updateQuery = "UPDATE employees SET first_name = ? WHERE employee_id = ?";
        try {
        	PreparedStatement update = con.prepareStatement(updateQuery);
        	update.setString(1,"Kajal" );
            update.setInt(2, 101);
            int rowsUpdated = update.executeUpdate();
            System.out.println("Rows updated: " + rowsUpdated);
        }catch(Exception e) {
			System.out.println(e);
		}
    }

    // DELETE
    public static void deleteRecord(Connection con) throws SQLException {
        String deleteQuery = "DELETE FROM Employees WHERE employee_id = ?";
        try {
        	PreparedStatement delete = con.prepareStatement(deleteQuery);
        	delete.setInt(1, 101);
            int rowsDeleted = delete.executeUpdate();
            System.out.println("Rows deleted: " + rowsDeleted);
        }catch(Exception e) {
			System.out.println(e);
		}
    }
	
}
