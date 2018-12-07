<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	<script type="text/javascript">
/* 	$(function() {
		$('#loginf').submit(function(event) {
			event.preventDefault();
			$.ajax({
				type:"get",
				url:"login.jsp",
				
				success:function(result){
					if(result!=""){
					$('#result').html(result);
					}
				}//callback
			});
		});
	}); */
	
		
	
	
	</script>
</head>
<body>
<div id="loginarea">
<div id="result"></div>
<form action="./login.jsp" method="get" id="loginf">
				<div class="container-fluid" style="text-align: center;">
					<div class="form-group"
						style="padding-top: 10px; margin: 0px; align: center">
						<input type="text" class="form-control"
							style="margin-bottom: 10px" placeholder="ID" name="id"
							name="id" align="center"> <input type="password"
							class="form-control" style="margin-bottom: 10px"
							placeholder="Password" id="password" name="password"
							text-align="center">
					</div>
				</div>
				<div class="container-fluid"
					style="text-align: center; border-bottom: 2px solid black; padding-bottom: 15px">
					<div class="btn-group btn-group-sm">
						<a class="btn btn-dark btn-sm" value="findid" onclick="alert('아직 공사중입니다');">ID/PW</a>
						<a class="btn btn-dark btn-sm" value="signup" href="./member/signupform.html">회원가입</a>
						<button type="submit" class="btn btn-dark btn-sm" value="login" id="login">로그인</button>
					</div>
				</div>
			</form>
			<div style="height:100px; background:yellow"></div>
			</div>
			
</body>
</html>