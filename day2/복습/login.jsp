<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- login.jsp   -->
	<form action="login-result.jsp" methods="get" name="login"> <!-- action테그에 있는 페이지 경로로 이동한다  -->
		<div>
			아이디:<input name="userId">
		</div>
		<div>
			비밀번호:<input name="pwd">
		</div>
		<div>
			<input type="submit" value="sumbmit버튼">
			&nbsp;&nbsp;
			<input type="button" value="그냥버튼" onclick="fnLogin()">
		</div>
	</form>
</body>
</html>

<script>
	function fnLogin(){
		let form=document.login;
		if(form.userId.value.length==0){
		alert("아이디입력");
		return;
		}
		if(form.pwd.value.length==0){
			alert("비밀번호입력");
			return;
			}
		form.submit();
		
	}
</script>