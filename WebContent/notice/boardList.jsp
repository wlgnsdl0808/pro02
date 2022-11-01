<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*" %>
<%
	List<Notice> notiList = (ArrayList<Notice>) request.getAttribute("notiList");
%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>공지사항 목록</title>
</head>
<body>
<h2>공지사항 목록</h2>
<table class="tb">
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
		<td><%=vo.getNotiNo() %></td>
		<td><a href="BoardDetailCtrl?notiNo=<%=vo.getNotiNo() %>"><%=vo.getTitle() %></td>
		<td><%=vo.getResData() %></td>
	</tr>
	<% } %>
	</tbody>
</table>
</body>
</html>