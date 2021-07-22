package login_check;
import java.sql.*;

public class ID_Check {
	public static boolean id_check(String id) {
		Connection conn = DBUtil.getMySQLConnection();
		try{
			String sql = "select id from test1";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
				
			while(rs.next()){
				if(rs.getString("id").equals(id)){
					return true;
				}
			}
		}
		catch (SQLException e){
			e.printStackTrace();
		}
		
		return false;
	}
}
