<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>

	<title>Q&A</title>
	
	<!-- HEAD INCLUDE -->
	<%@include file="../include/headCommon.jsp"%>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
</head>
<body>

	<!-- MENU BAR -->
	<%@include file="../include/nav.jsp"%>
	

<div id="container">
	
	<!-- Q&A -->
	<section id="readLocation">
		<div class="container">
			<div class="row">

				<div class="col-lg-12 col-md-12 col-12">
					<h2 class="mb-4 pb-2 text-center">Q&A</h2>

					<form role="form" class="contact-form webform" role="form">
						<input type="hidden" id="page" name="page" value="${scri.page}" readonly /> 
						<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}" readonly />
						<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}" readonly /> 
						<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}" readonly />
						<input type="hidden" id="bno" name="bno" value="${read.bno}" readonly />
					</form>
						
						<p>작성일자 : <fmt:formatDate value="${read.regDate}" pattern="yyyy-MM-dd HH:mm:ss" />
						</p>
						<p>제목 : ${read.title}
							<input type="hidden" class="form-control" id="title" name="title" value="${read.title}" disabled>
						</p>
						<p>작성자	: ${read.writer}
						<input type="hidden" class="form-control" id="writer" name="writer" value="${read.writer}" disabled>
						</p>
						<p>
							<textarea class="form-control" rows="15" id="conthiddenent" name="content" disabled>${read.content}</textarea>
						</p>
						
						
					<div class="d-flex">
						<div class="p-2 mr-auto">
							<button type="submit" class="form-control" id="submit-button" name="menus_button">전체글</button>
						</div>
						<div class="p-2">					
							<button type="submit" class="form-control" id="submit-button" name="modify_button">&nbsp수정&nbsp</button>
						</div>
						<div class="p-2">
							<button type="submit" class="form-control" id="submit-button" name="delete_button">&nbsp삭제&nbsp</button>
						</div>
					</div>
					
					<script>
						//해당 폼을 변수에 저장하기
						var formObj = $("form[role='form']");
	
						//전체글 버튼 클릭시
						$("button[name='menus_button']").click(function() {
								self.location = "/board/listSearch?"
										+ "page=${scri.page}"
										+ "&perPageNum=${scri.perPageNum}"
										+ "&searchType=${scri.searchType}"
										+ "&keyword=${scri.keyword}";
						});
	
						//수정 버튼 클릭시					
						$("button[name='modify_button']").click(function() {
								formObj.attr("action", "/board/modify");
								formObj.attr("method", "get");
								formObj.submit();
						});
	
						//삭제 버튼 클릭시
						$("button[name='delete_button']").click(function() {
								formObj.attr("action", "/board/delete");
								formObj.attr("method", "get");
								formObj.submit();
						});
					</script>	
						
				</div>                            
			</div>
		</div>


		<!-- Comment -->
		<%@include file="comment.jsp"%>
		

	</section>

</div>
	

	<!-- FOOTER -->
	<%@include file="../include/footer.jsp"%>

	

</body>
</html>