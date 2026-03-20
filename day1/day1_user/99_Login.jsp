<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="98_LoginResult.jsp">
		<div>
			<label>아이디:<input name="userId"></label>
		</div>
		<div>
			<label>비밀번호:<input name="pwd" type="password"></label>
		</div>
		<div>
			<!-- submit버튼을 클릭하면 form태그의 action에있는 페이지로 이동한다  -->

			<input type="submit" value="로그인!">
		</div>


	</form>

</body>
</html>