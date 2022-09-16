<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
text-align: center;
border-collapse: collapse;
}
th{
width: 80px;
background-color: pink;
}
td{
width: 120px;
}
</style>
</head>
<body>
<h2 align="center">로그인하기</h2>
<form action="loginact" method="post">
<table border="1" align="center">
<tr>
	<th>ID</th>
	<td><input type="text" name="id"></td>
</tr>
<tr>
	<th>PW</th>
	<td><input type="text" name="pw"></td>
</tr>
<tr>
	<td colspan="2"><input type="submit" value="전송"></td>
</tr>
</table>
</form>
</body>
</html>