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

	

	<section id="container">
		<form role="form" method="post" autocomplete="off">
			<input type="hidden" id="bno" name="bno" value="${readComment.bno}" readonly="readonly" /> 
			<input type="hidden" id="rno" name="rno" value="${readComment.rno}" readonly="readonly" /> 
			<input type="hidden" id="page" name="page" value="${scri.page}"	readonly="readonly" /> 
			<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}" readonly="readonly" />
			<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}" readonly="readonly" /> 
			<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}" readonly="readonly" />

			<p>정말로 삭제하시겠습니까?</p>
			<p>
				<button type="submit">예, 삭제합니다.</button>
				<br />
				<button type="button" id="cancel_btn">아니오, 삭제하지 않습니다.</button>

				<script>
					// 폼을 변수에 저장
					var formObj = $("form[role='form']");

					// 취소 버튼 클릭
					$("#cancel_btn").click(function(){							
						self.location = "/board/read?bno=${readComment.bno}"
										+ "&page=${scri.page}"
										+ "&perPageNum=${scri.perPageNum}"
										+ "&searchType=${scri.searchType}"
										+ "&keyword=${scri.keyword}";
					});
					
				</script>
			</p>
		</form>
	</section>

	<!-- FOOTER -->
	<%@include file="../include/footer.jsp"%>



</body>
</html>