<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>

	<title>수정하기</title>
	
	<!-- HEAD INCLUDE -->
	<%@include file="../include/headCommon.jsp"%>
	
</head>
<body>

	<!-- MENU BAR -->
	<%@include file="../include/nav.jsp"%>

<!-- 글 수정하기 -->
<div id="container">

	<section id="readLocation">
		<div class="container">
			<div class="row">

				<div class="col-lg-12 col-md-12 col-12">
					<h2 class="mb-4 pb-2 text-center">수정하기</h2>

					<form role="form" class="contact-form webform" method="post" autocomplete="off">
						<p>
							<input type="hidden" id="bno" name="bno" value="${modify.bno}" readonly="readonly" />
						</p>
						<p>
							<input type="text" class="form-control" id="title" name="title" value="${modify.title}" placeholder="제목" required>
						</p>
						<p>
							<input type="text" class="form-control" id="writer" name="writer" value="${modify.writer}" readonly="readonly" required>
						</p>
						<p>
							<textarea class="form-control" rows="15" id="content" name="content" placeholder="내용" required>${modify.content}</textarea>
						</p>
						
						
					<div class="d-flex">
						<div class="p-2 mr-auto">
							<button type="submit" class="form-control" id="submit-button">수정취소</button>
						</div>
						<div class="p-2">
							<button type="submit" class="form-control" id="submit-button">수정하기</button>
						</div>
					</div>
					</form>
					
					<script>
						//취소 버튼 클릭시
						$("#cancle_btn").click(function() {
							self.location="/board/read?bno=${modify.bno}"
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