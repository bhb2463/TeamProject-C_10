<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "java.sql.*" import = "java.util.*" %>
<!DOCTYPE html>

<%
request.setCharacterEncoding("utf-8");
String dbUrl = "jdbc:mysql://localhost:3306/     ?characterEncoding=utf8";
String dbUser = "root";
String dbPassward ="qoaqja";

Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;

String email =request.getParameter("email");
String pw =request.getParameter("pw");
String city =request.getParameter("city");
String gu =request.getParameter("gu");
String location =request.getParameter("location");
String gender =request.getParameter("gender");
String memo =request.getParameter("memo");

try{
//	Class.forName("com.musql.jdbc.Driver");
	conn = DriverManager.getConnection(dbUrl,dbUser,dbPassward);
	stmt = conn.prepareStatement("Insert into boards values(?,?,?,?,?,?,?)");
	stmt.setString(1,email);
	stmt.setString(2,pw);
	stmt.setString(3,city);
	stmt.setString(4,gu);
	stmt.setString(5,location);
	stmt.setString(6,gender);
	stmt.setString(7,memo);
	
	
  
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

<a href="main.jsp">홈으로가기</a>
