<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
</head>
<body>
	<form action="inputsave" method="post">
		<table style="width: 400px">
			<tr><td>아이디</td><td><input type="text" name="id"></td></tr>
			<tr><td>비밀번호</td><td><input type="password" name="pw"></td></tr>
			<tr><td>이름</td><td><input type="text" name="name"></td></tr>
			<tr><td>전화번호</td><td><input type="text" name="tel"></td></tr>
			<tr><td>이메일</td><td><input type="text" name="email"></td></tr>
			<tr><td>거주지</td><td><input type="text" name="address"></td></tr>
			<tr><td>생년월일</td><td><input type="date" name="birthday"></td></tr>
		</table>
		<br>
		<input type="submit" value="회원가입">
		<input type="reset" value="취소">
	</form>
</body>
</html>