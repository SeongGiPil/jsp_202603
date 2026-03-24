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
        text-align:center;
       }
       th{
    		width:50px;   
	      }
	   td{
	   		width:300px;
	   }
	   input[type='text'] {
	   		
	   }
        
        body{
        margin:30px;
    }
<body>
	<%@ include file="../../db.jsp" %>
	<%
		String boardNo=request.getParameter("boardNo");
	String sql="SELECT * FROM TBL_BOARD WHERE BOARDNDNO="+boardNo;
	
	
	int result=stmt.executeUpdate(sql);
	
	
	}
	
	%>
	
	int result=stmt.executeUpdate(sql);
	
	
	<form action="board-add-result.jsp" name="form">
		<table>
		<tr>
			<th>종류</th>	
			<td>
				<label><input name="kind" value="1"type="radio"<%=kind.equals("1")? "checked":""%>>공지사항</label>
				<label><input name="kind" value="2"type="radio"<%=kind.equals("2")? "checked":""%>>자유게시판</label>
				<label><input name="kind" value="3"type="radio"<%=kind.equals("3")? "checked":""%>>문의게시판</label>
			</td>
			
		</tr>
		<tr>
			<th>제목</th>
			
			<td><input type="text"name="title"value="<%=rs.getString("TITLE")%>>"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><text area rows="10" cols="40" name="contents"></textarea></td>
		</tr>
		</table>
		<div>
		<input type="button" value="수정" onclick="fnAdd()">
		<input type="reset" value="초기화">
		<a href= board-list.jsp"><input type="button" value="되돌아가기">
		</div>
	</form>
	<%
	out.println("실패");
	%>
</body>
</html>
<script>
	function fnAdd(){
		let form=document.form;
		if(form.title.value.length==0|| form.contents.value.length==0){
		alert("제목및 내용입력하세요")
		
		
		}
		}
</script>
	