package login_check;
import java.sql.*;

public class DBUtil {
	public static Connection getMySQLConnection() {
		Connection conn = null;
		
		try {
			String dbid = "root";
			String pw = "wnsqo218";
			String port = "3306";
			String dbname = "test";
			String timezone = "serverTimezone=UTC";
			
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:" + port + "/" + dbname + "?" + timezone;
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
}