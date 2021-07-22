<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="javax.sql.*" %>
<%@page import="javax.naming.*" %>
<%@page import="java.sql.*" %>
<%@page import="login_check.*"%>

<% 
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pass = request.getParameter("password");
	
	try{
		Connection conn = DBUtil.getMySQLConnection();
		
		String sql = "select * from test1 where id = ?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		String password=null;
		while(rs.next()){
			password = rs.getString("password");
		}
	
		if(pass.equals(password)){
			out.println("<script>");
			out.println("location.href='main.jsp'");
			out.println("</script>");
		}
		else{
			out.println("<script>");
			out.println("alert('정보가 틀립니다.')");
			out.println("location.href='login.html'");
			out.println("</script>");
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>