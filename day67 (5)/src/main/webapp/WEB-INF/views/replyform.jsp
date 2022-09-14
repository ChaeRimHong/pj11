<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><!-- 답변달기 step+1  indent+1   동일한 groups 에서 이루 -->
<title>Insert title here</title>
</head>
<body>

<form action="reply" method="post">
<c:forEach items="${list}" var="my">

<input type="hidden" name="num" value="${my.num }">
<input type="hidden" name="groups" value="${my.groups }">
<input type="hidden" name="step" value="${my.step }">
<input type="hidden" name="indent" value="${my.indent }">
</c:forEach>
<table border="1" width="300">
	<tr> <td>작성자 </td> <td><input type="text" name="writer"> </td> </tr>
	<tr> <td>제 목 </td> 	<td><input type="text" name="title"> </td> </tr>
	<tr> <td>내 용 </td> 	<td>< <textarea name="content" rows="10" cols="20"></textarea> </td> </tr>
<tr> <td colspan="2">
	<input type ="submit" value="답변달기">
	<input type ="reset" value="취소">

 </td> </tr>

</table>

</form>
</body>
</html>