<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
  table, th, tr, td {
        border:1px solid black;
        padding:5px 10px;
        border-collapse:collapse;
       
       }
       th{
    		width:50px;   
    		backgroundcolor:#eee;
	      }
	   td{
	   		width:150px;
	   }
	   input[type='text'] {
	   		
	   }
	   .contents{
	   	height:200px;
	   }
	 .btnarea{
	 	margin-top:5px;
	 }
        
        body{
        margin:30px;
    }
    .Line{
    	margin:30px 0px;
    	border-bottom:1px solid #ddd;
    }
    
    .comment-area{
    	margin-bottom:
    }
    </style>
<body>
<form action=" "name="form">
<table>
<form action=" " name="form">
<%
	String sessionId=(String)session.getAttribute("sessionId");
	String sessionRole = (String) session.getAttribute("sessionRole");
	String boardNo=request.getParameter("boardNo");

%>
	<input name="boardNo" value="<%= boardNo %>" hidden>
	<table>
	<%
	String sql ="UPDATE TBL_BOARD SET CNT = CNT + 1 "
			+ "WHERE BOARDNO = " + boardNo;
	stmt.executeUpdate(sql);

		sql = "SELECT * FROM TBL_BOARD WHERE BOARDNO = " + boardNo
				+"ORDER BY CDATE ASC"
	ResultSet rs = stmt.executeQuery(sql);
	if(rs.next()){	
		userId=rs.getString("USERID");
%>
	<tr>
			<th>제목</th>
			<td colspan="3"><%= rs.getString("TITLE") %></td>
	
	</tr>
	<tr>
		<th>작성자</th>
		<td><%= rs.getString("USERID") %></td>
		<td><%= rs.getString("CNT") %></td>
		</tr>
		<tr>
			<th>작성일</th>
			<td colspan="3"><%= rs.getString("CDATETIME") %></td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="3" class="contents"><%= rs.getString("CONTENTS") %></td>
		</tr>
	<% 
	}else{
		out.println("게시글이 존재하지않습니다.");
	}
	%>
</table>
<div class="btn-area">
<%
	if(userId.equals(sessionId)|| sessionRole.equals("A")){
%>
	<input type="button" value="수정" onclick="fnEdit()">
	<input type="button" value="삭제" onclick="fnRemove()">
	
	
<% 		
	}
%>
	<input type="button" value="수정" onclick="fnEdit()">
	<input type="button" value="삭제" onclick="fnRemove()">
	<input type="button" value="되돌아가기">
	
	

</div>
<div class="Line">
</div>
<div class="comment-area">
<table>
<%
	sql="SELECT * FROM TBL_COMMENT WHERE BOARDNO="+boardNo;
	rs=stmt.executeQuery(sql);
	while(rs.next()){
%>		
	<tr>
		<th><%=rs.getString("USERID") %></th>
		<td><%=rs.getString("CONTENTS") %></td>
	</tr>
<% 	
	}
%>
</table>
	<table>
	<th>댓글등록</th>
	<td style="width:100px;"><textarea cols="70"rows="5"></textarea></td>
	<td style="width:50px;"><input type="button" value="등록"></td>
		<input type="button" value="등록"
	</table>	
</div>	
</body>
</form>

</html>
<script>
	function fnEdit(){
		let form=document.form;
		form.action="board-edit.jsp";
		form.submit();
	}
	
	function fnRemove(){
		console.log(<%=boardNo %>);
		location.href="board-remove.jsp?boardNo=" + <%=boardNo %>;
		/* let form = document.form;
		form.action = "board-remove.jsp";
		form.submit(); */
		
	}
	function fnCommantAdd(){
		let form=document.form;
		form.action="board-comment-add.jsp";
		form.submit();
	}
	
</script>