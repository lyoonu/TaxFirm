<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>

	<title>회원탈퇴</title>
	
	<!-- HEAD INCLUDE -->
	<%@include file="../include/headCommon.jsp"%>
	
</head>
<body>

	<!-- MENU BAR -->
	<%@include file="../include/nav.jsp"%>
	
<!-- 회원 탈퇴 -->
<div id="container">

	<section id="deleteConfirm">
		<div class="container">
			<div class="row">

				<div class="col-lg-12 col-md-12 col-12">
					<h2 class="mb-4 pb-2 text-center">정말로 탈퇴하시겠습니까?</h2>

					<form role="form" class="contact-form webform" method="post" autocomplete="off">
						
		
						<div id="withdrawLocation">
							<input type="hidden" id="userId" name="userId" value="${member.userId}" readonly/>
							<p>탈퇴확인을 위하여 비밀번호를 입력해 주세요.</p>
							<input type="password" id="userPass" name="userPass" required/>

							<c:if test="${msg2 == false}">
								<p id="failedWithdraw">비밀번호를 확인해 주세요!</p>	
							</c:if>
							
						</div>
						
						<div class="d-flex">
							<div class="p-2 mr-auto"><a href="#"><input type="hidden"></a></div>
							<div class="p-2">
								<a href="/member/withdraw">
									<button type="submit" class="form-control" id="submit-button">회원탈퇴</button>
								</a>
							</div>
						</div>
							
					</form>
					
						<div class="d-flex">
							<div class="p-2 mr-auto"><a href="#"><input type="hidden"></a></div>
							<div class="p-2">
								<a href="/">
									<button type="submit" class="form-control" id="submit-button">처음으로</button>
								</a>
							</div>
						</div>
					
					
				</div>                            
			</div>
		</div>

	</section>

</div>	
	
	
	<!-- FOOTER -->
	<%@include file="../include/footer.jsp"%>

	

</body>
</html>