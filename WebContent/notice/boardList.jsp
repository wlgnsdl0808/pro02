<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>공지사항 목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="common.css">
<style>
.title { padding-top:36px; padding-bottom:20px; }
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<%
	List<Notice> notiList = (ArrayList<Notice>) request.getAttribute("notiList");
%>
<div class="content container" id="content">
	<h2 class="title">공지사항 목록</h2>
	<table class="table">
		<thead>
			<tr>
				<th>연번</th><th>제목</th><th>작성일</th>
			</tr>
		</thead>
		<tbody>
		<% for(int i=0;i<notiList.size();i++){
			Notice vo = notiList.get(i);
		%>
		<tr>
			<td><%=notiList.size()-i %></td>
			<td><a href="GetBoardDetailCtrl?notiNo=<%=vo.getNotiNo() %>"><%=vo.getTitle() %></a></td>
			<td><%=vo.getResDate() %></td>
		</tr>
		<% } %>	
		</tbody>
	</table>
	<% if(sid != null){ %>
		<%if (sid.equals("admin")){ %>
	<div class="btn-group">
		<a href="./notice/insertBoard.jsp" class="btn btn-dark">글 쓰기</a>
	</div>
		<% } %>
	<% } %>
</div>

</body>
</html>