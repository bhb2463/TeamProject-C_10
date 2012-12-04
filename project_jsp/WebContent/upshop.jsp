<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "java.sql.*" import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>upshop</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
  <jsp:include page="share/header.jsp"></jsp:include>
  
  <div class="container">
	<%	if (request.getMethod() == "POST") { %>
		 <div class="well">
		  <ul>
		    <li>E-mail : <%=request.getParameter("email")%></li>
		    <li>비밀번호 : <%=request.getParameter("pw")%></li>
		    <li>이름 : <%=request.getParameter("name")%></li>
		    <li>전화번호 : <%=request.getParameter("phone")%></li>
		    <li>성별 : <%=request.getParameter("gender")%></li>
		    <li>주소 : <%=request.getParameter("adress_city")%>
		             <%=request.getParameter("adress_gu")%></li>
		    <li>상세주소: <%=request.getParameter("adress_detail")%></li>
		    
	    </ul>
		 </div>
  <%} else { %>
    <div>
		 
		  <form class="form-horizontal" method="post" action="shop.jsp">
			<fieldset>
				<div id="legend">
					<legend>미용실 등록하기</legend>
				</div>
									
					<div class="control-group">
					<label class="control-label" for="name">상호명</label>
					<div class="controls">
						<input type="text" name="name">
					</div>
				</div>				
				
				<div class="control-group">
					<label class="control-label" for="phone">phone-number</label>
					<div class="controls">
						<input type="text" name="phone">
					</div>
				</div>				

				<div class="control-group">
					<label class="control-label">city</label>
					<div class="controls">
						<select name="adress_city">
							<option value="Seoul">서울시</option>
				      <option value="kyung-ki">경기도</option>
				      <option value="chong-chung">충청도</option>
				      <option value="kyung-sang">경상도</option>
						</select>
						<select name="adress_gu">
						 <option value="gang-nam">강남구</option>
						 <option value="gang-dong">강동구</option>
						 <option value="gang-buk">강북구</option>
						 <option value="gang-seo">강서구</option>
						 <option value="no-won">노원구</option>
						 <option value="gu-ro">구로구</option>
						 <option value="geom-chun">금천구</option>
						 <option value="do-bong">도봉구</option>
						 <option value="sung-buk">성북구</option>
						 <option value="jung-rang">중랑구</option>
						 <option value="dong-dae-moon">동대문구</option>
						 <option value="jong-ro">종로구</option>
						 <option value="jung">중구</option>
						 <option value="sung-dong">성동구</option>
						 <option value="gwang-jin">광진구</option>
						 <option value="yong-san">용산구</option>
						 <option value="ma-po">마포구</option>
						 <option value="eun-pyung">은평구</option>
						 <option value="seo-dae-moon">서대문구</option>
						 <option value="song-pa">송파구</option>
						 <option value="su-cho">서초구</option>
						 <option value="young-deung-po">영등포구</option>
						 <option value="yang-chun">양천구</option>
						 <option value="gwan-ak">관악구</option>
						 <option value="dong-jak">동작구</option>
						</select>
					</div>
				</div>
				
				<div class="control-group">
					<label class="control-label">상세주소</label>
					<div class="controls">
						<div class="textarea">
							<input class="input-xxlarge" type="text" 
			 name="adress_detail" size="30">
						</div>
					</div>
				</div>
											
				<div class="form-actions">
				
					<input type="submit" class="btn btn-primary" value="등록하기">
					<a href="main.jsp"><input type="button" class="btn btn-warning" value="돌아가기"></a>
				</div>
			</fieldset>
		  </form>
    </div>
	<% } %>
  </div>
 
</body>
</html>
