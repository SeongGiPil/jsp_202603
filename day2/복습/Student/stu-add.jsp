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
	th {
		width : 50px;
	}
	td {
		width : 300px;
	}
	input[type='text'] {
		width : 280px;
	}
</style>
</head>
<body>
	<form action="stu-add-result.jsp" name="form">
		<table>
			<tr>
				<th>학번</th>
				<td><input type="text" name="stuinfo"></td>
			</tr>
			
			
			<tr>
				<th>이름</th>
				<td><input type="text" name="stuinfo"></td>
			</tr>
			
			<tr>
				<th>학과</th>
				<td><input type="text" name="stuinfo"></td>
			</tr>
			
			<tr>
				<th>학년</th>
				<td><input type="text" name="stuinfo"></td>
			</tr>
			
			
		
		</table>
		<div>
			<input type="button" value="작성" onclick="fnAdd()">
			<input type="reset" value="초기화">
			<a href="board-list.jsp"><input type="button" value="되돌아가기" ></a>
		</div>
	</form>
</body>
</html>
<script>
	function fnAdd(){
		let form = document.form;
		if(form.stuinfo.value.length == 0){
			alert("추가할 학생의 정보를 입력해주세요.");
			return;
		}
					
		form.submit();
	}
</script>