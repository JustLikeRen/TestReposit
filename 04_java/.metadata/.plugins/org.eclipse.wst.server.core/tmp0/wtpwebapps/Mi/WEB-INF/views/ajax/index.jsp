<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<%-- <script src="${cp}/resources/index.js"></script> --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="${cp}/resources/index.css">
</head>

<body>
<script>
$(function() {	// << 이렇게 jquery 3.0 식으로 줄여쓰기. 대신 맨 아래 닫는 괄호들 주의.
	var myDiv = $('#cat');		
	myDiv.hover(function() {  // 요소에 클릭 이벤트 처리		
		myDiv.animate({	
			'width': '300px',
			'height': '200px',
		}, 1000, 'linear');	
			
		myDiv.animate({	
			'opacity': 0.5
		}, 1000, 'swing');	
			
		myDiv.animate({	
			'left': '+=100px',
			'top': '+=100px'
		}, 1000, 'swing');	
			
		myDiv.animate({	
			'font-size': '24px'
		}, 1000, 'swing');	

		myDiv.animate({	
			'opacity': 1
		}, 1000, 'swing');

		myDiv.animate({	
			'width': '100px',
			'height': '100px',
		}, 1000, 'linear');	

		myDiv.animate({	
			'font-size': '18px'
		}, 1000, 'swing');

	});	
});
</script>
	<div id="cat">고양이 </div>
</body>

</html>