<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang = "ko">
<head>
<meta charset="UTF-8">
<title>write</title>
<link href="./css/format.css" rel="css" type="text/css">
<link href="./css/write.css" rel="css" type="text/css">
<link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
</head>
<body>
<div id="top">
미용실 올리기
</div>
<div id="write">
<form action="dbconn.jsp" method = "post">
<table border="1">
<tr>
<th>이름</th>
<td>
<input type="text" name="name">
</td>
</tr>
<tr>
<th>주소</th>
<td>
<input type="text" name="location">
</td>
</tr>
<tr>
<th>전화번호</th>
<td>
<input type="text" name="phone">
</td>
</tr>
<tr>
<th colspan="2">소개</th>
</tr>
<tr>
<td colspan="2">
<textarea cols="30" rows="5" name="comment"></textarea>
</td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="전송" >
</td>
</tr>
</table>
</form>
</div>
		 	<div class="form-action">
		 		<a href="main.jsp" class="btn">목록으로</a>
		 	</div>

</body>
</html>