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
	width: 100%;
}

table {
	display: flex;
	justify-content: space-evenly;
}

tbody {
	border: solid 2px black;
}

tr, th, td {
	margin: 10px;
	border: solid 1px grey;
	border-style: double;
	text-align: center;
}
</style>
</head>
<body>
	<div id="wrap">
		<%

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
						<tbody>
						<tr>
							<th>작업지시번호</th>
							<th>준비</th>
							<th>인쇄</th>
							<th>코팅</th>
							<th>합지</th>
							<th>접합</th>
							<th>포장</th>
							<th>최종공정 일자</th>
							<th>최종공정 시간</th>
						</tr>
						<%
						for (Board board : boards) {
						%>

						<tr>
							<td><%=board.getPnum()%></td>
							
							
							<% if( board.getProductmaterial().equals("작업중") ){ %>
								<td> - </td>
							<%}else{ %>
								<td><%=board.getProductmaterial()%></td>
							<%} %>
							
							
							<% if( board.getProductprint().equals("작업중") ){ %>
								<td> - </td>
							<%}else{ %>
								<td><%=board.getProductprint()%></td>
							<%} %>
							
							
							<% if( board.getProductcoting().equals("작업중") ){ %>
								<td> - </td>
							<%}else{ %>
								<td><%=board.getProductcoting()%></td>
							<%} %>
							
								

						
							<% if( board.getProductjubhab().equals("작업중") ){ %>
								<td> - </td>
							<%}else{ %>
								<td><%=board.getProductjubhab()%></td>
							<%} %>
							
							
							<% if( board.getProducthabji().equals("작업중") ){ %>
								<td> - </td>
							<%}else{ %>
								<td><%=board.getProducthabji()%></td>
							<%} %>
							
							
							<% if( board.getProductwarp().equals("작업중") ){ %>
								<td> - </td>
							<%}else{ %>
								<td><%=board.getProductwarp()%></td>
							<%} %>
							
							
							<%
								// 2019001  -> 2019-01-01
								// 문자열에 문자 삽입
								StringBuffer buffer = new StringBuffer( board.getProductworkday() );
								buffer.insert( 4 , "-" );
								buffer.insert( 7 , "-" );
								
								// 1300 -> 13:00
								StringBuffer buffer2 = new StringBuffer( board.getProductsuccessday() );
								buffer2.insert( 2 , ":" );
								
							%>
							
							
							<td><%= buffer.toString() %></td>
							<td><%= buffer2.toString() %></td>
						</tr>
						<%
						}
						%>
						</tbody>
					</table>
				</div>
			</div>
		</main>
		<footer>
			<%@include file="../footer.jsp"%></footer>

	</div>







</body>
</html>