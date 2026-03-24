<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
		margin : 30px;
	}
	table, th, tr, td {
		border : 1px solid black;
		padding : 5px 10px;
		border-collapse: collapse;
		text-align: center;
	}
	.search-area {
		margin : 10px 0px;
	}
</style>
</head>
<body>
<form action="board-list.jsp">
	<%@ include file="../../../db.jsp" %>
	<% 
		String keyword = request.getParameter("keyword");	
	%>
	<!-- board-list.jsp -->
	<div class="search-area">
		<label>검색어 : 
		<input name="keyword" 
			   value="<%= keyword != null ? keyword : ""  %>"></label>
		<input type="submit" value="검색">
	</div>
	<table>
		<tr>
			<th>학번</th>
			<th>이름</th>
			<th>학과</th>
			<th>학년</th>
		</tr>
	<%	
		String sql=SELECT * FROM STUDENT;
		 ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){ 
	%>
			<tr>
				<td><%= rs.getString("STU_NO") %></td>
				<td><%= rs.getString("STU_NAME") %></td>
				<td><%= rs.getString("STU_DEPT") %></td>
				<td><%= rs.getString("STU_GRADE") %></td>
			</tr>	
	 <%		
		}
		
	%>
	</table>
	<div>
		<input type="button" value="학생추가" onclick="fnAdd()">
	</div>
</form>
</body>
</html>
<script>
	function fnAdd(){
		// board-add.jsp
		location.href = "stu-add.jsp";
	}
	
	function fnView(boardNo){
		location.href = "board-view.jsp?boardNo=" + boardNo;
	}
</script>