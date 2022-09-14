<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>

#container{
	width: 100%;
	margin: 0px auto;
	text-align: center;
}

#top{
	line-height: 40px;
	text-align: center;
	height: 90px;
}

#side{
	text-align: center;
	margin-top: 50px;
	float: left;
	width: 20%;
	height: 400px;
}

#content{
	width: 70%;
	height: 400px;
	float: left;
	margin-top: 50px;
}

#footer{
	clear: both;
	padding: 5px;
	font-size: small;
}
table{
	border-collapse: collapse;
	text-align: left;
}
td{ padding: 4px;}

</style>
</head>
<body>
	<div id="container">
		<div id="top">
			<tiles:insertAttribute name="top" />
		</div>
		
		<div id="side">
			<tiles:insertAttribute name="side" />
		</div>
		
		<div id="content">
			<tiles:insertAttribute name="body" />
		</div>
    
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
	
</body>
</html>