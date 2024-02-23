<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<h1>el-jstl</h1>
	
	<h2>el</h2>
	
	<h3>request.session</h3>
	
	<h4>스크립틀릿 사용</h4>
	<%@ page import = "com.javaex.vo.UserVo" %>
	<%
		UserVo authUser = (UserVo)session.getAttribute("authUser");
	%>

	<div id="header" class="clearfix">
		<%
		if(authUser != null){
		%>
		<ul>
			<li><%=authUser.getName() %> 님 안녕하세요^^</li>
			<li><a href="/mysite3/user?action=logout" class="btn_s">로그아웃</a></li>
			<li><a href="/mysite3/user?action=modifyForm" class="btn_s">회원정보수정</a></li>
		</ul>		
		<%
		}else {
		%>
		<ul>
			<li><a href="/mysite3/user?action=loginForm" class="btn_s">로그인</a></li>
			<li><a href="/mysite3/user?action=joinForm" class="btn_s">회원가입</a></li>
		</ul>			
		
		<%
		}
		%>
		


	</div>
	<!-- //header -->

	
	<br>
	<br>
	
	<h4>el 표현식</h4>

	<div id="header" class="clearfix">
		<%
		if(authUser != null){
		%>
		<ul>
			<li>${sessionScope.authUser.name } 님 안녕하세요^^</li>
			<li><a href="/mysite3/user?action=logout" class="btn_s">로그아웃</a></li>
			<li><a href="/mysite3/user?action=modifyForm" class="btn_s">회원정보수정</a></li>
		</ul>		
		<%
		}else {
		%>
		<ul>
			<li><a href="/mysite3/user?action=loginForm" class="btn_s">로그인</a></li>
			<li><a href="/mysite3/user?action=joinForm" class="btn_s">회원가입</a></li>
		</ul>			
		
		<%
		}
		%>
	</div>
	<!-- //header -->

	<h4>el(scope생략) 표현식</h4>

	<div id="header" class="clearfix">
		<%
		if(authUser != null){
		%>
		<ul>
			<li>${authUser.name } 님 안녕하세요^^</li>
			<li><a href="/mysite3/user?action=logout" class="btn_s">로그아웃</a></li>
			<li><a href="/mysite3/user?action=modifyForm" class="btn_s">회원정보수정</a></li>
		</ul>		
		<%
		}else {
		%>
		<ul>
			<li><a href="/mysite3/user?action=loginForm" class="btn_s">로그인</a></li>
			<li><a href="/mysite3/user?action=joinForm" class="btn_s">회원가입</a></li>
		</ul>			
		
		<%
		}
		%>
	</div>


</body>
</html>