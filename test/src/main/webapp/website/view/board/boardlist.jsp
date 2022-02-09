<%@page import="dao.BoardDao"%>
<%@page import="dto.Board"%>
<%@page import="java.util.ArrayList"%>


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

#boardlist {
	width: 100%;
	display: flex;
	justify-content: center;
}

.list {
	width: 80%;
}

table {
	display: flex;
	justify-content: space-evenly;
	border: solid 2px black;
}

tr, th, td {
	margin: 10px;
	border: solid 1px grey;
	border-style: double;
}
</style>
</head>
<body>
	<div id="wrap">
		<%
		/* 	int pnum = Integer.parseInt(request.getParameter("pnum")); */
		ArrayList<Board> boards = BoardDao.getboarddao().boardlist();
		%>
		<header>
			<%@include file="../header.jsp"%></header>
		<nav>
			<%@include file="../nav.jsp"%>
		</nav>
		<main>
			<h2>작업공정조회</h2>
			<div id="boardlist">

				<div class="list">
					<table>
						<tr>
							<th>번호</th>
							<th>작업지시번호</th>
							<th>제품코드</th>
							<th>제품명</th>
							<th>준비완료</th>
							<th>인쇄</th>
							<th>코팅</th>
							<th>합지</th>
							<th>접합</th>
							<th>포장</th>
							<th>최종공정 일자</th>
							<th>최종공정 시간</th>
							<th>작성일</th>
						</tr>
						<%
						for (Board board : boards) {
						%>

						<tr>
							<td><%=board.getPnum()%></td>
							<td><%=board.getProductnumber()%></td>
							<td><%=board.getProductcode()%></td>
							<td><%=board.getProductname()%></td>
							<td><%=board.getProductmaterial()%></td>
							<td><%=board.getProductprint()%></td>
							<td><%=board.getProductcoting()%></td>
							<td><%=board.getProducthabji()%></td>
							<td><%=board.getProductjubhab()%></td>
							<td><%=board.getProductwarp()%></td>
							<td><%=board.getProductworkday()%></td>
							<td><%=board.getProductsuccessday()%></td>
							<td><%=board.getProductdate()%></td>
						</tr>
						<%
						}
						%>
					</table>
				</div>
			</div>
		</main>
		<footer>
			<%@include file="../footer.jsp"%></footer>

	</div>







</body>
</html>