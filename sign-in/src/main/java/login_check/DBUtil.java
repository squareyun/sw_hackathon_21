package login_check;
import java.sql.*;

public class DBUtil {
	public static Connection getMySQLConnection() {
		Connection conn = null;
		
		try {
			String dbid = "root";
			String pw = "qwerty!@#$%";
			String port = "3306";
			String dbname = "knuniverse";
			String timezone = "serverTimezone=UTC";
			
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://125.185.173.147:" + port + "/" + dbname + "?" + timezone;
			conn = DriverManager.getConnection(url, dbid, pw);
		}
		catch(ClassNotFoundException e) {
			System.out.println("MySQL ����̹��� �����ϴ�.<br/>");
		}
		catch(SQLException e) {
			System.out.println("����� ���� �Ǵ� ��й�ȣ�� Ʋ���ϴ�.<br/>");
		}
		return conn;
	}
	
	public static void close(Connection conn) {
		try {
			if(conn != null)
				conn.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static void close(Statement stmt) {
		try {
			if(stmt != null)
				stmt.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static void close(PreparedStatement pstmt) {
		try {
			if(pstmt != null)
				pstmt.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static void close(ResultSet rs) {
		try {
			if(rs != null)
				rs.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}