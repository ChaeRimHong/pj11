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
	   	<th>비고</th>
	</tr>
<c:forEach items="${view}" var="my">
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
		<td><a href="del?num=${my.num}">삭제</a></td>
	</tr>
</c:forEach>

<!-- 페이징처리 4444444444-->
<tr style="border-left: none;border-right: none;border-bottom: none">
	<td colspan="5" style="text-align: center;">
	<!--  
	<c:if test="${paging.startPage!=1 }">
		<a href="notice?nowPage=${paging.startPage-1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
	</c:if>
	-->	
		<c:forEach begin="${paging.startPage }" end="${paging.endPage}" var="p"> 
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p}</b>
				</c:when>	
				<c:when test="${p != paging.nowPage }">
					<a href="notice?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
				</c:when>	
			</c:choose>
		</c:forEach>
		<!--  
		<c:if test="${paging.endPage != paging.lastPage}">
		<a href="notice?nowPage=${pageing.endPage+1}&cntPerPage=${paging.cntPerPage }">&gt;</a>
	</c:if>
	-->
	</td>
</tr>
</table>
</body>
</html>