<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
	     
<head>

	 <!-- SCRIPTS -->
     <script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
     <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
     <script src="<c:url value="/resources/js/aos.js" />"></script>
     <script src="<c:url value="/resources/js/smoothscroll.js" />"></script>
     <script src="<c:url value="/resources/js/custom.js" />"></script>
	
	 <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
	 <link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
	 <link href="<c:url value="/resources/css/aos.css" />" rel="stylesheet">

     <!-- MAIN CSS -->
	 <link href="<c:url value="/resources/css/tooplate-gymso-style.css" />" rel="stylesheet">

</head>

<!-- MENU BAR -->
<nav class="navbar navbar-expand-lg fixed-top">
	<div class="container">

		<a class="navbar-brand" href="/">세무법인 윤</a>

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ml-lg-auto">
				<li class="nav-item"><a href="#home"
					class="nav-link smoothScroll">Home</a></li>

				<li class="nav-item"><a href="/board/listSearch" class="nav-link">About us</a>
				</li>

				<li class="nav-item"><a href="/board/listPage" class="nav-link">Services</a>
				</li>

				<li class="nav-item"><a href="/board/list" class="nav-link">Q&A</a>
				</li>

				<li class="nav-item"><a href="#contact"
					class="nav-link smoothScroll">오시는길</a></li>
			</ul>

			<ul class="col-lg-1 mr-lg-3">
				<li><a href="#" class="btn custom-btn bg-color"
					data-aos="fade-up" data-aos-delay="300" data-toggle="modal"
					data-target="#">로그인</a></li>
			</ul>
			<ul class="col-lg-1 ml-lg-4">
				<li><a href="#" class="btn custom-btn bg-color"
					data-aos="fade-up" data-aos-delay="300" data-toggle="modal"
					data-target="#membershipForm">회원가입</a></li>
			</ul>
		</div>

	</div>
</nav>