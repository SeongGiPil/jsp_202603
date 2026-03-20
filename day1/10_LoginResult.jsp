<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String userId =request.getParameter("userId");
	String pwd=request.getParameter("pwd");
	
	if(userId.equals("test")&& pwd.equals("1234")){
		out.println("로그인 성공!");
	}else{
		out.println("로그인 실패");
			
	}
%>
	<%-- 로그인성공!
<div>아이디:<%=userId %></div>
<div>비밀번호:<%=pwd %></div> --%>
</body>
</html>