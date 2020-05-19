<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>

	<title>글 작성하기</title>
 
	<!-- HEAD INCLUDE -->
	<%@include file="../include/headCommon.jsp"%>
	
</head>
<body>

	<!-- MENU BAR -->
	<%@include file="../include/nav.jsp"%>

<!-- 글 작성하기 -->
<div id="container">

	<section id="readLocation">
		<div class="container">
			<div class="row">

				<div class="col-lg-12 col-md-12 col-12">
					<h2 class="mb-4 pb-2 text-center">문의하기</h2>

					<form role="form" class="contact-form webform" method="post" autocomplete="off" role="form">
					
						<p>
							<input type="text" class="form-control" id="title" name="title" placeholder="제목" required>
						</p>
						<p>
							<input type="text" class="form-control" id="writer" name="writer" placeholder="작성자" required>
							<%-- <input type="text" class="form-control" id="writer" name="writer" value="${member.userId}" readonly="readonly" required> --%>
						</p>
						<p>
							<textarea class="form-control" rows="15" id="content" name="content" placeholder="내용" required></textarea>
						</p>
						
					<div class="d-flex">
						<div class="p-2 mr-auto">
							<button type="submit" class="form-control" id="submit-button" name="menus_button">작성취소</button>
						</div>
						<div class="p-2">
							<button type="submit" class="form-control" id="submit-button">&nbsp글쓰기&nbsp</button>
						</div>
					</div>
					</form>
					
					<script>
						//작성취소 버튼 클릭시
						$("button[name='menus_button']").click(function() {
								self.location = "/board/listSearch"
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