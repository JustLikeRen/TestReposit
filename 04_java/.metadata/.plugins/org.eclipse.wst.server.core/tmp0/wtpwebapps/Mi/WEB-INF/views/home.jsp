<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8">
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<a href="/test/login">방명록</a>
<hr>
<a href="/weather/w">날씨</a>
<hr>
<a href="/api/catOne">고양이1</a>
<a href="/api/catTwo">고양이2</a>
<a href="/ajax/testapi">고양이js</a>
<hr>
<!-- <form action="/riot/searchss" method="get"> -->
<!-- 	 <div class="form-group"> -->
<!--       <label for="id">아이디:</label> -->
<!--       <input type="text" class="form-control" id="text" name="searchName" placeholder="Enter"> -->
<!--       <button type="submit" class="btn btn-default">Submit</button> -->
<!--     </div> -->
<!-- </form> -->

<a href="${cp}/riot/searchss">전적검색</a>
</body>
</html>
