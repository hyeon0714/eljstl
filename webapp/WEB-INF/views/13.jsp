<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el-jstl</h1>
	
	<h2>el</h2>
	
	<h3>반복문</h3>
	
	<h4>스크립틀릿 for문</h4>
	<table border = '1'>
		<thead>
			<tr>
				<td>번호</td>
				<td>이름</td>
				<td>이메일</td>
				<td>비밀번호</td>
				<td>성별</td>
			</tr>
		</thead>
		
		<%@ page import = "com.javaex.vo.UserVo" %>
		<%@ page import = "java.util.List" %>
		
		<% List<UserVo> userList = (List<UserVo>)request.getAttribute("userList"); %>
		
		<%
			for(int i=0; i<userList.size(); i++) {
		%>
		<tbody>
			<tr>
				<td><%=userList.get(i).getNo() %></td>
				<td><%=userList.get(i).getName() %></td>
				<td><%=userList.get(i).getEmail() %></td>
				<td><%=userList.get(i).getPassword() %></td>
				<td><%=userList.get(i).getGender() %></td>
			</tr>
		</tbody>
		<%} %>
	</table>
	
	
	<h4>스크립틀릿 향상된 for문</h4>
	<table border = '1'>
		<thead>
			<tr>
				<td>번호</td>
				<td>이름</td>
				<td>이메일</td>
				<td>비밀번호</td>
				<td>성별</td>
			</tr>
		</thead>
		

		
		<%
			for(UserVo vo : userList){
		%>


		<tbody>
			<tr>
				<td><%=vo.getNo() %></td>
				<td><%=vo.getName() %></td>
				<td><%=vo.getEmail() %></td>
				<td><%=vo.getPassword() %></td>
				<td><%=vo.getGender() %></td>
			</tr>
		</tbody>
		<%
			}
		%>
	</table>
	
	<h4>jstl foreach문</h4>
	
	<table border = '1'>
		<thead>
			<tr>
				<td>번호</td>
				<td>이름</td>
				<td>이메일</td>
				<td>비밀번호</td>
				<td>성별</td>
			</tr>
		</thead>
		
		<c:forEach items="${requestScope.userList }" var="userVo">
		<tbody>
			<tr>
				<td>${userVo.no }</td>
				<td>${userVo.name }</td>
				<td>${userVo.email }</td>
				<td>${userVo.password }</td>
				<td>${userVo.gender }</td>
			</tr>
		</tbody>
		</c:forEach>
	</table>
	
	<h4>jstl foreach문(begin end)</h4>
	<!-- 부분출력 -->
	<table border = '1'>
		<thead>
			<tr>
				<td>번호</td>
				<td>이름</td>
				<td>이메일</td>
				<td>비밀번호</td>
				<td>성별</td>
				<td>status.index</td>
				<td>status.count</td>
			</tr>
		</thead>
		
		<c:forEach items="${requestScope.userList }" var="userVo"  varStatus="status"><!-- begin은 시작번호, end는 끝낼 번호, step은 건너뛸 번호 -->
		<tbody>
			<tr>
				<td>${userVo.no }</td>
				<td>${userVo.name }</td>
				<td>${userVo.email }</td>
				<td>${userVo.password }</td>
				<td>${userVo.gender }</td>
				<td>${status.index }</td>
				<td>${status.count }</td>
			</tr>
		</tbody>
		</c:forEach>
	</table>	

</body>
</html>