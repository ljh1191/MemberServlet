<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(function(){
		$("#loginBtn").click(function(){
			if($("#id").val()==""){
				alert("아이디를 입력해주세요.");
				return false;
			}
			if($("#pass").val()==""){
				alert("비밀번호를 입력해주세요.");
				return false;
			}
		$.ajax({
			type : "post",
			url : "login.do",
			data : {"id":$("#id").val(),"pass":$("#pass").val()},
			success : function(data){
				if(data==1||data==2){
					location.href = "list.do";
				}else if(data==0){
					alert("비밀번호가 틀렸습니다.");
					return;
				}else{
					alert("회원이 아닙니다.");
				}
			},
			error : function(e){
				alert("error :"+e);
			}
		});
		});
	});
	function joinFormBtn() {
		location.href = "joinForm.jsp";
	}
</script>
</head>
<body>
	<form id = "frm">
		<table>
			<tr align = "center">
				<td colspan="2">로그인 페이지</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" id = "id" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" id = "pass" name="pass"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" id = "loginBtn" value="로그인"> 
				<input type="button" value="회원가입" onclick="joinFormBtn()"> 
				<input type="reset" value="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>