<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	     

<div class="d-flex">
	<div class="p-2">
		<a href="#" class="btn custom-btn bg-color">${member.userName}님,<br> 안녕하세요!</a>
	</div>
    <div class="p-2">
		<a href="/member/logout" class="btn custom-btn bg-color">logout</a>
    </div>
    <div class="p-2">
    	<a href="/member/modify" class="btn custom-btn bg-color">modify</a>
    </div>
</div>
		