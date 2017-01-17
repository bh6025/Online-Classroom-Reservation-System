<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8">
<!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Reservation</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="./css/bootstrap.css"
	type="text/css" />
<link rel="stylesheet" href="./css/datepicker.css">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/button.css">
<link rel="stylesheet" href="./css/jquery-ui.css">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/font-awesome.min.css">

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
<script src="//code.jquery.com/jquery.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script src="./js/jQuery.min.js"></script>
<script src="./js/bootstrap-datepicker.js"></script>
<script src="./js/jquery-1.12.4.js"></script>
<script src="./js/jquery-ui.js"></script>


<!--Sylesheets and JavaScript files to be included-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="./js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- Respond.js 으로 IE8 에서 반응형 기능을 활성화하세요 (https://github.com/scottjehl/Respond)
        <script src="./Bootstrap/js/respond.js"></script>-->


</head>
<body>

	<div class="container">
		<div class="masthead">
			<h3 class="text-muted">Reservation Project</h3>
			<div class="container-fluid">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="logout"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
				</ul>
				<ul class="nav nav-tabs">
					<li class="active"><a href="reservation">강의실 예약</a></li>
					<li><a href="studentRecord">예약 기록</a></li>
					<li><a href="myPage">My Page</a></li>
				</ul>
			</div>
		</div>

		<div class="jumbotron">
			<div class="panel panel-warning">
				<div class="panel-heading">
					<center>
						<h4>
							<a href="timeTable" data-toggle="tooltip" data-placement="top"
								title="사용자에게 맞는 최적의 강의실을 예약해드립니다!"><span class="glyphicon glyphicon-thumbs-up"></span> Our Recommended</a>
						</h4>
					</center>
				</div>
				<div class="panel-body">
					<div class="container">
						<table class="table table-bordered">

							<thead>
								<tr>
									<th><center>건물</center></th>
									<th><center>강의실 번호</center></th>
									<th><center>크기</center></th>
									<th><center>예약</center></th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${recommendList}" var="list">
									<tr>
										<td><center>${list.buildingName}관</center></td>
										<td><center>${list.classRoomName}호</center></td>
										<td><center>${list.classRoomSize}</center></td>
										<td><button class="btn btn-md btn-default btn-block"
										type="submit" onclick="location.href='timeTable?buildingName=${list.buildingName}&classRoomName=${list.classRoomName}'"><span class="glyphicon glyphicon-ok-circle"></span>예약</button>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="panel panel-success">
				<div class="panel-heading">
					<center>
						<h4>
							<a href="timeTable" data-toggle="tooltip" data-placement="top"
								title="예약하고 싶은 강의실을 선택해주세요!">예약 가능한 강의실 정보 <span class="glyphicon glyphicon-hand-down"></span></a>
						</h4>
					</center>
				</div>
				<div class="panel-body">
					<div class="container">
						<table class="table table-bordered">

							<thead>
								<tr>
									<th><center>건물</center></th>
									<th><center>강의실 번호</center></th>
									<th><center>크기</center></th>
									<th><center>예약</center></th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${roomInfo}" var="list">
									<tr>
										<td><center>${list.buildingName}관</center></td>
										<td><center>${list.classRoomName}호</center></td>
										<td><center>${list.classRoomSize}</center></td>
										<td><button class="btn btn-md btn-default btn-block"
										type="submit" onclick="location.href='timeTable?buildingName=${list.buildingName}&classRoomName=${list.classRoomName}'"><span class="glyphicon glyphicon-ok-circle"></span>예약</button>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>

		</div>

	</div>
</body>
</html>