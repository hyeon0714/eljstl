<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el-jstl</h1>
	
	<h2>el</h2>
	
	<h3>파라미터 값 가져오기</h3>
	
	<h4>스크립틀릿</h4>
	<%
		String id = request.getParameter("id");
		String pw= request.getParameter("pw");
		String name = request.getParameter("name");
		int nu1 = Integer.parseInt(request.getParameter("num1"));
		int nu2 = Integer.parseInt(request.getParameter("num2"));
	%>  
	id = <%=id %><br>
	pw = <%=pw %><br>
	name = <%=name %><br>
	nu1 = <%=nu1 %><br>
	nu2 = <%=nu2 %><br>
	<br>
	
	
	<h4>el 표현식</h4>
	id = ${param.id}<br>
	pw = ${param.pw}<br>
	name = ${param.name }<br>
	nu1 = ${param.num1}<br>
	nu2 = ${param.num2}<br>
	<!-- 파라미터의 값 꺼내오는법 -->
	<br><br>
	
	
	
	
</body>
</html>