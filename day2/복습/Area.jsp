<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="area.jsp" name="form">
		<%@ include file="../db.jsp"%>
		시/도: <select name="paramSi" onchange="fnSelectSi()">
			<option value=" ">::선택::</option>
			<%
			String paramSi=request.getParameter("paramSi");
			String sql="SELECT DISTINCT SI FROM AREA";
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				String si=rs.getString("SI");
				String selected=si.equals(paramSi)? "selected":" ";
		%>
			<option value="<%= si %>" <%=selected %>><%=si %></option>
			<%	
			}
		%>


		</select> 시/도: 
	</form>
</body>
</html>
<script>
	function fnSelectSi() {
		document.form.submit();
	}
</script>