<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="cdn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<c:set var="result" value="${param.result}" />
<c:choose>
	<c:when test="${result=='loginfail'}">
		<script type="text/javascript">
			window.onload = function() {
				alert("로그인 확인 해주세요!!");
			}
		</script>
	</c:when>
</c:choose>

<header>
	<table>
		<tr>
			<td width="88%">
				<h1>
					<div style="padding: 10px 10px 10px 20px;">Movies</div>
				</h1>
			</td>
			<h4>
			<td width="300" align="right"><c:choose>
					<c:when test="${loginState==true}">
						<a href=""><span>환영합니다!!${member.id }님</span></a>
						&emsp;
						<a href="logout">로그아웃 <span
							class="glyphicon glyphicon-log-out"></span></a>
					</c:when>
					<c:otherwise>
						<a href="logina">로그인 <span class="glyphicon glyphicon-log-in"></span></a>
					</c:otherwise>
				</c:choose> <!--  --></td>
			</h4>
		</tr>
	</table>
</header>
<!--  -->

</body>
</html>
