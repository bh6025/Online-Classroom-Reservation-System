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

<!-- Bootstrap core CSS -->
<link href="./css/bootstrap.min.css" rel="stylesheet">
<script src="./js/ie-emulation-modes-warning.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>

<body>

   <div class="container">
   <hr />
      <div class="masthead">
         <h3 class="text-muted">Reservation Project</h3>
         <div class="container-fluid">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="logout"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
				</ul>
				<ul class="nav nav-tabs">
					<li><a href="reservation">강의실 예약</a></li>
					<li class="active"><a data-toggle="tab" href="studentRecord">예약 기록</a></li>
					<li><a href="myPage">My Page</a></li>
				</ul>

			</div>
         </nav>
      </div>

      <div class="jumbotron">
         <div class="container">
            <h4> 강의실 예약 기록</h4>
               <br />

               <div class="tab-content">
                  <div id="home" class="tab-pane fade in active">
                     <table class="table table-bordered table-striped table-hover">
                        <thead>
                           <tr class="table-head">
                              <th class="col-md-4">날짜</th>
                              <th class="col-md-6">건물</th>
                              <th class="col-md-2">강의실</th>
                              <th class="col-md-2">상태</th>
                              <th class="col-md-2">취소</th>
                           </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${reservationInfo}" var="list">
                        <tr>
                           <td>${list.reservationTime}</td>
                           <td>${list.buildingName}</td>
                           <td>${list.classRoomName}</td>
                           <td>${list.approvalInfo}</td>
                           
                           <td><input type="button" value="취소" onclick="location.href='deleteRecord?reservationTime=${list.reservationTime}'"></td>
                        <tr>
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