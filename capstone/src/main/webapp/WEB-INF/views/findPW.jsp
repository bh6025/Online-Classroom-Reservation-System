<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>�¶��� ���ǽ� �뿩 �ý���</title>

	<!-- Bootstrap -->
	<link href="./css/bootstrap.css" rel="stylesheet" type="text/css" />
	<!-- jQuery (��Ʈ��Ʈ���� �ڹٽ�ũ��Ʈ �÷������� ���� �ʿ���) -->
	<script src="//code.jquery.com/jquery.js"></script>
	<!-- ��� ������ �÷������� �����ϰų� (�Ʒ�) �ʿ��� ������ ���ϵ��� �����ϼ��� -->
	<script src="./js/bootstrap.min.js"></script>

	<!-- Respond.js ���� IE8 ���� ������ ����� Ȱ��ȭ�ϼ��� (https://github.com/scottjehl/Respond)
	<script src="./Bootstrap/js/respond.js"></script>-->

</head>

<body>
	<div class="container"><!-- �¿����� ���� Ȯ�� -->
    <!-- ��� ���� �κ� -->
    
    	<div class="row">
    		<p></p>
    		<div class="col-md-6">
				<small>
					<a href="login">�α���</a> | <a href="joinUs">ȸ������</a>
				</small>
			</div>
		</div>

	<div class="container">
  		<h2>PW ã��</h2>
  			<form class="form-horizontal">
  			
  				<div class="form-group">
  					<label class="control-label col-sm-2" for="id">ID:</label>
  						<div class="col-xs-4">
  							<input type="text" class="form-control" id="id">
  						</div>
				</div>
    			
    			<div class="form-group">
					<label class="control-label col-sm-2">���� :</label>
						<div class="col-xs-4">
							<select class="form-control">
	  							<option>������ �ʵ��б��� �̸���?</option>
        						<option>��� ������?</option>
        						<option>�ƹ����� ������?</option>
        						<option>��Ӵ��� ������?</option>
        					
							</select>
						</div>
				</div>
    			
    			<div class="form-group">
      				<label class="control-label col-sm-2" for="email">���� ��:</label>
      					<div class="col-xs-4">
        					<input type="email" class="form-control" id="email">
      					</div>
    			</div>
    				
    			<div class="form-group">
     				<div class="col-sm-offset-2 col-sm-10">
        				<button type="submit" class="btn btn-default">ã��</button>
      				</div>
    			</div>
  			</form>
	</div>




</body>
</html>