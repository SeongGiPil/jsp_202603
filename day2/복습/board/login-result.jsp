<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../../../db.jsp" %>
	<!-- login-result.jsp-->
	<%
		String userId=request.getParameter("userId");
		String pwd=request.getParameter("pwd");
		
	String sql="SELECT * FROM TBL_USER WHERE USERId='"+userId+"'"
		+"AND PWD='"+pwd+"'";
	
	ResultSet rs=stmt.executeQuery(sql);
	if(rs.next()){
		out.println("로그인성공!");
		String sessionId=rs.getString("USERID");
		String sessionRole=rs.getString("ROLE");
		
		session.setAttribute("sessionId",sessionId);
		session.setAttribute("sessionRole",sessionRole);
		session.setMaxInactiveInterval(60 * 30); //30분을 의미한다
		
		response.sendRedirect("board-list.jsp");
	}else{
		out.println("로그인실패");
		}
	%>

</body>
</html>