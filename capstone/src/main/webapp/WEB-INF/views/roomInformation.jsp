<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.capstone.project.dto.*" %>
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

<style>
#search {
	width: 90%;
}

.searchicon {
	color: #5CB85C;
}

.items-collection {
	margin: 20px 0 0 0;
}

.items-collection label.btn-default.active {
	background-color: #007ba7;
	color: #FFF;
}

.items-collection label.btn-default {
	width: 80%;
	border: 1px solid #305891;
	margin: 5px;
	border-radius: 20px;
	color: #305891;
}

.items-collection label .itemcontent {
	width: 100%;
}

.items-collection .btn-group {
	width: 80%
}
</style>
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
<form action="roomInformationList" method="post">
		<div class="jumbotron">
			<div class="panel panel-warning">
				<div class="panel-heading">
					<center>
						<h4>
							<a href="#" data-toggle="tooltip" data-placement="top"
								title="사용자의 이전 기록으로 강의실을 예약합니다!">One Click Reservation</a>
						</h4>
					</center>
				</div>
				<div class="panel-body">
					<center>
						<c:forEach items="${oneClickInfo}" var="list">
							<a href="timeTable" class="btn btn-default btn-outline btn-md">	
								${list.buildingName}관 - ${list.classRoomName}강의실</a> &nbsp; 	 
                     	</c:forEach>
					</center>
				</div>
			</div>

			<div class="panel panel-success">
				<div class="panel-heading">
					<center>
						<h4>
							<a href="#" data-toggle="tooltip" data-placement="top"
								title="원하는 강의실 정보를 선택해주세요!">강의실 정보</a>
						</h4>
					</center>
				</div>
				<div class="panel-body">
					<div class="form-group">
						<div class="items-collection">
							<div class="items col-sm-3">
								<div class="info-block block-info clearfix">
									<div data-toggle="buttons" class="btn-group bizmoduleselect">
										<label class="btn btn-default">
											<div class="itemcontent">
												<input type="checkbox" name="buildingName" autocomplete="off"
													value="101"> <span
													class="glyphicons glyphicon-building"></span>
												<h5>101관</h5>
											</div>
										</label>

									</div>
								</div>
							</div>
							<div class="items col-sm-3">
								<div class="info-block block-info clearfix">
									<div data-toggle="buttons" class="btn-group itemcontent">
										<label class="btn btn-default">
											<div class="itemcontent">
												<input type="checkbox" name="buildingName" autocomplete="off"
													value="102"> <span
													class="glyphicons glyphicon-building"></span>
												<h5>102관</h5>
											</div>
										</label>
									</div>
								</div>
							</div>
							<div class="items col-sm-3">
								<div class="info-block block-info clearfix">
									<div data-toggle="buttons" class="btn-group itemcontent">
										<label class="btn btn-default">
											<div class="itemcontent">
												<input type="checkbox" name="buildingName" autocomplete="off"
													value="106"> <span
													class="glyphicons glyphicon-building"></span>
												<h5>106관</h5>
											</div>
										</label>
									</div>
								</div>
							</div>
							<div class="items col-sm-3">
								<div class="info-block block-info clearfix">
									<div data-toggle="buttons" class="btn-group itemcontent">
										<label class="btn btn-default">
											<div class="itemcontent">
												<input type="checkbox" name="buildingName" autocomplete="off"
													value="205"> <span
													class="glyphicons glyphicon-building"></span>
												<h5>205관</h5>
											</div>
										</label>
									</div>
								</div>
							</div>
							<div class="items col-sm-3">
								<div class="info-block block-info clearfix">
									<div data-toggle="buttons" class="btn-group itemcontent">
										<label class="btn btn-default">
											<div class="itemcontent">
												<input type="checkbox" name="buildingName" autocomplete="off"
													value="207"> <span
													class="glyphicons glyphicon-building"></span>
												<h5>207관</h5>
											</div>
										</label>
									</div>
								</div>
							</div>
							<div class="items col-sm-3">
								<div class="info-block block-info clearfix">
									<div data-toggle="buttons" class="btn-group itemcontent">
										<label class="btn btn-default">
											<div class="itemcontent">
												<input type="checkbox" name="buildingName" autocomplete="off"
													value="208"> <span
													class="glyphicons glyphicon-building"></span>
												<h5>208관</h5>
											</div>
										</label>
									</div>
								</div>
							</div>
							<div class="items col-sm-3">
								<div class="info-block block-info clearfix">
									<div data-toggle="buttons" class="btn-group itemcontent">
										<label class="btn btn-default">
											<div class="itemcontent">
												<input type="checkbox" name="buildingName" autocomplete="off"
													value="209"> <span
													class="glyphicons glyphicon-building"></span>
												<h5>209관</h5>
											</div>
										</label>
									</div>
								</div>
							</div>
							<div class="items col-sm-3">
								<div class="info-block block-info clearfix">
									<div data-toggle="buttons" class="btn-group itemcontent">
										<label class="btn btn-default">
											<div class="itemcontent">
												<input type="checkbox" name="buildingName" autocomplete="off"
													value="301"> <span
													class="glyphicons glyphicon-building"></span>
												<h5>301관</h5>
											</div>
										</label>
									</div>
								</div>
							</div>
							<div class="items col-sm-3">
								<div class="info-block block-info clearfix">
									<div data-toggle="buttons" class="btn-group itemcontent">
										<label class="btn btn-default">
											<div class="itemcontent">
												<input type="checkbox" name="buildingName" autocomplete="off"
													value="302"> <span
													class="glyphicons glyphicon-building"></span>
												<h5>302관</h5>
											</div>
										</label>
									</div>
								</div>
							</div>
							<div class="items col-sm-3">
								<div class="info-block block-info clearfix">
									<div data-toggle="buttons" class="btn-group itemcontent">
										<label class="btn btn-default">
											<div class="itemcontent">
												<input type="checkbox" name="buildingName" autocomplete="off"
													value="303"> <span
													class="glyphicons glyphicon-building"></span>
												<h5>303관</h5>
											</div>
										</label>
									</div>
								</div>
							</div>
							<div class="items col-sm-3">
								<div class="info-block block-info clearfix">
									<div data-toggle="buttons" class="btn-group itemcontent">
										<label class="btn btn-default">
											<div class="itemcontent">
												<input type="checkbox" name="buildingName" autocomplete="off"
													value="306"> <span
													class="glyphicons glyphicon-building"></span>
												<h5>306관</h5>
											</div>
										</label>
									</div>
								</div>
							</div>
							<div class="items col-sm-3">
								<div class="info-block block-info clearfix">
									<div data-toggle="buttons" class="btn-group itemcontent">
										<label class="btn btn-default">
											<div class="itemcontent">
												<input type="checkbox" name="buildingName" autocomplete="off"
													value="310"> <span
													class="glyphicons glyphicon-building"></span>
												<h5>310관</h5>
											</div>
										</label>
									</div>
								</div>
							</div>

						</div>
					</div>

					&nbsp;

					<div class="form-group">
						<center>
							<h3>강의실 크기</h3>
							<div class="info-block block-info clearfix">
								<div data-toggle="buttons" class="btn-group itemcontent">

									<label class="btn btn-default"> <input type="checkbox"
										name="classRoomSize" autocomplete="off" value="소">
										<h4>SMALL</h4>
									</label> <label class="btn btn-default"> <input type="checkbox"
										name="classRoomSize" autocomplete="off" value="중">
										<h4>MIDIUM</h4>
									</label> <label class="btn btn-default"> <input type="checkbox"
										name="classRoomSize" autocomplete="off" value="대">
										<h4>LARGE</h4>
									</label>
								</div>
							</div>

						</center>
					</div>
					&nbsp;
					<center>
						<h3>
							<button type="submit" class="btn btn-success btn-lg"><span
								class="glyphicon glyphicon-search"></span>Search</button>
						</h3>
					</center>

				</div>
				</form>
			</div>

		</div>

	</div>
</body>
</html>