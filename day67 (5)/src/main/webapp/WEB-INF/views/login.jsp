<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath } "/>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
<c:choose>
	<c:when test="${result=='loginFailed' }">
	<script type="text/javascript">
		window.onload=function(){
			alert("아이디 혹은 비밀번호가 틀립니다. 다시 로그인 하세요");
		}
	</script>
	</c:when>
</c:choose>

</head>
<body>
	<form name="flogin" action="loginaction" method="post">
		<table style="width:250px">
			<tr><td>ID</td><td><input type="text" name="id"></td></tr>
			<tr><td>PW</td><td><input type="password" name="pw"></td></tr>
		</table>
		<br>
		<input type="submit" value="로그인">
		<input type="reset" value="취소">
	</form>
</body>
</html>