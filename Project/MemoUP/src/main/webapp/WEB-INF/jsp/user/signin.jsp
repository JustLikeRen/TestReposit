<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
   	<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="/static/css/style.css" type="text/css">

</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp"/>
		<nav></nav>
		<section class="content d-flex justify-content-center">
			<div class="text-center">
				<h2>로그인</h2>
				<input type="text" placeholder="아이디" id="idInput" class="form-control mt-3">
				<input type="password" placeholder="비밀번호" id="passwordInput" class="form-control mt-3">
				<button type="button" id="loginBtn" class="btn btn-primary btn-block mt-3">로그인</button>
				<div class="text-center mt-2">
					<a href="/user/signup/view">회원가입</a>
				</div>
			</div>
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
	</div>
	<script src="/static/js/valueCheck.js"></script>
	<script>
		$(document).ready(function() {
			$("#loginBtn").on("click", function() {
				let id = $("#idInput").val();
				let password = $("#passwordInput").val();
				
				if(!valueCheck(id, "아이디")) {
					e.preventDefault();
					return;
				}
				
				if(!valueCheck(password, "비밀번호")) {
					e.preventDefault();
					return;
				}
				
				$.ajax({
					type:"post"
					, url:"/user/signin"
					, data:{"loginId":id, "password":password}
					, success:function(data) {
						if(data.result == "success") {
							location.href ="/post/list/view";
						} else {
							alert("아이디 또는 비밀번호가 일치하지 않습니다.");
						}
					}
					, error:function() {
						alert("로그인 서버 에러");
					}
				});
			});
		});
	</script>
</body>
</html>