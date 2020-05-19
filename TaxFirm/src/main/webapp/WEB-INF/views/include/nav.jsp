<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
				<li class="nav-item">
					<a href="/" class="nav-link smoothScroll">Home</a>
				</li>

				<li class="nav-item">
					<a href="#" class="nav-link">About us</a>
				</li>

				<li class="nav-item">
					<a href="#" class="nav-link">Services</a>
				</li>

				<li class="nav-item">
					<a href="/board/listSearch" class="nav-link">Q&A</a>
				</li>

				<li class="nav-item">
					<a href="#contact" class="nav-link smoothScroll">오시는길</a>
				</li>
			</ul>
			
			<!-- LOGIN CASES -->
			<c:if test="${member == null}">
			
				<%@include file="beforeLogin.jsp"%>	
					
			</c:if>
			<c:if test="${member != null}">
			
				<%@include file="afterLogin.jsp"%>
			
			</c:if>
			<c:if test="${msg == false}">
			
				<script type="text/javascript">
					alert("아이디 또는 비밀번호를 확인해 주세요!");
				</script>		
				
			</c:if>
			
			
		</div>
		
	</div>
	
</nav>
	
	<c:if test="${member == null}">
		<!-- SIGNIN, SIGNUP FORM -->
		<%@include file="signform.jsp"%>
	</c:if>


