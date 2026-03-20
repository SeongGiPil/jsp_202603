<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  다른 패키지에 있는 클래스를 사용하기위해서는 import해야한다. -->
<!-- 자바랑 작성하는 방법은 차이가 있다.자동완성안해준다. -->

<%@ page import="java.util.Date" %>
<%=new Date().toLocaleString() %>

</body>
</html>