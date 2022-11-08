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
	Product vo = (Product) request.getAttribute("pro");
%>
<div class="content container" id="content">
	<h2 class="title">제품 상세보기</h2>
	<table class="table">
		<tbody>
			<tr>
				<th>제품이미지</th>
				<td><img src="<%=request.getContextPath() %>/upload/<%=vo.getProPic() %>" alt="<%=vo.getProName() %>"></td>
			</tr>
			<tr>
				<th>제품번호</th>
				<td><%=vo.getProNo() %></td>
			</tr>
			<tr>
				<th>카테고리 번호</th>
				<td><%=vo.getCateNo() %></td>
			</tr>
			<tr>
				<th>제품명</th>
				<td><%=vo.getProName() %></td>
			</tr>
			<tr>
				<th>제품 설명</th>
				<td><%=vo.getProSpec() %></td>
			</tr>
			<tr>
				<th>제품가격</th>
				<td>
					판매가격 : <strong style="color:red"><%=vo.getOriPrice() %></strong>원 <br>
				</td>
			</tr>
			
		</tbody>
	</table>
	<div class="btn-group">
		<% if(sid!=null && sid.equals("admin")) { %>
		<a href="<%=request.getContextPath() %>/GetProductWearing?proNo=<%=vo.getProNo() %>" class="btn btn-dark">제품 입고</a>
		<a href="<%=request.getContextPath() %>/UpdateProductCtrl?proNo=<%=vo.getProNo() %>" class="btn btn-dark">제품 정보 수정</a>	
		<a href="<%=request.getContextPath() %>/DeleteProductCtrl?proNo=<%=vo.getProNo() %>" class="btn btn-dark">제품 삭제</a>
		<% } %>
		<a href="<%=request.getContextPath() %>/GetProductListCtrl" class="btn btn-dark">목록으로</a>
	</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>