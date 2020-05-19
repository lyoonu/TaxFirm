<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>

	<title>삭제하기</title>

	<!-- HEAD INCLUDE -->
	<%@include file="../include/headCommon.jsp"%>
	
</head>
<body>

	<!-- MENU BAR -->
	<%@include file="../include/nav.jsp"%>

<div id="container">

	<!-- 댓글 삭제 확인창 -->
	<section id="deleteConfirm">
		<div class="container">
			<div class="row">

				<div class="col-lg-12 col-md-12 col-12">
					<h2 class="mb-4 pb-2 text-center">정말로 삭제하시겠습니까?</h2>

					<form role="form" class="contact-form webform" method="post" autocomplete="off" role="form">
						<input type="hidden" id="bno" name="bno" value="${readComment.bno}" readonly="readonly" /> 
						<input type="hidden" id="rno" name="rno" value="${readComment.rno}" readonly="readonly" /> 
						<input type="hidden" id="page" name="page" value="${scri.page}"	readonly="readonly" /> 
						<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}" readonly="readonly" />
						<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}" readonly="readonly" /> 
						<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}" readonly="readonly" />

					<%-- <label for="bno">글 번호</label><input type="text" id="bno" name="bno"
						value="${delete}" readonly="readonly" /> --%>

					<div class="d-flex">
						<div class="p-2 flex-fill text-center">
							<button type="button" class="cancel_btn" id="submit-button">&nbsp&nbsp&nbsp&nbsp아니오&nbsp&nbsp&nbsp&nbsp</button>
						</div>
						<div class="p-2 flex-fill text-center">
							<button type="submit" id="submit-button">&nbsp&nbsp&nbsp&nbsp게시글 삭제&nbsp&nbsp&nbsp&nbsp</button>
						</div>
					</div>
					</form>
					
					<script>
						// 폼을 변수에 저장
						var formObj = $("form[role='form']");
	
						// 취소 버튼 클릭
						$(".cancel_btn").click(function() {
							self.location="/board/read?bno=${delete}"
											  +"&page=${scri.page}"
											  +"&perPageNum=${scri.perPageNum}"
											  +"&searchType=${scri.searchType}"
											  +"&keyword=${scri.keyword}";	
						});
					</script>
					
				</div>
				                            
			</div>
			
		</div>

	</section>

</div>


	<!-- FOOTER -->
	<%@include file="../include/footer.jsp"%>


</body>
</html>