<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>

	<title>회원정보수정</title>
	
	<!-- HEAD INCLUDE -->
	<%@include file="../include/headCommon.jsp"%>
	
</head>
<body>

	<!-- MENU BAR -->
	<%@include file="../include/nav.jsp"%>
	
<!-- 회원정보 수정하기 -->
<div id="container">

	<section id="readLocation">
		<div class="container">
			<div class="row">

				<div class="col-lg-12 col-md-12 col-12">
					<h2 class="mb-4 pb-2 text-center">회원정보수정</h2>

					<form role="form" class="contact-form webform" method="post" autocomplete="off">
						<p id="modifyBoxLocation">
							<label for="userId">아이디 : </label>
							<input type="text" id="userId" name="userId" value="${member.userId}" readonly/>
						</p>
						
						<p id="modifyBoxLocation">
							<label for="userPass">새로운 패스워드 : </label>
							<input type="password" id="userPass" name="userPass" required/>
						</p>

						<div class="d-flex">
							<div class="p-2 mr-auto">
								<button type="submit" class="form-control" id="submit-button">수정하기</button>
							</div>
							<div class="p-2"></div>
						</div>
					</form>
					
					<div class="d-flex">
						<div class="p-2 mr-auto">
							<a href="/">
								<button type="submit" class="form-control" id="submit-button">처음으로</button>
							</a>
						</div>
							<div class="p-2">
								<a href="/member/withdraw">
									<button type="submit" class="form-control" id="submit-button">회원탈퇴</button>
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