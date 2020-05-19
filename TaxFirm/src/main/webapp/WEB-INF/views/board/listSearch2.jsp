<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>

	<title>Q&A</title>

	<!-- HEAD INCLUDE -->
	<%@include file="../include/headCommon.jsp"%>

<style>

#mainlocation{
	margin-top:150px;
} 

#headeralign{
	text-align:center;
	margin-bottom:50px;
}

#qnaalign th, td {
	text-align:center;
	vertical-align:middle;
}

#theadnames tr th{
	background-color:#F2F2F2;
	border-top:2px solid #A9A9F5;
}

</style>

</head>

<body>

	<!-- MENU BAR -->
	<%@include file="../include/nav.jsp"%>
		
	 
	 
	<section id="mainlocation">
		
		<div class="container">
		
			<h2 id="headeralign">Q&A</h2>		
			
			<table class="table table-hover" id="qnaalign">
				<thead id="theadnames">
					<tr>
						<th scope="col">글 번호</th>
						<th scope="col">글 제목</th>
						<th scope="col">작성자</th>
						<th scope="col">작성일자</th>
					</tr>
				</thead>
				
				<!-- 목록 시작 -->
				<tbody>
					<c:forEach items="${list}" var="list">
						<tr>
							<td>${list.bno}</td>
							<td><a href="/board/read?bno=${list.bno}&page=${scri.page}&perPageNum=${scri.perPageNum}&searchType=${scri.searchType}&keyword=${scri.keyword}">
									${list.title}</a></td>
							<td>${list.writer}</td>
							<td><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd"/></td>
						</tr>
					</c:forEach>
				</tbody>	
				<!-- 목록 끝 -->
			</table>		
						
			<div class="row">
				<div class="col-md-2 offset-md-1 col-9">
					<a href="/board/listSearch">
						<button type="button" class="btn btn-outline-secondary btn-lg">전체글</button>
					</a>
				</div>
				
				<c:choose>
					<c:when test="${member != null}">		
						<div class="col-md-2 offset-md-7 col-3">
							<a href="/board/write">
								<button type="button" class="btn btn-outline-secondary btn-lg">글쓰기</button>
							</a>					
						</div>
					</c:when>
					<c:otherwise>
						<div class="col-md-2 offset-md-7 col-3" id="alreadyLogged">
							글을 작성하시려면<br>로그인을 해주세요.
						</div>
					</c:otherwise>
				</c:choose>
				
			</div>
			
			<div>
				
				<ul class="pagination justify-content-center" style="margin:20px 0">
					<c:if test="${pageMaker.prev}">
						<li class="page-item">
							<a class="page-link" href="listSearch${pageMaker.makeSearch(pageMaker.startPage - 1)}">≪</a>
						</li>
					</c:if>

					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
						<%-- <li class="page-item" 
							<c:out value="${pageMaker.cri.page==idx?'class=active':''}"/>> --%>
						<li class="page-item">
							<a class="page-link" href="listSearch${pageMaker.makeSearch(idx)}">${idx}</a>
						</li>
					</c:forEach>

					<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<li class="page-item">
							<a class="page-link" href="listSearch${pageMaker.makeSearch(pageMaker.endPage + 1)}">≫</a>
						</li>
					</c:if>
				</ul>

				<script>
				$(function(){
					$('.page-item').click(function() {
						$(this).addClass("active");
						
					});
				});		
				</script>
				
			</div>
			
			<!-- 검색창 -->
			<div class="container mt-3 col-md-5 col-10">		
				
				<form class="form-inline">
							
						<div class="input-group-prepend mb-4">
						
							<select name="searchType" class="form-control col-3">
								<option value="title" <c:out value="${scri.searchType eq 'title' ? 'selected' : ''}"/>>제목</option>
								<option value="content" <c:out value="${scri.searchType eq 'content' ? 'selected' : ''}"/>>내용</option>
								<option value="writer" <c:out value="${scri.searchType eq 'writer' ? 'selected' : ''}"/>>작성자</option>
								<option value="titleOrContent"<c:out value="${scri.searchType eq 'titleOrContent' ? 'selected' : ''}"/>>제목+내용</option>
							</select>
							
							<input type="text" name="keyword" id="keywordInput" value="${scri.keyword}"  
								   class="form-control col-7" placeholder="검색어를 입력하세요."/>
										
							<button class="btn btn-outline-secondary form-control col-3">검색</button>
		
						</div>
		
				</form>
				
				<script>
				$(function(){
					$('#searchBtn').click(function() {
						self.location="listSearch${pageMaker.makeSearch(1)}"
											 +"&searchType="+$("select option:selected").val()
											 +"&keyword="+encodeURIComponent($('#keywordInput').val());
					});
					
				});		
				</script>
				
			</div>

		</div>
		
	</section>
		
	<!-- FOOTER -->
	<%@include file="../include/footer.jsp"%>


		

</body>
</html>