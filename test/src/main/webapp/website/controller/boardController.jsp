<%@page import="java.util.Set"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="dao.BoardDao"%>
<%@page import="dto.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8"); // 요청시[request] 한글 인코딩

int pnum = Integer.parseInt(request.getParameter("pnum"));
String productmaterial = request.getParameter("productmaterial");

String productprint = request.getParameter("productprint");
String productcoting = request.getParameter("productcoting");
String producthabji = request.getParameter("producthabji");
String productjubhab = request.getParameter("productjubhab");
String productwarp = request.getParameter("productwarp");
String productworkday = request.getParameter("productworkday");
String productsuccessday = request.getParameter("productsuccessday");

if (productmaterial == null || productprint == null || productcoting == null || producthabji == null
		|| productjubhab == null || productwarp == null || productworkday == null || productsuccessday == null) {

	out.print("<script>alert('입력이 안된 사항이 있습니다.');</script>");
	out.println("<script>location.href='../view/board/boardregist.jsp';</script>");
	return;
}


// 객체화
Board board = new Board(pnum, productmaterial, productprint, productcoting, producthabji, productjubhab, productwarp,
		productworkday, productsuccessday);
// DB처리
/* BoardDao.getboarddao().boardwrite(board);

response.sendRedirect("../view/board/boardlist.jsp"); */
boolean result = BoardDao.getboarddao().boardwrite(board);

if (result) {
	out.print("<script>alert('공정이 등록 되었습니다.');</script>");
	out.println("<script>location.href='../view/board/boardlist.jsp';</script>");
} else {
	out.print("<script>alert('입력이 안된 사항이 있습니다.');</script>");
	out.println("<script>location.href='../view/board/boardregist.jsp';</script>");
}
%>

