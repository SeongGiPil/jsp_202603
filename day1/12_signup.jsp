<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 12.sign-up.jsp  -->

<!-- 아이디,비밀번호,비밀번호 확인,이름,나이를 입력받아서  -->
<!--submit실행시 12_sign-up-result.jsp로보내기  -->
<!--단,모든값은 빈값x -->
<!-- 비밀번호,비밀번호 확인은 같은값이여야함  -->
<form action="13_sign-up-result.jsp" name=signup>
<div>
<label>아이디:<input name="userId" ></label>
</div>
<div>
<label>비밀번호:<input name="pwd1" type="password"></label>
</div>
<div>
<label>비밀번호확인:<input name="pwd2" type="password"></label>
</div>

<div>
<label>이름:<input name="username"></label>
</div>
<div>
<label>이름:<input name="age"></label>
</div>
<div>
<label><input type="checkbox" name="hobby"value="코딩">코딩</label>
<label><input type="checkbox" name="hobby"value="유튜브">유튜브</label>
<label><input type="checkbox" name="hobby"value="독서">독서</label>
<label><input type="checkbox" name="hobby"value="운동">운동</label>
<label><input type="checkbox" name="hobby"value="게임">게임</label>




</div>





<div>
<!-- submit버튼을 클릭하면 form태그의 action에있는 페이지로 이동한다  -->

<input type="submit" value="로그인!">
</div>

<!-- 12_sign-up-result.jsp에서는 받은값을 출력  -->
<!-- 아이디: 이름: -->




</body>
</html>