<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

		<div class="container">
				
			<c:forEach items="${comList}" var="comList">
				<h6>${comList.writer}</h6>	
				<p>(<fmt:formatDate value="${comList.regDate}" pattern="yyyy-MM-dd HH:mm:ss" />)</p>

				<div class="d-flex justify-content-between mb-3">
					<div class="p-2">${comList.content}</div>
					<div class="p-2">
						<button type="submit" class="fas fa-eraser" data-rno="${comList.rno}"></button>
					</div>
								
					<script>								
						$(".fas").click(function() {
							self.location = "/board/commentDelete?bno=${read.bno}"
										+ "&page=${scri.page}"
										+ "&perPageNum=${scri.perPageNum}"
										+ "&searchType=${scri.searchType}"
										+ "&keyword=${scri.keyword}"
										+ "&rno="
										+ $(this).attr("data-rno");
						});
					</script>
				</div>
						
			</c:forEach>
				

			<section class="commentForm">
				<form role="form" method="post" autocomplete="off">
					<div class="container">
					<input type="hidden" id="bno" name="bno" value="${read.bno}" readonly="readonly" /> 
					<input type="hidden" id="page" name="page" value="${scri.page}" readonly="readonly" /> 
					<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}" readonly="readonly" /> 
					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}" readonly="readonly" /> 
					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}" readonly="readonly" />

					
						<div class="row">

							<div class="col-lg-12">

								<input type="text" class="form-control" id="writer" name="writer" placeholder="작성자" required>

								<textarea class="form-control" rows="5"id="content" name="content" placeholder="댓글을 입력해 주세요" required></textarea>

								<button type="submit" id="submit-button" class="form-control" name="commentOn">등록</button>
				
							</div>                    
						</div>
						
						<script>
								var formObj = $(".commentForm form[role='form']");

								$("button[name='commentOn']").click(function() {
									formObj.attr("action", "commentWrite");
									formObj.submit();
								});
						</script>
						
					</div>

				</form>

			</section>
				
		</div>