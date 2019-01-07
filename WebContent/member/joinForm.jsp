<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "signup.do">
		<table>
			<tr align = "center">
				<td colspan="2">회원가입 페이지</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>나이</td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
				<input type="radio" name="gender" value = "남" checked>남
				<input type="radio" name="gender" value = "여" >여
				</td>
			</tr>
			<tr>
				<td>이메일주소</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="회원가입"> 
				 <input type="reset" value="다시작성"></td>
			</tr>
		</table>
	</form>
</body>
</html>