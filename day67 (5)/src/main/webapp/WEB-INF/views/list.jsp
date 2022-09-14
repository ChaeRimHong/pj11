<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
<style type="text/css">
	th{
		background-color: skyblue;
		color: white;
	}
</style>
</head>
<body>
	<table border="1" width="700" >
		<tr>
			<th>아이디</th>
			<th>패스워드</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>거주지</th>
			<th>생년월일</th>
		</tr>
		<c:forEach items="${alist }" var="b">
		<tr>
			<td><a href="modify?id=${b.id }">${b.id }</a></td>
			<td>${b.pw }</td>
			<td>${b.name }</td>
			<td>${b.tel }</td>
			<td>${b.email }</td>
			<td>${b.address }</td>
			<td>${b.birthday }</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>