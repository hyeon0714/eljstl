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
	
	<h3>el의 우선순위</h3>
	<%
		pageContext.setAttribute("name", "page.Scope.name");
		request.setAttribute("name", "request.Scope.name");
		session.setAttribute("name", "session.Scope.name");
		application.setAttribute("name", "application.Scope.name");
	%><!-- 내부에서부터 순서대로 우선순위가 정해진다 -->
	
	${pageScope.name }<br>
	${requestScope.name }<br>
	${sessionScope.name }<br>
	${applicationScope.name }<br>
	<br><br>
	${name}
</body>
</html>