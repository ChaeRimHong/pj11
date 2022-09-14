<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="600">
	<tr>
	 	<th>글번호</th>
	   	<th>작성자</th>
	   	<th>제목</th>
	    <th>작성일</th>
	   	<th>조회수</th>
	</tr>
<c:forEach items="${list}" var="my">
	<tr>
		<td><a href="board_delete?num=${my.num}">${my.num }	</a></td>
		<td>${my.writer }</td>
		<td>
		<c:forEach begin="1" end="${my.indent}">
		&emsp;		
		</c:forEach>
				<a href="detailview?num=${my.num}"> ${my.title } </a></td>
		<td>${my.writeday }</td>
		<td>${my.readcnt }</td>
	</tr>
</c:forEach>





</table>

</body>
</html>