<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="10_LoginResult.jsp" name=login method="get">
		<div>
			<label>아이디:<input name="userId"></label>
		</div>
		<div>
			<label>비밀번호:<input name="pwd" type="password"></label>
		</div>
		<div>
			<!-- submit버튼을 클릭하면 form태그의 action에있는 페이지로 이동한다  -->

			<input type="button" value="로그인!" onclick="fncheck()">
		</div>


	</form>
</body>
</html>
<script>
	function fncheck() {
		let login = document.login;
		/* console.log(login.userId.value); */
		if (login.userId.value.length == 0) {
			alert("아이디 입력하세요");
			login.userId.focus();
			return;
		}

		if (login.pwd.value.length == 0) {
			alert("비밀번호 입력하세요");
			login.pwd.focus();
			return;
		}

		/*위 조건을 모두 만족했을때 최종submit을 출력하게된다  */
		login(submit);
	}
</script>