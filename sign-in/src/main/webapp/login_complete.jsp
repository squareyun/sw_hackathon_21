<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.OutputStreamWriter"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.io.BufferedWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="javax.sql.*" %>
<%@page import="javax.naming.*" %>
<%@page import="java.sql.*" %>
<%@page import="login_check.*"%>
<%@page import="org.json.simple.JSONArray" %>
<%@page import="org.json.simple.JSONObject"%>

<% 
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pass = request.getParameter("password");
	
	try{
		Connection conn = DBUtil.getMySQLConnection();
		
		String sql = "select * from student_db where id = ?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		String password=null;
		while(rs.next()){
			password = rs.getString("password");
		}
		
		JSONObject jsonob = new JSONObject();
	    JSONArray jsonarr = new JSONArray();
	    JSONObject data = new JSONObject();
	    
		if(pass.equals(password)){
			out.println("<script>");
			out.println("alert('로그인에 성공하였습니다. 게임으로 돌아가세요.')");
			out.println("</script>");
			data.put("number", 1);
			jsonarr.add(data);
		}
		else{
			out.println("<script>");
			out.println("alert('정보가 틀립니다.')");
			out.println("location.href='login.html'");
			out.println("</script>");
			data.put("number", 0);
			jsonarr.add(data);
		}
		 jsonob.put("success", jsonarr);

		    System.out.println(jsonob);
		    try
		    {

		        String host_url = "https://webhook.site/53453d46-9589-485d-b0f9-84079decce13";
		        HttpURLConnection conn2 = null;

		        URL url = new URL(host_url);
		        conn2 = (HttpURLConnection)url.openConnection();

		        conn2.setRequestMethod("POST");//POST GET
		        conn2.setRequestProperty("Content-Type", "application/json");

		        //POST방식으로 스트링을 통한 JSON 전송
		        conn2.setDoOutput(true);
		        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn2.getOutputStream()));

		        bw.write(jsonob.toString());
		        bw.flush();
		        bw.close();

		        //서버에서 보낸 응답 데이터 수신 받기
		        BufferedReader in = new BufferedReader(new InputStreamReader(conn2.getInputStream()));
		        String returnMsg = in.readLine();
		        System.out.println("응답메시지 : " + returnMsg );

		        //HTTP 응답 코드 수신 
		        int responseCode = conn2.getResponseCode();
		       if(responseCode == 400) {
		            System.out.println("400 : 명령을 실행 오류");
		       } else if (responseCode == 500) {
		            System.out.println("500 : 서버 에러.");
		        } else { //정상 . 200 응답코드 . 기타 응답코드 
		            System.out.println(responseCode + " : 응답코드임");
		        }

		    }catch(Exception ie) {
		        System.out.println("IOException " + ie.getCause());
		        ie.printStackTrace();
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