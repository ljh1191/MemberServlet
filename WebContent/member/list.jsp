<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function logoutBtn(){
	location.href = "logout.do";
}
window.onkeydown = function(){
	var kcode = event.keyCode;
	if(kcode == 8 || kcode == 116 ){
		event.returnValue = false;
	}
}
</script>
</head>
<body>
	<form>
	${name}님 환영합니다.<br>
	<c:if test="${id eq 'admin'}">
	<h2>관리자 페이지</h2>
	
		<table border = "2">
			<tr>
				<th colspan = "5">List</th>
			</tr>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>나이</th>
				<th>성별</th>
				<th>이메일</th>
			</tr>
			<c:forEach items = "${arr }" var = "member">
			<tr>
				<td><a href ="info.do?num=${member.num}">${member.id }</a></td>
				<td>${member.name}</td>
				<td>${member.age}</td>
				<td>${member.gender}</td>
				<td>${member.email}</td>
			</tr>
			</c:forEach>
		</table>
		<input type = "button" value = "로그아웃" onclick = "logoutBtn()">
		</c:if>
		<c:if test="${id ne 'admin'}">
		<h2>회원전용 페이지</h2>
		<input type = "button" value = "로그아웃" onclick = "logoutBtn()">
		</c:if>
	</form>
</body>
</html>