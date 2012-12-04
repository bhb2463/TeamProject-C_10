<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "java.sql.*" import = "java.util.*" %>
<!DOCTYPE html>

<%
request.setCharacterEncoding("utf-8");
String dbUrl = "jdbc:mysql://localhost:3306/project/users?characterEncoding=utf8";
String dbUser = "root";
String dbPassward ="qoaqja";

Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;

String email =request.getParameter("email");
String pw =request.getParameter("pw");
String name =request.getParameter("name");
String phone =request.getParameter("phone");
String gender =request.getParameter("gender");
String adress_city =request.getParameter("adress_city");
String adress_gu =request.getParameter("adress_gu");
String adress_detail =request.getParameter("adress_detail");



try{
//	Class.forName("com.musql.jdbc.Driver");
	conn = DriverManager.getConnection(dbUrl,dbUser,dbPassward);
	stmt = conn.prepareStatement("Insert into boards values(?,?,?,?,?,?,?,?,?)");
	stmt.setString(1,email);
	stmt.setString(2,pw);
	stmt.setString(3,name);
	stmt.setString(4,phone);
	stmt.setString(5,gender);
	stmt.setString(6,adress_city);
	stmt.setString(7,adress_gu);
	stmt.setString(8,adress_detail);

	
	
  
int result = stmt.executeUpdate();
}
catch(Exception e)
{
out.println(e.getMessage());
}



finally{
	if(rs != null ) try{ rs.close();}catch(SQLException e){}
	if(stmt != null ) try{ stmt.close();}catch(SQLException e){}
	if(conn != null ) try{ conn.close();}catch(SQLException e){}
	}
	
%>
회원가입이 성공적으로 완료되었습니다.
<a href="main.jsp">홈으로가기</a>