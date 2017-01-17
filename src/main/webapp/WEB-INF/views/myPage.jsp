<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8">
<!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Join Us</title>
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


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="./js/bootstrap-datepicker.js"></script>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

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
		<hr />
		<div class="masthead">
			<h3 class="text-muted">Reservation Project</h3>
			<nav>
			<div class="container-fluid">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="logout"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
				</ul>
				<ul class="nav nav-tabs">
					<li><a href="reservation">강의실 예약</a></li>
					<li><a href="studentRecord">예약 기록</a></li>
					<li class="active"><a data-toggle="tab" href="myPage">My Page</a></li>
				</ul>

			</div>
			</nav>
		</div>


		<br /> <br />

		<form action="myPageConfirm" method="post" class="form-horizontal" role="form">

			<div class="form-group" id="divUserID">
				<label for="inputUserID" class="col-lg-2 control-label">아이디 </label> 
				<div class="col-lg-10">
				<input type="text" class="form-control" name="userID" id="userID" value="${userInfo.userID}" readonly>
				</div>
			</div>

			<div class="form-group" id="divUserPW">
				<label for="inputUserPW" class="col-lg-2 control-label">패스워드</label>
				<div class="col-lg-10">
					<input type="password" class="form-control" name="userPW" id="userPW"  placeholder="패스워드">
				</div>
			</div>
			<div class="form-group" id="divUserPWCheck">
				<label for="inputUserPWCheck" class="col-lg-2 control-label">패스워드
					확인</label>
				<div class="col-lg-10">
					<input type="password" class="form-control" id="userPWCheck" placeholder="패스워드 확인">
				</div>
			</div>
			<div class="form-group" id="divStudentNum">
				<label for="inputStudentNum" class="col-lg-2 control-label">학번</label>
				<div class="col-lg-10">
				<input type="text" class="form-control" name="studentNum" id="studentNum" value="${userInfo.studentNum}" readonly>
				</div>
			</div>
			<div class="form-group" id="divName">
				<label for="inputName" class="col-lg-2 control-label">이름</label>
				<div class="col-lg-10">
					<input type="text" class="form-control" name="name" id="name" value="${userInfo.name}" readonly>
				</div>
			</div>
			<div class="form-group">
				<label for="inputMajor" class="col-lg-2 control-label">학과</label>
				<div class="col-lg-10">
					<select class="form-control" name="major" id="major" >
						<option>가정교육과</option>
						<option>간호학과</option>
						<option>건축학부</option>
						<option>경영학부</option>
						<option>경제학부</option>
						<option>공공인재학부</option>
						<option>공연영상창작학부</option>
						<option>광고홍보학과</option>
						<option>교육학과</option>
						<option>국어국문학과</option>
						<option>국제물류학과</option>
						<option>기계공학부</option>
						<option>도시계획,부동산학과</option>
						<option>디자인학부</option>
						<option>문헌정보학과</option>
						<option>물리학과</option>
						<option>미술학부</option>
						<option>사회기반시스템공학</option>
						<option>사회복지학부</option>
						<option>사회학과</option>
						<option>생명과학부</option>
						<option>생명자원공학부</option>
						<option>수학과</option>
						<option>스포츠과학부</option>
						<option>시스템생명공학과</option>
						<option>식품공학부</option>
						<option>신문방송학부</option>
						<option>심리학과</option>
						<option>아시아문화학부</option>
						<option>약학부</option>
						<option>역사학과</option>
						<option>영어교육과</option>
						<option>영어영문학과</option>
						<option>에너지시스템공학부</option>
						<option>유럽문화학부</option>
						<option>유아교육과</option>
						<option>융합공학부</option>
						<option>음악학부</option>
						<option>응용통계학과</option>
						<option>의학부</option>
						<option>전자전기공학부</option>
						<option>전통예술학부</option>
						<option>정치국제학부</option>
						<option>지식경영학부</option>
						<option>철학과</option>
						<option>체육교육과</option>
						<option>컴퓨터공학부</option>
						<option>화학과</option>
						<option>화학신소재공학부</option>
					</select>
				</div>
			</div>
			
			<div class="form-group" id="divEmail">
				<label for="inputEmail" class="col-lg-2 control-label">이메일</label>
				<div class="col-lg-10">
					<input type="text" class="form-control" name="email" id="email" value="${userInfo.email}">
				</div>
			</div>
			<div class="form-group" id="divTel">
				<label for="inputTel" class="col-lg-2 control-label">휴대폰번호</label>
				<div class="col-lg-10">
					<input type="text" class="form-control" name="tel" id="tel" value="${userInfo.tel}">
				</div>
			</div>
			<div class="form-group" id="divQuestion">
                <label for="inputQuestion" class="col-lg-2 control-label">질문</label>
                <div class="col-lg-10">
                    <select class="form-control" name="question" id="question" selected="${userInfo.question}">
                        <option>졸업한 초등학교의 이름은?</option>
        				<option>어릴적 별명은?</option>
        				<option>아버지의 성함은?</option>
        				<option>어머니의 성함은?</option>
                    </select>
                </div>
            </div>
         
            <div class="form-group" id="divAnswer">
                <label for="inputAnswer" class="col-lg-2 control-label">답변</label>
                <div class="col-lg-10">
                    <input type="text" name="answer" id="answer" class=form-control value="${userInfo.answer}">
                </div>
            </div>
			
			<div class="form-group">
				<div class="col-lg-offset-2 col-lg-10">
					<button type="submit" class="btn btn-success" align="center">Modify</button>
				</div>
			</div>
		</form>


		<script>
         
            $(function(){
                //모달을 전역변수로 선언
                var modalContents = $(".modal-contents");
                var modal = $("#defaultModal");
                 
                $(".onlyHangul").keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val(inputVal.replace(/[a-z0-9]/gi,''));
                    }
                });
             
                $(".onlyNumber").keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val(inputVal.replace(/[^0-9]/gi,''));
                    }
                });
                 
                //------- 검사하여 상태를 class에 적용
                $('#userID').keyup(function(event){
                     
                    var divId = $('#divUserID');
                     
                    if($('#userID').val()==""){
                    	divUserID.removeClass("has-success");
                    	divUserID.addClass("has-error");
                    }else{
                    	divUserID.removeClass("has-error");
                    	divUserID.addClass("has-success");
                    }
                });
                 
                $('#userPW').keyup(function(event){
                     
                    var divUserPW = $('#divUserPW');
                     
                    if($('#userPW').val()==""){
                    	divUserPW.removeClass("has-success");
                    	divUserPW.addClass("has-error");
                    }else{
                    	divUserPW.removeClass("has-error");
                    	divUserPW.addClass("has-success");
                    }
                });
                 
                $('#userPWCheck').keyup(function(event){
                     
                    var userPWCheck = $('#userPWCheck').val();
                    var userPW = $('#userPW').val();
                    var divUserPWCheck = $('#divUserPWCheck');
                     
                    if((userPWCheck=="") || (userPW!=userPWCheck)){
                    	divUserPWCheck.removeClass("has-success");
                    	divUserPWCheck.addClass("has-error");
                    }else{
                    	divUserPWCheck.removeClass("has-error");
                    	divUserPWCheck.addClass("has-success");
                    }
                });
                 
                $('#name').keyup(function(event){
                     
                    var divName = $('#divName');
                     
                    if($.trim($('#name').val())==""){
                        divName.removeClass("has-success");
                        divName.addClass("has-error");
                    }else{
                        divName.removeClass("has-error");
                        divName.addClass("has-success");
                    }
                });
                 
                $('#email').keyup(function(event){
                     
                    var divEmail = $('#divEmail');
                     
                    if($.trim($('#email').val())==""){
                        divEmail.removeClass("has-success");
                        divEmail.addClass("has-error");
                    }else{
                        divEmail.removeClass("has-error");
                        divEmail.addClass("has-success");
                    }
                });
                 
                $('#phoneNumber').keyup(function(event){
                     
                    var divPhoneNumber = $('#divPhoneNumber');
                     
                    if($.trim($('#phoneNumber').val())==""){
                        divPhoneNumber.removeClass("has-success");
                        divPhoneNumber.addClass("has-error");
                    }else{
                        divPhoneNumber.removeClass("has-error");
                        divPhoneNumber.addClass("has-success");
                    }
                });
                 
 				$('#question').keyup(function(event){
                    
                    var divQuestion = $('#divQuestion');
                     
                    if($.trim($('#question').val())==""){
                        divPhoneNumber.removeClass("has-success");
                        divPhoneNumber.addClass("has-error");
                    }else{
                        divPhoneNumber.removeClass("has-error");
                        divPhoneNumber.addClass("has-success");
                    }
                });
                $('#answer').keyup(function(event){
                    
                    var divAnswer = $('#divAnswer');
                     
                    if($.trim($('#answer').val())==""){
                        divPhoneNumber.removeClass("has-success");
                        divPhoneNumber.addClass("has-error");
                    }else{
                        divPhoneNumber.removeClass("has-error");
                        divPhoneNumber.addClass("has-success");
                    }
                });
                 
                //------- validation 검사
                $( "form" ).submit(function( event ) {
                     
                    var provision = $('#provision');
                    var memberInfo = $('#memberInfo');
                    var divId = $('#divId');
                    var divUserPW = $('#divUserPW');
                    var divUserPWCheck = $('#divUserPWCheck');
                    var divName = $('#divName');
                    var divNickname = $('#divNickname');
                    var divEmail = $('#divEmail');
                    var divPhoneNumber = $('#divPhoneNumber');
                     
                    //아이디 검사
                    if($('#id').val()==""){
                        modalContents.text("아이디를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divId.removeClass("has-success");
                        divId.addClass("has-error");
                        $('#id').focus();
                        return false;
                    }else{
                        divId.removeClass("has-error");
                        divId.addClass("has-success");
                    }
                     
                    //패스워드 검사
                    if($('#userPW').val()==""){
                        modalContents.text("패스워드를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divUserPW.removeClass("has-success");
                        divUserPW.addClass("has-error");
                        $('#userPW').focus();
                        return false;
                    }else{
                    	divUserPW.removeClass("has-error");
                    	divUserPW.addClass("has-success");
                    }
                     
                    //패스워드 확인
                    if($('#userPWCheck').val()==""){
                        modalContents.text("패스워드 확인을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divUserPWCheck.removeClass("has-success");
                        divUserPWCheck.addClass("has-error");
                        $('#userPWCheck').focus();
                        return false;
                    }else{
                    	divUserPWCheck.removeClass("has-error");
                    	divUserPWCheck.addClass("has-success");
                    }
                     
                    //패스워드 비교
                    if($('#userPW').val()!=$('#userPWCheck').val() || $('#userPWCheck').val()==""){
                        modalContents.text("패스워드가 일치하지 않습니다.");
                        modal.modal('show');
                         
                        divUserPWCheck.removeClass("has-success");
                        divUserPWCheck.addClass("has-error");
                        $('#userPWCheck').focus();
                        return false;
                    }else{
                    	divUserPWCheck.removeClass("has-error");
                    	divUserPWCheck.addClass("has-success");
                    }
                     
                    //이름
                    if($('#name').val()==""){
                        modalContents.text("이름을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divName.removeClass("has-success");
                        divName.addClass("has-error");
                        $('#name').focus();
                        return false;
                    }else{
                        divName.removeClass("has-error");
                        divName.addClass("has-success");
                    }
                    
                    //이메일
                    if($('#email').val()==""){
                        modalContents.text("이메일을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divEmail.removeClass("has-success");
                        divEmail.addClass("has-error");
                        $('#email').focus();
                        return false;
                    }else{
                        divEmail.removeClass("has-error");
                        divEmail.addClass("has-success");
                    }
                     
                    //휴대폰 번호
                    if($('#phoneNumber').val()==""){
                        modalContents.text("휴대폰 번호를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divPhoneNumber.removeClass("has-success");
                        divPhoneNumber.addClass("has-error");
                        $('#phoneNumber').focus();
                        return false;
                    }else{
                        divPhoneNumber.removeClass("has-error");
                        divPhoneNumber.addClass("has-success");
                    }
                    
                    if($('#question').val()==""){
                        modalContents.text("휴대폰 번호를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divQuestion.removeClass("has-success");
                        divQuestion.addClass("has-error");
                        $('#question').focus();
                        return false;
                    }else{
                    	divQuestion.removeClass("has-error");
                    	divQuestion.addClass("has-success");
                    }
                    
                    if($('#answer').val()==""){
                        modalContents.text("휴대폰 번호를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divAnswer.removeClass("has-success");
                        divAnswer.addClass("has-error");
                        $('#answer').focus();
                        return false;
                    }else{
                    	divAnswer.removeClass("has-error");
                    	divAnswer.addClass("has-success");
                    }
                });
                 
            });
             
        </script>
		<!--// 본문 들어가는 부분 -->
		<hr />
	</div>
</body>
</html>