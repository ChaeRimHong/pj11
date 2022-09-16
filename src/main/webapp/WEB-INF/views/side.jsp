<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.no-underline {
	text-decoration: none;
}
div{

}
</style>
</head>
<body>
	<div></div>
	<h3>

		<div style="padding:10px;">
			<a href="sentence" class="no-underline">한줄평</a><br>
		</div>
		
		<div style="padding:10px;">
			<a href="discussion" class="no-underline">비평광장</a><br>
		</div>
		
		<div style="padding:10px;">
			<a href="mtogether" class="no-underline">영화투게더</a><br>
		</div>
		
		<div style="padding:10px;">
			<a href="mypage" class="no-underline">mypage</a><br>
		</div>
	</h3>
</body>
</html>