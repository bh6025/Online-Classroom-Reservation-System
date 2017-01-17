<%@page import="com.capstone.project.dto.ReservationDto"%>
<%@page import="com.capstone.project.dto.ReservationAndUserDto" %>
<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8">
<!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>State Check</title>


<!-- Bootstrap -->
<link href="./css/bootstrap.css" rel="stylesheet" type="text/css" />
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
<script src="//code.jquery.com/jquery.js"></script>
<!-- 모든 합쳐진 플러그인을 포함하거나 (아래) 필요한 각각의 파일들을 포함하세요 -->
<script src="./js/bootstrap.min.js"></script>

<!--Sylesheets and JavaScript files to be included-->
<link rel="stylesheet" href="./css/datepicker.css">
<link rel="stylesheet" href="./css/bootstrap.css">
<link rel="stylesheet" href="./css/button.css">

<link rel="stylesheet" href="./css/jquery-ui.css">
<link rel="stylesheet" href="./css/style.css">
<script src="./js/jquery-1.12.4.js"></script>
<script src="./js/jquery-ui.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="./js/bootstrap-datepicker.js"></script>

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src=".//js/ie-emulation-modes-warning.js"></script>

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
			<nav>
			<div class="container-fluid">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="logout"><span
							class="glyphicon glyphicon-user"></span>Logout</a></li>
				</ul>
				<ul class="nav nav-tabs">
					<li><a href="approvalAndReject">예약 승인 및 거절</a></li>
					<li class="active"><a data-toggle="tab" href="adminStateCheck">전체
							강의실 예약 상태</a></li>
					<li><a href="adminMypage">My Page</a></li>
				</ul>

			</div>
			</nav>
		</div>

		<div class="jumbotron">
			<div style="overflow: hidden;">
				<div class="form-group">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Date</th>
								<th>Time</th>
								<th>Building/Room</th>
								<th>Student Info</th>
								<th>Reason</th>
								<th>State</th>
							</tr>
						</thead>
						<tbody>
						<%
							int num = 0;
						%>
							<c:forEach items="${AllInfo}" var="list">
								<tr>
									<td>${list.reservationTime}</td>
									<td></td>
									<td>${list.buildingName}-${list.classRoomName}</td>

									<!--  학생정보 버튼 -->
								
									<td>
										<% 	
											ReservationAndUserDto reservationDto = (ReservationAndUserDto)pageContext.getAttribute("list");
											String approvalInfo = reservationDto.getApprovalInfo();
										   	String stuInfo = "stuInfo";
										   	stuInfo += Integer.toString(num);
										   	num++;
										%>
										<button class="btn btn-md btn-default btn-block" type="button"
											data-toggle="modal" data-target=<%="#" + stuInfo %> onclick="Location.href='selectStuInfo?stuInfo=${list.userID}'">학생 정보</button>
										<div class="modal fade" id=<%= stuInfo %> role="dialog">
											<div class="modal-dialog" role="document">
											
												<!-- Modal content-->
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
														<h4 class="modal-title" id="myModalLabel">Student
															Info</h4>
													</div>
													<div class="modal-body">
														<center>
															<p>아이디 : ${list.userID} </p>
															<p>이름 : ${list.name} </p>
															<p>학과 : ${list.major} </p>
															<p>학번 : ${list.studentNum} </p>
															<p>핸드폰번호 : ${list.tel}</p>
															<p>이메일 : ${list.email}</p>
														</center>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-default"
															data-dismiss="modal">Close</button>
													</div>
												</div>
												
											</div>
										</div>
									</td>

									<!--  사유 버튼 -->
									<td>
										<button class="btn btn-md btn-default btn-block" type="button"
											data-toggle="modal" data-target=<%= "#" + stuInfo + "ur" %>>사유</button>
										<div class="modal fade" id=<%= stuInfo + "ur" %> role="dialog">
											<div class="modal-dialog" role="document">

												<!-- Modal content-->
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
														<h4 class="modal-title" id="myModalLabel">사유</h4>
													</div>
													<div class="modal-body">
														<center>
															<p>${list.userReason}</p>
														</center>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-default"
															data-dismiss="modal">Close</button>
													</div>
												</div>
											</div>
										</div>

									</td>

									<!--  승인 거절 승인거절 승인요청중 버튼 -->
									<td>
										<%	

										
										if(approvalInfo.equals("승인")){
											%>
										<button class="btn btn-md btn-success btn-block" type="button">승인</button>

										<%
										}
										
										else if(approvalInfo.equals("승인 요청중")){
						
											%> <button class="btn btn-md btn-default btn-block" type="button">승인 요청중</button> <%
							
											} else if(approvalInfo.equals("예약 취소")){ 
												%> <button class="btn btn-md btn-warning btn-block" type="button">예약 취소</button> <%
												
											}
											else if(approvalInfo.equals("거절")){
											
											%>
										<button class="btn btn-md btn-danger btn-block" type="button"
											data-toggle="modal" data-target=<%= "#" + stuInfo + "rr" %>>거절사유</button>
										<div class="modal fade" id=<%= stuInfo + "rr" %> role="dialog">
											<div class="modal-dialog" role="document">
												<!-- Modal content-->
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
														<h4 class="modal-title" id="myModalLabel">거절사유</h4>
													</div>
													<div class="modal-body">
														<center>
															<p>${list.adminReason}</p>
														</center>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-default"
															data-dismiss="modal">Close</button>
													</div>
												</div>
											</div>
										</div> 
										<%
											}
										else{  } %>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

</body>
</html>