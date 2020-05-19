<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>

     <title>세무법인 윤</title>
	 
	<!-- HEAD INCLUDE -->
	<%@include file="include/headCommon.jsp"%>
	 
</head>
<body data-spy="scroll" data-target="#navbarNav" data-offset="50">

    <!-- MENU BAR -->
	<%@include file="include/nav.jsp"%>
	

     <!-- MAIN -->
     <section class="hero d-flex flex-column justify-content-center align-items-center" id="home">
			   		
            <div class="bg-overlay"></div>
            
            
               <div class="container">
                    <div class="row">

                         <div class="col-lg-8 col-md-10 mx-auto col-12">
                              <div class="hero-text mt-5 text-center">

                                    <h6 data-aos="fade-up" data-aos-delay="300">이젠 믿을수 있는 전문가에게 맡기세요.</h6>
                                
                                    <h1 class="text-white" data-aos="fade-up" data-aos-delay="500">고객님의 완벽한 절세절약 <br>세무법인 윤이 함께합니다.</h1>

                                    <a href="#" class="btn custom-btn bordered mt-3" data-aos="fade-up" data-aos-delay="700">나의 올해 근로소득세는?</a>
                                   
                              </div>
                         </div>

                    </div>
               </div>
     </section>


     <section class="feature" id="feature">
        <div class="container">
            <div class="row">

                <div class="d-flex flex-column justify-content-center ml-lg-auto mr-lg-5 col-lg-5 col-md-6 col-12">
                    <h2 class="mb-2 text-white" data-aos="fade-up">자영업자 전문 컨설팅</h2>

                    <p data-aos="fade-up">Yoon Tax Cunsulting Firm</p>

                    <h3 class="mb-4 mt-4 text-white" data-aos="fade-up">고객님의 입장에서 생각하는 <br>세무법인 윤입니다.</h3>

                    <p data-aos="fade-up" data-aos-delay="200">사업의 근간이 되는 장부작성.<br>믿을수 있는 전문가에게 맡겨야 합니다.<br>합리적인 가격으로 믿을 수 있는 서비스를 제공합니다.</p>

                    <a href="#" class="btn custom-btn bg-color mt-3" data-aos="fade-up" data-aos-delay="300" data-toggle="modal" data-target="#membershipForm">회원가입하고 상담받기</a>
                </div>

                <div class="mr-lg-auto mt-3 col-lg-4 col-md-6 col-12">
                     <div class="about-working-hours">
                          <div>

                                <h2 class="mb-4 text-white" data-aos="fade-up" data-aos-delay="500">업무시간</h2>

                               <strong class="d-block" data-aos="fade-up" data-aos-delay="600">월요일 - 금요일</strong>

                                <p data-aos="fade-up" data-aos-delay="800">9:00 AM - 18:00 PM</p>

                               <strong class="mt-3 d-block" data-aos="fade-up" data-aos-delay="700">토요일</strong>

                                <p data-aos="fade-up" data-aos-delay="800">10:00 AM - 15:00 PM</p>

                               <strong class="mt-3 d-block" data-aos="fade-up" data-aos-delay="700">일요일, 공휴일</strong>

                                <p data-aos="fade-up" data-aos-delay="800">휴무</p>

                               <strong class="mt-3 d-block" data-aos="fade-up" data-aos-delay="700">연락처</strong>

                                <p data-aos="fade-up" data-aos-delay="800">02-0011-2233(2234)</p>

                               </div>
                          </div>
                     </div>
                </div>

            </div>

    </section>


     <!-- ABOUT -->
     <section class="about section" id="about">
               <div class="container">
                    <div class="row">

                            <div class="mt-lg-5 mb-lg-0 mb-4 col-lg-12 col-md-12 mx-auto col-12">
                                <h3 class="mb-4 text-center" data-aos="fade-up" data-aos-delay="300">세무법인 윤의 믿음직한 조세전문가가<br>믿을 수 있는 다양한 조세서비스를 제공합니다.</h3>
                            </div>

                            <div class="mr-lg-auto mt-5 mt-lg-0 mt-md-0 col-lg-3 col-md-6 col-12" data-aos="fade-up" data-aos-delay="700">
                                <div class="team-thumb">
                                    <img src="${pageContext.request.contextPath}/resources/images/main/cunsult.png" class="img-fluid" alt="cunsult">

                                    
                                </div>
                            </div>

                            <div class="mr-lg-auto mt-5 mt-lg-0 mt-md-0 col-lg-3 col-md-6 col-12" data-aos="fade-up" data-aos-delay="800">
                                <div class="team-thumb">
                                    <img src="${pageContext.request.contextPath}/resources/images/main/dissatisfaction.png" class="img-fluid" alt="dissatisfaction">

                                    
                                </div>
                            </div>

                            <div class="mr-lg-auto mt-5 mt-lg-0 mt-md-0 col-lg-3 col-md-6 col-12" data-aos="fade-up" data-aos-delay="900">
                                <div class="team-thumb">
                                    <img src="${pageContext.request.contextPath}/resources/images/main/booking.png" class="img-fluid" alt="booking">
                                    
                                    
                                </div>
                            </div>

                            <div class="mr-lg-auto mt-5 mt-lg-0 mt-md-0 col-lg-3 col-md-6 col-12" data-aos="fade-up" data-aos-delay="1000">
                                <div class="team-thumb">
                                    <img src="${pageContext.request.contextPath}/resources/images/main/reporting.png" class="img-fluid" alt="reporting">
                                    
                                    
                                </div>
                            </div>

                    </div>
               </div>
     </section>


     <!-- CLASS -->
     <section class="class section" id="class">
               <div class="container">
                    <div class="row">

                            <div class="col-lg-12 col-12 text-center mb-5">
                                <h6 data-aos="fade-up">선택이 아닌 필수입니다!</h6>
                                <h2 data-aos="fade-up" data-aos-delay="200">세무법인 윤이 온 길</h2>
                             </div>

                            <div class="mt-5 mt-lg-0 mt-md-0 col-lg-3 col-md-6 col-12" data-aos="fade-up" data-aos-delay="400">
                                <div class="class-thumb">
                                    <img src="${pageContext.request.contextPath}/resources/images/main/vic1.png" class="img-fluid" alt="Class">
                                </div>
                            </div>

                            <div class="mt-5 mt-lg-0 mt-md-0 col-lg-3 col-md-6 col-12" data-aos="fade-up" data-aos-delay="500">
                                <div class="class-thumb">
                                    <img src="${pageContext.request.contextPath}/resources/images/main/vic2.png" class="img-fluid" alt="Class">
                                </div>
                            </div>

                            <div class="mt-5 mt-lg-0 mt-md-0 col-lg-3 col-md-6 col-12" data-aos="fade-up" data-aos-delay="600">
                                <div class="class-thumb">
                                    <img src="${pageContext.request.contextPath}/resources/images/main/vic3.png" class="img-fluid" alt="Class">
                                </div>
                            </div>

                            <div class="mt-5 mt-lg-0 mt-md-0 col-lg-3 col-md-6 col-12" data-aos="fade-up" data-aos-delay="700">
                                <div class="class-thumb">
                                    <img src="${pageContext.request.contextPath}/resources/images/main/vic4.png" class="img-fluid" alt="Class">
                                </div>
                            </div>

                    </div>
               </div>
     </section>


     <!-- SCHEDULE -->
     <section class="schedule section" id="schedule">
               <div class="container">
                    <div class="row">

                            <div class="col-lg-12 col-12 text-center">
                                <h6 data-aos="fade-up">세무법인 윤</h6>

                                <h2 class="text-white" data-aos="fade-up" data-aos-delay="200">100개 이상의 기업과 함께하고 있습니다.</h2>
                             </div>

                             <div class="col-lg-12 col-12 text-center">
                                 <h1 data-aos="fade-up" data-aos-delay="200">추가예정입니다.</h1>
                             </div>

                    </div>
               </div>
     </section>


     <!-- CONTACT -->
     <section class="contact section" id="contact">
          <div class="container">
               <div class="row">

                    <div class="ml-auto col-lg-5 col-md-6 col-12">
                        <h2 class="mb-4 pb-2 text-center" data-aos="fade-up" data-aos-delay="200">문의사항</h2>

                        <form action="#" method="post" class="contact-form webform" data-aos="fade-up" data-aos-delay="400" role="form">
                            <input type="text" class="form-control" name="cf-name" placeholder="Name">

                            <input type="email" class="form-control" name="cf-email" placeholder="Email">

                            <textarea class="form-control" rows="5" name="cf-message" placeholder="Message"></textarea>

                            <button type="submit" class="form-control" id="submit-button" name="submit">보내기</button>
                        </form>
                    </div>

                    <div class="mx-auto mt-4 mt-lg-0 mt-md-0 col-lg-5 col-md-6 col-12">
                        <h2 class="mb-4 text-center" data-aos="fade-up" data-aos-delay="600">오시는 길</h2>

                        <p data-aos="fade-up" data-aos-delay="800"><i class="fa fa-map-marker mr-1"></i>서울특별시 강남구 세경빌딩</p>
<!-- How to change your own map point
	1. Go to Google Maps
	2. Click on your location point
	3. Click "Share" and choose "Embed map" tab
	4. Copy only URL and paste it within the src="" field below
-->
                        <div class="google-map" data-aos="fade-up" data-aos-delay="900">
                           <iframe src="https://maps.google.com/maps?q=Av.+Lúcio+Costa,+Rio+de+Janeiro+-+RJ,+Brazil&t=&z=13&ie=UTF8&iwloc=&output=embed" width="1920" height="250" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                        </div>
                    </div>
                    
               </div>
          </div>
     </section>


	<!-- FOOTER -->
	<%@include file="include/footer.jsp"%>


</body>
</html>
