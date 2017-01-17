<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>온라인 강의실 대여 시스템</title>

	<!-- Bootstrap -->
	<link href="./css/bootstrap.css" rel="stylesheet" type="text/css" />
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
	<script src="//code.jquery.com/jquery.js"></script>
	<!-- 모든 합쳐진 플러그인을 포함하거나 (아래) 필요한 각각의 파일들을 포함하세요 -->
	<script src="./js/bootstrap.min.js"></script>

	<!-- Respond.js 으로 IE8 에서 반응형 기능을 활성화하세요 (https://github.com/scottjehl/Respond)
	<script src="./Bootstrap/js/respond.js"></script>-->

</head>

<body>
	<div class="container"><!-- 좌우측의 공간 확보 -->
    <!-- 헤더 들어가는 부분 -->
    
    	<div class="row">
    		<p></p>
    		<div class="col-md-6">
				<small>
					<a href="login">로그인</a> | <a href="joinUs">회원가입</a>
				</small>
			</div>
		</div>

	<div class="container">
  		<h2>PW 찾기</h2>
  			<form class="form-horizontal">
  			
  				<div class="form-group">
  					<label class="control-label col-sm-2" for="id">ID:</label>
  						<div class="col-xs-4">
  							<input type="text" class="form-control" id="id">
  						</div>
				</div>
    			
    			<div class="form-group">
					<label class="control-label col-sm-2">질문 :</label>
						<div class="col-xs-4">
							<select class="form-control">
	  							<option>졸업한 초등학교의 이름은?</option>
        						<option>어릴적 별명은?</option>
        						<option>아버지의 성함은?</option>
        						<option>어머니의 성함은?</option>
        					
							</select>
						</div>
				</div>
    			
    			<div class="form-group">
      				<label class="control-label col-sm-2" for="email">질문 답:</label>
      					<div class="col-xs-4">
        					<input type="email" class="form-control" id="email">
      					</div>
    			</div>
    				
    			<div class="form-group">
     				<div class="col-sm-offset-2 col-sm-10">
        				<button type="submit" class="btn btn-default">찾기</button>
      				</div>
    			</div>
  			</form>
	</div>




</body>
</html>