<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="board_inputsave" method="post">
<table align="center" 쟝소="300">
<tr><td>작성자</td><td align="left"><input type="text" name="writer"> </td></tr>
<tr><td>제목</td><td align="left"><input type="text" name="title"> </td></tr>
<tr><td>내용</td><td><textarea rows="10" cols="60" name="content"></textarea> </td></tr>

<tr><td colspan="2"><input type="submit" value="게시글등록"></td></tr>
</table>
</form>
</body>
</html>