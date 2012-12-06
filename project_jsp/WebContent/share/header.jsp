<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container" style="margin-top:20px">
<div class="logo">
    <img src="./img/logo.jpg" alt="Find Best Hair Shop" >
    </div>

<div class="navbar">
  <div class="navbar-inner">
    <a class="brand" href="#"></a>
    <ul class="nav">
      <li><a href="main.jsp" class="selected">HOME</a></li>
				<li><a href="">주변 미용실 검색</a></li>
				<li><a href="">예약 INFO</a></li>
				<li><a href="">랭킹보기</a></li>
    </ul>
  </div>
</div>
<%
  if (request.getMethod() == "POST") {
	  String email = request.getParameter("email");
	  String pwd = request.getParameter("pw");
	  
	  if (email == null || pwd == null || email.length() == 0 || pwd.length() == 0) {
		  %>
		   <div class="error">아이디와 비밀번호를 입력하세요.</div>
		  <%
	  } else if (email.equals("bhb2463@naver.com") && pwd.equals("12345")) {
		  // 로그인 성공
	      session.setAttribute("useremail", "bhb2463@naver.com");
	      session.setAttribute("userName", "이지은");	
	      response.sendRedirect("main.jsp");	      
		 } else {
		  %>
		   <div class="error">아이디나 비밀번호가 잘못되었습니다.</div>
		  <%
	  }
	  
  }
  %>
  <form method="post">
	  Email: <input type="text" name="email">
	  Password: <input type="password" name="pwd">
	  <input type="submit" value="로그인">
	  <a href="register.jsp">회원가입</a>
  </form>
</div>
