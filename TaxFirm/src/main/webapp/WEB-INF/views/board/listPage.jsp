<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
	<title>Q&A</title>
	
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/aos.css" />" rel="stylesheet">

	<link href="<c:url value="/resources/css/tooplate-gymso-style.css" />" rel="stylesheet">
	 
	<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
	
</head>
<body>

	<nav>
		<%@include file="../include/nav.jsp"%>
	</nav>

	<div id="root">
	
		<header>
			<h1>질문게시판</h1>
		</header>
		
		<hr />
		<nav><h2>글 목록</h2></nav>
		<hr />
		<section id="container">
			
			<a href="/board/write"><h3>글 작성하기</h3></a>
			
			<table>
				<tr>
					<th>글 번호</th>
					<th>글 제목</th>
					<th>작성자</th>
					<th>작성일자</th>
				</tr>

				<!-- 목록 시작 -->
				<c:forEach items="${list}" var="list">
					<tr>
						<td>${list.bno}</td>
						<td><a href="/board/read?bno=${list.bno}">${list.title}</a></td>
						<td>${list.writer}</td>
						<td><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd"/></td>
					</tr>
				</c:forEach>
				<!-- 목록 끝 -->

			</table>


			<div>
				<ul>
					<c:if test="${pageMaker.prev}">
						<li><a	href="listPage${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a></li>
					</c:if>

					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
						<li><a href="listPage${pageMaker.makeQuery(idx)}">${idx}</a></li>
					</c:forEach>

					<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<li><a	href="listPage${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a></li>
					</c:if>
				</ul>
			</div>

		</section>

		<hr />

		<footer>
			<%@include file="../include/footer.jsp"%>
		</footer>

	</div>

</body>
</html>