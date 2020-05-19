<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
	     
	     
<nav class="navbar navbar-expand-lg fixed-top">
	
	<div class="container">

		<a class="navbar-brand" href="/">세무법인 윤</a>

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarNav">
			
			<ul class="navbar-nav ml-lg-auto">
				<li class="nav-item">
					<a href="#home" class="nav-link smoothScroll">Home</a>
				</li>

				<li class="nav-item">
					<a href="/board/listSearch" class="nav-link">About us</a>
				</li>

				<li class="nav-item">
					<a href="/board/listPage" class="nav-link">Services</a>
				</li>

				<li class="nav-item">
					<a href="/board/list" class="nav-link">Q&A</a>
				</li>

				<li class="nav-item">
					<a href="#contact" class="nav-link smoothScroll">오시는길</a>
				</li>
			</ul>
			
			<ul class="col-lg-1 mr-lg-4" style="list-style-type:none;">
				<li>
					<a href="#" class="btn custom-btn bg-color" data-toggle="modal" data-target="#loginForm">로그인</a>
				</li>
			</ul>
			
			<ul class="col-lg-1" style="list-style-type:none;">
				<li>
					<a href="#" class="btn custom-btn bg-color" data-toggle="modal" data-target="#membershipForm">회원가입</a>
				</li>
			</ul>			
			
		</div>
		
	</div>
	
</nav>


<!-- 회원가입 Modal창 -->
<div class="modal fade" id="membershipForm" tabindex="-1" role="dialog" aria-labelledby="membershipFormLabel" aria-hidden="true">
		
	<div class="modal-dialog" role="document">

		<div class="modal-content">
			<div class="modal-header">
				<h2 class="modal-title" id="membershipFormLabel">Membership Form</h2>
	
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	           		<span aria-hidden="true">&times;</span>
	           	</button>
			</div>
	
			<div class="modal-body">
	            <form action="/member/register" method="post" class="membership-form webform" role="form">
		            
	                <input type="text" class="form-control" name="userId" placeholder="아이디를 입력해주세요." required>
		
	                <input type="password" class="form-control" name="userPass" placeholder="영문과 숫자를 조합하여 작성해주세요" required>
		
	                <input type="text" class="form-control" name="userName" placeholder="홍길동" required>
		
	                <input type="email" class="form-control" name="userEmail" placeholder="example@gmail.com" required>
			
	                <div class="custom-control custom-checkbox">
	                    <input type="checkbox" class="custom-control-input" id="signup-agree" required>
						<label class="custom-control-label text-small text-muted" for="signup-agree">
							<a href="#">개인정보 처리약관</a> 에 동의합니다.
						</label>
	                </div>
		
	                <button type="submit" class="form-control" id="submit-button" name="submit">회원가입</button>
					
	            </form>
			</div>

			<div class="modal-footer"></div>

		</div>
        
	</div>
      
</div>


<!-- 로그인 Modal창 -->
<div class="modal fade" id="loginForm" tabindex="-1" role="dialog" aria-labelledby="loginFormLabel" aria-hidden="true">
		
	<div class="modal-dialog" role="document">

		<div class="modal-content">
			<div class="modal-header">
				<h2 class="modal-title" id="loginFormLabel">Login</h2>
	
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	           		<span aria-hidden="true">&times;</span>
	           	</button>
			</div>
	
			<div class="modal-body">
	            
				<form action="/member/login" method="post" class="membership-form webform" role="form">
		            
		                <input type="text" class="form-control" name="userId" placeholder="아이디를 입력해주세요." required>
			
		                <input type="password" class="form-control" name="userPass" placeholder="비밀번호를 입력해주세요." required>
				             	
		                <button type="submit" class="form-control" id="submit-button" name="submit">로그인</button>
												
				</form>
	            
			</div>

			<div class="modal-footer"></div>

		</div>
        
	</div>
      
</div>
		