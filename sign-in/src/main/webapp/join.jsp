<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="javax.sql.*" %>
<%@page import="javax.naming.*" %>
<%@page import="java.sql.*" %>
<%@page import="login_check.*"%>
 
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("pw1");
	String name = request.getParameter("name");
	String student_num = request.getParameter("student_num");
	String university = request.getParameter("university");
	String major = request.getParameter("major");
	String email = request.getParameter("email");
	String email2 = request.getParameter("email2");
 
	PreparedStatement pstmt=null;

	if(ID_Check.id_check(id)){
		out.println("<script>");
		out.println("alert('���̵� �ߺ��˴ϴ�. �ٸ� ���̵� ������ּ���')");
		out.println("location.href = 'register.html'");
		out.println("</script>");
		return;
	}
	    
	try{
		Connection conn = DBUtil.getMySQLConnection();
		
		pstmt=conn.prepareStatement("Insert into student_db values(?,?,?,?,?,?,?,?)");
	    pstmt.setString(1,id);
	    pstmt.setString(2,password);
	    pstmt.setString(3,name);
	    pstmt.setString(4,student_num);
	    pstmt.setString(5,university);
	    pstmt.setString(6,major);
	    pstmt.setString(7,email);
	    pstmt.setString(8,email2);

	    pstmt.executeUpdate(); 
	    
	    out.println("<script>");
	    out.println("alert('ȸ�������� �Ϸ� �Ǿ����ϴ�.')");
	    
		out.println("</script>");
	}
	catch (SQLException e){
		e.printStackTrace();
	}
	    
	catch(Exception e){ 
			e.printStackTrace(); 
			out.println("member ���̺� ���ο� ���ڵ� �߰��� �����߽��ϴ�.");
			out.println(e);
	}
	
%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
 
</body>
</html>