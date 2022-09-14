<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
<style type="text/css">
	table{
		width: 90%;
		margin: 0 auto;
	}
</style>
</head>
<header>
	<table>
		<tr>
			<td><a href="main"><img src="./image/flame.jpg" width="50" height="50"></a></td>
			<td><h1>회원 정보 관리</h1></td>
			<td width="300">
				<c:choose>
				<c:when test="${isLogOn == true && member != null }">
					환영합니다. ${member.name }님!&emsp; <a href="logout">로그아웃</a>
				</c:when>
				<c:otherwise>
					<a href="login">로그인</a>
				</c:otherwise>
				</c:choose>
			</td>
		</tr>
	</table>
	<hr color="pink">
</header>
</html>