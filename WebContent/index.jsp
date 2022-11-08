<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>메인 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="common.css">
<style>
.in_container { clear:both; width:1400px; margin:0 auto; }
.in_container:after { content:""; display:block; clear:both; }
</style>
</head>
<body>
<%@ include file="header.jsp" %>
<%
	List<Product> proList = (ArrayList<Product>) request.getAttribute("proList");
%>
<div class="bd-example">
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  	<ol class="carousel-indicators">
	    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
	    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
	    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
	    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
	    <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
	    <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
	    <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
	    
	  </ol>
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img src="./img/main1.jpg" class="d-block w-100" alt="메인이미지1">
	    </div>
	    <div class="carousel-item">
	      <img src="./img/main2.jpg" class="d-block w-100" alt="메인이미지2">
	    </div>
	    <div class="carousel-item">
	      <img src="./img/main3.jpg" class="d-block w-100" alt="메인이미지3">
	    </div>
	    <div class="carousel-item">
	      <img src="./img/main4.jpg" class="d-block w-100" alt="메인이미지4">
	    </div>
	    <div class="carousel-item">
	      <img src="./img/main5.jpg" class="d-block w-100" alt="메인이미지5">
	    </div>
	    <div class="carousel-item">
	      <img src="./img/main6.jpg" class="d-block w-100" alt="메인이미지6">
	    </div>
	    <div class="carousel-item">
	      <img src="./img/main7.jpg" class="d-block w-100" alt="메인이미지7">
	    </div>
  	</div>
  <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </button>
</div>
</div>
<div class="container" id="content">
<ul class="row" id="best">
	<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="./img/skin/skin1.jpg" class="card-img-top" alt="더미이미지">
		  <div class="card-body">
		    <h5 class="card-title">화산송이 모공 토너 2X 200mL</h5>
		    <p class="card-text">16,000</p>
		    <a href="#" class="btn btn-dark">제품 상세보기</a>
		  </div>
		</div>
	</li>
	<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="./img/skin/skin2.jpg" class="card-img-top" alt="더미이미지">
		  <div class="card-body">
		    <h5 class="card-title">Card title</h5>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="#" class="btn btn-dark">Go somewhere</a>
		  </div>
		</div>
	</li>
	<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="./img/skin/skin3.jpg" class="card-img-top" alt="더미이미지">
		  <div class="card-body">
		    <h5 class="card-title">Card title</h5>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="#" class="btn btn-dark">Go somewhere</a>
		  </div>
		</div>
	</li>
	<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="./img/skin/skin4.jpg" class="card-img-top" alt="더미이미지">
		  <div class="card-body">
		    <h5 class="card-title">Card title</h5>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="#" class="btn btn-dark">Go somewhere</a>
		  </div>
		</div>
	</li>
	<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="./img/skin/skin5.jpg" class="card-img-top" alt="더미이미지">
		  <div class="card-body">
		    <h5 class="card-title">Card title</h5>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="#" class="btn btn-dark">Go somewhere</a>
		  </div>
		</div>
	</li>
	<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="./img/skin/skin6.jpg" class="card-img-top" alt="더미이미지">
		  <div class="card-body">
		    <h5 class="card-title">Card title</h5>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="#" class="btn btn-dark">Go somewhere</a>
		  </div>
		</div>
	</li>
	<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="./img/skin/skin7.jpg" class="card-img-top" alt="더미이미지">
		  <div class="card-body">
		    <h5 class="card-title">Card title</h5>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="#" class="btn btn-dark">Go somewhere</a>
		  </div>
		</div>
	</li>
	<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="./img/skin/skin8.jpg" class="card-img-top" alt="더미이미지">
		  <div class="card-body">
		    <h5 class="card-title">Card title</h5>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="#" class="btn btn-dark">Go somewhere</a>
		  </div>
		</div>
	</li>
</ul>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>