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
	input[readOnly]{
		background:#ccc;
		border-color:none;
	}
</style>
</head>
<body>
	<form action="student-add-result.jsp" name="form">
		
			<div>
				<label>학번:</label><input name="stuNo"></label>
				<input type="button" onclick="fnCheck()" value="중복체크">
			</div>
			
			
			<div>
				
				<label>이름:<input  name="stuName"></label>
			</div>
			
			<div>
			
				<label>학과:<input name="stuDept"></label>
			</div>
			
			<div>
			
				<label>학년:
				<select name="stuGrade">
					<option value="1"> 1 </option>
					<option value="2"> 2 </option>
					<option value="3"> 3 </option>
				</select>
				</label>

		<div>
			<input type="button" value="추가" onclick="fnAdd()">
			
		</div>
	</form>
</body>
</html>
<script>
	let addflg="N";
	function fnAdd(){
		let form=document.form;
		if(addflg=="N"){
			alert("중복체크 후 추가해주세요")
			return;
		}
		form.submit();
	
	}
	function fnCheck(){
		/* student-check.jsp  */
		let form=document.form;
		let stuNo=form.stuNo.value;
		if(stuNo.length !=8){
			alert("학번은 8글자!");
			return;
		}
		
		window.open("student-check.jsp?stuNo="+stuNo,"check","width=400,height=400");  /*팝업띄우기  */
	}
	function fnReturn(flg){
		let form=document.form;
		
		if(flg=="Y"){
			form.stuNo.readOnly=true;
			addflg=flg;
			
		}
		
	}
</script>