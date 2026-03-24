<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--student-search.jsp  -->
	<!-- 학번은 8글자 아니면 다음페이지로 안넘어감 -->
	<!-- '해당학생의 이름은 ooo입니다 출력  -->
	<!--   없으면 '조회에 실패했습니다 출력' -->
	<form action="student-search-result.jsp" methods="get" name="form">
	<div>
		학번:<input type="text" name="stuNo">
			<input type="button" value="검색" onclick="fnSearch()"> 			
	</div>
	</form>
</body>
</html>
<script>
	function fnSearch(){
	let form=document.form;
	if(form.stuNo.value.length !=8){
	alert("학번은 8자리 입니다");
	return;
	}
	form.submit();
	}
	
</script>