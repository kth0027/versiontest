<%@page import="dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
}

#wrap {
	height: 100vh;
}

header {
	height: 10vh;
}

nav {
	height: 10vh;
}

main {
	height: 70vh;
}

footer {
	height: 10vh;
}

h2 {
	text-align: center;
}

.add {
	display: flex;
	justify-content: center;
}

form {
	border: 1px solid black;
	width: 80%;
}

form div {
	margin: 5px 0;
	padding: 10px;
}
</style>
</head>
<body>
<%

/* 	int pnum = BoardDao.getboarddao().getpnum(); */
int pnum = BoardDao.getboarddao().getpnum();
	
	if( pnum == -1 ){
		pnum = 1;
	}else{
		pnum++;
	}

%>
	<div id="wrap">
		<header><%@include file="../header.jsp"%></header>
		<nav>
			<%@include file="../nav.jsp"%></nav>
		<main>
			<div id="boardregister">
				<h2>공정등록페이지</h2>
				<div class="add">
					<form action="../../controller/boardController.jsp" method="post" >

						<div>
							<label>작업지시번호</label> <input type="text" maxlength="8"
								name="pnum" value="<%=pnum %>" /> <span>예)20190001</span>
						</div>
				
						<div></div>
						<div>
							<label for=>재료준비</label> 완료 <input type="radio"
								name="productmaterial" value="완료"  /> 작업중 <input
								type="radio" name="productmaterial" value="작업중" />
						</div>
						<div>
							<label for=>인쇄공정</label> 완료 <input type="radio"
								name="productprint" value="완료"  /> 작업중 <input
								type="radio" name="productprint" value="작업중" />
						</div>
						<div>
							<label for=>코팅공정</label> 완료 <input type="radio"
								name="productcoting" value="완료"  /> 작업중 <input
								type="radio" name="productcoting" value="작업중" />
						</div>
						<div>
							<label for=>합지공정</label> 완료 <input type="radio"
								name="producthabji" value="완료"  /> 작업중 <input
								type="radio" name="producthabji" value="작업중" />
						</div>
						<div>
							<label for=>접합공정</label> 완료 <input type="radio"
								name="productjubhab" value="완료"  /> 작업중 <input
								type="radio" name="productjubhab" value="작업중" />
						</div>
						<div>
							<label for=>포장공정</label> 완료 <input type="radio"
								name="productwarp" value="완료"  /> 작업중 <input
								type="radio" name="productwarp" value="작업중" />
						</div>
						<div>
							<label>최종작업일자</label> <input type="text" maxlength="8"
								name="productworkday" /> <span>예)20190001</span>
						</div>
						<div>
							<label for=>작업시간</label> <input type="text"
								name="productsuccessday" /> <span>예)1300</span>
						</div>
						<div class="submitbtn">
							<input type="submit" value="공정등록"/> <input type="reset" value="다시쓰기" />
						</div>
					</form>
				</div>
			</div>
		</main>
		<footer>
			<%@include file="../footer.jsp"%>
		</footer>
	</div>


<!-- 	<script type="text/javascript">
		function func_confirm() {
			alert("등록되었습니다.");
		}
	</script> -->
</body>
</html>