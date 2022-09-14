<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="replyview" method="post">
<c:forEach items="${list}" var="my">

	<table border="1" width="300">
		<tr>
			<td>글번호 </td>	<td><input type="hidden" name="num" value="${my.num }">${my.num } </td>
		</tr>			
		<tr>
			<td>작성일 </td>	<td>${my.writeday }</td>
		</tr>	
		<tr>			<td>제목 </td>			<td>${my.title}</td>
		</tr>	
		<tr>			<td>내용 </td>			<td>${my.content}</td>
		</tr>	
		<tr>
			<td>작성자</td>			<td>${my.writer }</td>
		</tr>
		<tr>
			<td colspan="3">			
				<input type="submit" value="답글확인">
				<input type="button" value="메인" onclick="location.href='index'">
				
			 </td>
			
		</tr>
	
	</table>
</c:forEach>
	




</form>

</body>
</html>