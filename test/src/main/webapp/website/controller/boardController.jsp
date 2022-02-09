<%@page import="java.util.Set"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="dao.BoardDao"%>
<%@page import="dto.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%

//* 서버 실제 경로
String folderpath = request.getSession().getServletContext().getRealPath("website/upload");

request.setCharacterEncoding("utf-8"); // 요청시[request] 한글 인코딩

MultipartRequest multi = new MultipartRequest(request, folderpath, 1024 * 1024, "UTF-8", new DefaultFileRenamePolicy());

int pnum = Integer.parseInt(request.getParameter("pnum"));
//request > multi 전환

String productnumber = multi.getParameter("productnumber");
String productcode = multi.getParameter("productcode");
String productname = multi.getParameter("productname");
String productmaterial = multi.getParameter("productmaterial");
String productprint = multi.getParameter("productprint");
String productcoting = multi.getParameter("productcoting");
String producthabji = multi.getParameter("producthabji");
String productjubhab = multi.getParameter("productjubhab");
String productwarp = multi.getParameter("productwarp");
String productworkday = multi.getParameter("productworkday");
String productsuccessday = multi.getParameter("productsuccessday");


// 객체화
Board board = new Board (productnumber ,productcode , productname , productmaterial , productprint, productcoting, producthabji, productjubhab , productwarp, productworkday,  productsuccessday );
// DB처리
BoardDao.getboarddao().boardwrite(board);

response.sendRedirect("../view/board/boardlist.jsp");
%>

