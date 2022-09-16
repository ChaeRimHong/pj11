<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="cdn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div class="container">
		<h2>이달의 영화</h2>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">

				<div class="item active">
					<img src="image/her.jpg" alt="cute dog" style="width: 40%; height: 600px;">
					<div class="carousel-caption">
						<h3>her</h3>
						<p>영화 her</p>  
				</div>

				<div class="item">
					<img src="image/parasite.jpg" alt="cute cat" style="width: 40%; height: 600px;">
					<div class="carousel-caption">
						<h3>기생충</h3>
						<p>봉준호 감독</p>
					</div>
				</div>

				<div class="item">
					<img src="image/toystory.jpg" alt="cuteporo" style="width: 40%; height: 600px;">
					<div class="carousel-caption">
						<h3>토이스토리4</h3>
						<p>귀요미 토이스토리</p>
					</div>
				</div>

			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>

<br><br><br><br><br><br>
<div class="container">
		<h2>이벤트 영화 - 마블 시리즈</h2>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">

				<div class="item active">
					<img src="image/spiderman.jpg" alt="cute dog" style="width: 40%; height: 600px;">
					<div class="carousel-caption">
						<h3>스파이더맨</h3>
						<p>스파이더맨</p>
					</div>
				</div>

				<div class="item">
					<img src="image/avengers.jpg" alt="cute cat" style="width: 40%; height: 600px;">
					<div class="carousel-caption">
						<h3>어벤저스</h3>
						<p>아이언맨 살아있을 적</p>
					</div>
				</div>


			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
</body>
</html>