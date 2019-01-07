<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function ListBtn(){
	location.href = "list.do";
}
function updateBtn(){
	frm.action = "update.do";
	frm.method = "post";
	frm.submit();
}
function delBtn(){
	if(confirm("정말 삭제하시겠습니까?")){
		location.href = "del.do?num=${dto.num}"
	}
}
</script>
</head>
<body>
<form id = "frm">
	<table border="2">
		<tr>
			<th colspan="2">상세정보</th>
		</tr>
		<tr>
			<th>번호</th>
			<td><input type="text" id="num" name="num" value="${dto.num }"
				readonly="readonly"></td>
		</tr>
		<tr>
			<th>아이디</th>
			<td><input type="text" id="id" name="id" value="${dto.id }"></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><input type="text" id="name" name="name"
				value="${dto.name }"></td>
		</tr>
		<tr>
			<th>나이</th>
			<td><input type="text" id="age" name="age" value="${dto.age }"></td>
		</tr>
		<tr>
			<th>성별</th>
			<td>
			<c:if test="${dto.gender eq '남'}">
			<input type="radio"  name="gender" checked >남
			<input type="radio"  name="gender" >여
			</c:if>
			<c:if test="${dto.gender eq '여'}">
			<input type="radio"  name="gender" >남
			<input type="radio"  name="gender"  checked>여
			</c:if>
			</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><input type="text" id="email" name="email" value="${dto.email }"></td>
		</tr>
		<tr align = "center">
			<td colspan = "2">
			<input type="button" value="수정" onclick = "updateBtn()">
			<input type="button" value="삭제" onclick = "delBtn()">
			<input type="button" value="List" onclick = "ListBtn()">
			</td>
		</tr>
	</table>
</form>
</body>
</html>