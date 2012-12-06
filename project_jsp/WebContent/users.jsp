<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "java.sql.*" import = "java.util.*" %>


<%

request.setCharacterEncoding("utf-8");

String dbUrl = "jdbc:mysql://localhost:3306/project?characterEncoding=utf8";
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
	 Class.forName("com.mysql.jdbc.Driver");
	
	conn = DriverManager.getConnection(dbUrl,dbUser,dbPassward);
	stmt = conn.prepareStatement("Insert into users(email, pw, name,phone,adress_city,adress_gu,adress_detail, gender)"
	+ "values(?,?,?,?,?,?,?,?,?)");
	stmt.setString(1,email);
	stmt.setString(2,pw);
	stmt.setString(3,name);
	stmt.setString(4,phone);
	stmt.setString(5,adress_city);
	stmt.setString(6,adress_gu);
	stmt.setString(7,adress_detail);
	stmt.setString(8,gender);
	
	int result = 0; 
  result = stmt.executeUpdate();
  
  if(result != 0){
			response.sendRedirect("main.jsp");
  	} 

 
}finally{
	if(rs != null ) try{ rs.close();}catch(SQLException e){}
	if(stmt != null ) try{ stmt.close();}catch(SQLException e){}
	if(conn != null ) try{ conn.close();}catch(SQLException e){}
	}
	
%>