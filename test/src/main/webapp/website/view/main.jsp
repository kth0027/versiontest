<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/test/website/css/main.css" />
<style>
* {
margin:0;
padding:0;
}

#main h2 {
	text-align: center;
}

#main .maintext {
padding : 3rem;
font-weight: bold;
height: 71vh;
}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<%@include file="nav.jsp"%>
	<div id="main">
		<h2>과정평가형 자격 CBQ</h2>
		<div class="maintext">
			<div>국가직무능력표준(NCS:National Competency Standards)으로 설계되 교육·훈련과정을
				체계적으로 이수하고 내·외부 평가를 거쳐 취득하는 국가기술자격입니다.</div>
			<p>산업현장 중심의 교육평가로 더 커지는 능력!</p>
			<p>알고 있는 것에 할 수 있는 것을 더하는</p>
			<p>과정평가형 자격은</p>
			<p>현장 중심형 인재육성을 지원합니다.</p>
		</div>
	</div>
	<%@include file="footer.jsp"%>

</body>
</html>