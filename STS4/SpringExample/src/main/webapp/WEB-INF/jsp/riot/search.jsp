<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello world!</h1>
	
	<c:forEach var="sss" items="${asd.RiotDto}">
		<tr>
			<td>큐타입 :{sss.queueType}</td>
			<td>티어 : {sss.tier} {sss.rank}</td>
			<td>승 {sss.wins} 패:{sss.losses}</td>
		</tr>
	</c:forEach>
	<hr>
	<a href="/">홈으로</a>
	
	
</body>
</html>