<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<!--  jsp핵심 =>form태그 -->
<!-- form태그내의 submit버튼 클릭시 action페이지로 이동  -->
<!-- 이때,form 태그 내부에있는 input에있는 값을 request객체에 담아서 이동한다  -->
<!-- input의 name속성이  키(key),입력받은값이 value -->
<!-- method는 옵션.get방식과 post방식,디폴트는 get -->
<!-- get방식은 url(주소)에 값을 담아서 보낸다. 보안에 취약하지만 빠르다.  -->
<!-- 사용자 개인정보나 패스워드등을 전송할때는 사용하면 안된다. -->

<!--post는 데이터를 숨겨서보낸다.   -->
<!-- 실습할때는 데이터 확인을 위해 get을 주로 쓸래요-->

<form action="10_LoginResult.jsp">
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