<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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

<script>
	$(document).ready(function() {
		$("#from-datepicker").datepicker({
			format : 'yyyy-mm-dd'
		});
		$("#from-datepicker").on("change", function() {
			var fromdate = $(this).val();
		});
	});
</script>

</head>

<body>
	<div class="container">
		<hr />
		<div class="masthead">
			<h3 class="text-muted">Reservation Project</h3>
			<nav>
			<div class="container-fluid">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="logout"><span
							class="glyphicon glyphicon-user"></span>Logout</a></li>
				</ul>
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="reservation">강의실
							예약</a></li>
					<li><a href="studentRecord">예약 기록</a></li>
					<li><a href="myPage">My Page</a></li>
				</ul>

			</div>
			</nav>
		</div>

		<div class="jumbotron">
			<div style="overflow: hidden;">
				<div class="form-group">
					<form action="roomInformation" class="form-horizontal"
						method="post">
						<div class="form-group" id="divUserID">
							<div class="col-lg-5">
								<input type="text" name="date" class=form-control placeholder="날짜를 선택해주세요."
									id="from-datepicker">
								<p></p>
							</div>
							<center>			    
								<button class="btn btn-md btn-info" type="submit"
									data-toggle="tootip" title="날짜를 선택하고 one click/추천 기능을 이용해보세요!"><span
									class="glyphicon glyphicon-search"></span>Search
								</button>		
							</center>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>


	<script>
		$(document).ready(function() {
			$('[data-toggle="tooltip"]').tooltip();
		});
	</script>

	<!-- /container -->


	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="./js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>