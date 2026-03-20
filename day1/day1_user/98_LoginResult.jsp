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
	String userId = request.getParameter("userId");
	String pwd = request.getParameter("pwd");

	String sql = "SELECT * FROM TBL_USER" + "WHERE USERID='" + userId + "'";
	ResultSet rs=stmt.executeQuery(sql);
	
		if(rs.next()){
			/* 아이디는 존재하는 경우 */
			if(pwd.equals(rs.getString("PWD"))){
				out.println("로그인성공");
		} else{
			out.println("비밀번호를 확인해주세요");
		}
		}else{
			out.println("해당아이디는 존재하지않습니다");
		}
	/*TBL_USER테이블에 UserId,PWD컬럼값과 비교하여  */
	/* 동일한 데이터 있으면 '로그인성공'출력  */
	/*  둥중 하나라도 다르면'로그인실패' 출력*/
	
	/* 아이디없는경우: '해당아이디는 존재하지않습니다'  */
	/*  아이디는 있는데 비밀번호 다른경우:'비밀번호를 확인해주세요' */
	%>
	
	
	
	
	
	
</body>
</html>