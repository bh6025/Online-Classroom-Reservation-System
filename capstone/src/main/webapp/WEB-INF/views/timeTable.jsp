<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>온라인 강의실 대여 시스템</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="./css/datepicker.css">
<link rel="stylesheet" href="./css/bootstrap.css">
<link rel="stylesheet" href="./css/button.css">
<link rel="stylesheet" href="./css/jquery-ui.css">
<link rel="stylesheet" href="./css/style.css">

<!--Sylesheets and JavaScript files to be included-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
<script src="./js/jquery-1.12.4.js"></script>
<script src="./js/jquery-ui.js"></script>
<script src="./js/bootstrap-datepicker.js"></script>

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="./js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	padding: 8px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

tr:hover {
	background-color: #f5f5f5
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
					<li class="active"><a href="#">강의실 예약</a></li>
					<li><a href="studentRecord">예약 기록</a></li>
					<li><a href="myPage">My Page</a></li>
				</ul>
			</div>
		</div>

		<div class="jumbotron">

			<table class="table">
				<thead>
					<tr>
						<th>건물</th>
						<th>강의실</th>
						<th>시간</th>
						<th>강의실 상태</th>
					</tr>
				</thead>
				<tbody>
				<% 
					int i=9; 
					String buildingName = request.getParameter("buildingName");
					String classRoomName = request.getParameter("classRoomName");
				%>
				<c:forEach items="${timeTableList}" var="list">
					<tr>
						<td><%=buildingName %></td>
						<td><%=classRoomName %></td>
						<td><%=i %>:00 ~ <%=i+1%>:00</td><%i++; %>
						<c:choose>
							<c:when test="${list eq 'lecture'}">
								<td><button type="button" class="btn btn-danger btn-xs disabled"><span class="glyphicon glyphicon-pencil"></span> 수업</button></td>
							</c:when>
							<c:when test="${list eq 'available'}">
        						<td>
        							<a href="#" type="submit" class="btn btn-primary btn-xs"data-toggle="modal" data-target="#reserv"><span class="glyphicon glyphicon-ok"></span> 가능</a>
										<div class="modal fade" id="reserv" role="dialog">
												<div class="modal-dialog modal-md" role="document">

												<!-- Modal content-->
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal"aria-label="Close"><span aria-hidden="true">&times;</span></button>
															<h4 class="modal-title" id="myModalLabel">예약확인</h4>
														</div>
													<div class="modal-body">
												<p>예약하시겠습니까?</p>
											</div>
										<div class="modal-footer">
											<button type="submit" class="btn btn-primary"data-dismiss="modal">예약하기</button>
											<button type="button" class="btn btn-default"data-dismiss="modal">Close</button>
										</div>
									</div>
								</div>
							</div></td>
   							</c:when>
   							<c:otherwise>
       							<td><button type="button"class="btn btn-danger btn-xs disabled"><span class="glyphicon glyphicon-user"></span> 대여중
							</button></td>
    						</c:otherwise>
    					</c:choose>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>