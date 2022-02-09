<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
nav {
	height: 10vh;
	line-height: 10vh;
	background-color: blue;
	color: white;
}

a {
	color: white;
	text-decoration: none;
}

ul {
	list-style: none;
	text-align: center;
	display: flex;
	justify-content: center;
}

ul li {
	margin: 0 2rem;
	color: white;
}

ul>li:hover {
	background-color: yellow;
}

li a {
	color: white;
}

ul>li:hover a {
	color: black;
}
</style>
</head>
<body>
	<nav>
		<ul>
			<li><a href="">제픔조회</a></li>
			<li><a href="">작업지시서조회</a></li>
			<li><a href="/test/website/view/board/boardregist.jsp">작업공정등록</a></li>
			<li><a href="/test/website/view/board/boardlist.jsp">작업공정조회</a></li>
			<li><a href="/test/website/view/main.jsp">홈으로</a></li>
		</ul>
	</nav>
</body>
</html>