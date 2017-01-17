<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>온라인 강의실 대여 시스템</title>

<!-- Bootstrap -->
<link href="./css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
<script src="./js/jQuery.min.js"></script>
<script src="./js/jquery-1.12.4.js"></script>
<!-- 모든 합쳐진 플러그인을 포함하거나 (아래) 필요한 각각의 파일들을 포함하세요 -->
<script src="./js/bootstrap.min.js"></script>
<script src="./js/modal.js"></script>

<!-- Respond.js 으로 IE8 에서 반응형 기능을 활성화하세요 (https://github.com/scottjehl/Respond)
	<script src="./Bootstrap/js/respond.js"></script>-->

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="./js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
    <body>
        <div class="container"><!-- 좌우측의 공간 확보 -->
            <!-- 헤더 들어가는 부분 -->
             
            <div class="row">
                <p></p>
                <div class="col-md-6">
                    <small>
                    <a href="login">로그인</a>
                    </small>
                </div>
            </div>
            <!--// 헤더 들어가는 부분 -->
            <!-- 모달창 -->
            <div class="modal fade" id="defaultModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title">알림</h4>
                        </div>
                        <div class="modal-body">
                            <p class="modal-contents"></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
            <!--// 모달창 -->
            <hr/>
                <!-- 본문 들어가는 부분 -->
                 
 
 
        <form action="joinUsConfirm" class="form-horizontal" method="post">
          
            <div class="form-group" id="divUserID">
                <label for="inputUserID" class="col-lg-2 control-label">아이디</label>
                <div class="col-lg-10">
                    <input type="text" name="userID" id="userID" class=form-control placeholder="아이디" required>
                </div>
            </div>
            <div class="form-group" id="divUserPW">
                <label for="inputUserPW" class="col-lg-2 control-label">패스워드</label>
                <div class="col-lg-10">
                    <input type="password" name="userPW" id="userPW" class=form-control placeholder="패스워드" required>
                </div>
            </div>
            <div class="form-group" id="divUserPWCheck">
                <label for="inputUserPWCheck" class="col-lg-2 control-label">패스워드 확인</label>
                <div class="col-lg-10">
                    <input type="password" id="userPWCheck" class=form-control placeholder="패스워드 확인" required>
                </div>
            </div>
            <div class="form-group" id="divStudentNum">
                <label for="inputStudentNum" class="col-lg-2 control-label">학번</label>
                <div class="col-lg-10">
                    <input type="text"  name="studentNum" id="studentNum" class=form-control required>
                </div>
            </div>
            <div class="form-group" id="divName">
                <label for="inputName" class="col-lg-2 control-label">이름</label>
                <div class="col-lg-10">
                    <input type="text" name="name" id="name" class=form-control placeholder="한글만 입력 가능합니다." required>
                </div>
            </div>
            <div class="form-group" id="divMajor">
                <label for="inputMajor" class="col-lg-2 control-label">전공</label>
                <div class="col-lg-10">
                    <select class="form-control" name="major" id="major">
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
                    <input type="text" name="email" id="email" class=form-control placeholder="이메일" required>
                </div>
            </div>
            <div class="form-group" id="divPhoneNumber">
                <label for="inputPhoneNumber" class="col-lg-2 control-label">휴대폰 번호</label>
                <div class="col-lg-10">
                    <input type="text" name="tel" id="tel" class=form-control placeholder="-를 제외하고 숫자만 입력하세요." required>
                </div>
            </div>
            <div class="form-group" id="divQuestion">
                <label for="inputQuestion" class="col-lg-2 control-label">질문</label>
                <div class="col-lg-10">
                    <select class="form-control" name="question" id="question">
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
                    <input type="text" name="answer" id="answer" class=form-control>
                </div>
            </div>
            <div class="form-group">
				<div class="col-lg-offset-2 col-lg-10">
					<button type="button" class="btn btn-info btn-lg"
							data-toggle="modal" data-target="#myModal">Sign up</button>

						<div class="modal fade" id="myModal" role="dialog">
							<div class="modal-dialog" role="document">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="submit" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title" id="myModalLabel">회원가입 완료.</h4>
									</div>
									<div class="modal-body">
										<center>
											<p>회원가입이 완료되었습니다. </p>
										</center>
									</div>
									<div class="modal-footer">
										<button type="submit" class="btn btn-default"
										data-toggle="modal" data-target="#myModal">Close</button>
									</div>
								</div>
							</div>
						</div>
				</div>
			</div>
            
        </form>
         
         
        <script>
         
            $(function(){
                //모달을 전역변수로 선언
                var modalContents = $(".modal-contents");
                var modal = $("#defaultModal");
                 
                $('.onlyAlphabetAndNumber').keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val($(this).val().replace(/[^_a-z0-9]/gi,'')); //_(underscore), 영어, 숫자만 가능
                    }
                });
                 
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
                     
                    var divUserID = $('#divUserID');
                     
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
                
                $('#studentNum').keyup(function(event){
                    
                    var divStudentNum = $('divStudentNum');
                     
                    if($('#studentNum').val()==""){
                    	divStudentNum.removeClass("has-success");
                    	divStudentNum.addClass("has-error");
                    }else{
                    	divStudentNum.removeClass("has-error");
                    	divStudentNum.addClass("has-success");
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
                
                $('#major').keyup(function(event){
                    
                    var divMajor = $('#divMajor');
                     
                    if($.trim($('#major').val())==""){
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
                 
                $('#tel').keyup(function(event){
                     
                    var divPhoneNumber = $('#divPhoneNumber');
                     
                    if($.trim($('#tel').val())==""){
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
                    var divUserID = $('#divUserID');
                    var divUserPW = $('#divUserPW');
                    var divUserPWCheck = $('#divUserPWCheck');
                    var divName = $('#divName');
                    var divNickname = $('#divNickname');
                    var divEmail = $('#divEmail');
                    var divPhoneNumber = $('#divPhoneNumber');
                     
                    //아이디 검사
                    if($('#userID').val()==""){
                        modalContents.text("아이디를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divUserID.removeClass("has-success");
                        divUserID.addClass("has-error");
                        $('#userID').focus();
                        return false;
                    }else{
                        divUserID.removeClass("has-error");
                        divUserID.addClass("has-success");
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
                    
                    if($('#major').val()==""){
                        modalContents.text("이름을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divMajor.removeClass("has-success");
                        divMajor.addClass("has-error");
                        $('#major').focus();
                        return false;
                    }else{
                    	divMajor.removeClass("has-error");
                    	divMajor.addClass("has-success");
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
                    if($('#tel').val()==""){
                        modalContents.text("휴대폰 번호를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                         
                        divPhoneNumber.removeClass("has-success");
                        divPhoneNumber.addClass("has-error");
                        $('#tel').focus();
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
            <hr/>
        </div>
    </body>
</html>