<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="ko">

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <meta charset="UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Welcome to WareBridge!</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
 <%--  <link href="<%=request.getContextPath() %>/resources/assets/img/favicon.png" rel="icon">
  <link href="<%=request.getContextPath() %>/resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon"> --%>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<%=request.getContextPath() %>/resources/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
                                                     
  <!-- Template Main CSS File -->
  <link href="<%=request.getContextPath() %>/resources/assets/css/style12.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Dewi
  * Template URL: https://bootstrapmade.com/dewi-free-multi-purpose-html-template/
  * Updated: Mar 17 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="#">WareBridge</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#services">Services</a></li>
          <li><a class="nav-link scrollto" href="#team">Payment</a></li>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
          <li><a class="getstarted scrollto" href="#about">Get Started</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container" data-aos="fade-up" data-aos-delay="150">
      <h1>비즈니스의 다리. WareBridge </h1>
      <h2>당신을 업무 아이콘으로 이끄는 그룹웨어 플랫폼</h2>
      <div class="d-flex">
        <a href="#about" class="btn-get-started scrollto">Get Started</a>
        <a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="glightbox btn-watch-video"><i class="bi bi-play-circle"></i><span>Watch Video</span></a>
      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up"">

    <div class=" section-title">
        <h2>Payment form</h2>
        <p>구독 상품 결제</p>
      </div>

      <div class="row">

        <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="200">
            <div class="member">
              <div class="pic">
              <div class="card mb-4 rounded-3 shadow-sm">
		          <div class="card-header py-3" style="background-color: #cce5ff;">
		            <h1 class="my-0 fw-normal">Basic</h1>
		          </div>
		          <div class="card-body">
		            <h1 class="card-title pricing-card-title">100,000원<small class="text-body-secondary fw-light">/year</small></h1>
		            <ul class="list-unstyled mt-3 mb-4">
		              <br>
		              <br>
		              <li>30명 부터 100명 미만까지</li>
		              <li>사용할 수 있는 상품</li>
		              <br>
		              <i class="bi bi-award"></i>인기상품
		              <br>
		              <br>
		              <br>
		              <br>
		              <br>
		              <br>
		              <br>
		              <br>
		              <br>
		              <br>
		            </ul>
		          </div>
		        </div>
              </div>
            </div>
          </div>
        <div class="col-lg-6 mt-4 mt-lg-0">
          <form id="paymentForm" action="/Saas/introduce/form" method="post" role="form" class="php-email-form">
            <div class="row">
              <div class="col-md-6 form-group">
                <input type="text" name="cmpId" class="form-control" id="name" placeholder="회사ID : 영문명을 입력해주세요." required>
              </div>
              <div class="col-md-6 form-group mt-3 mt-md-0">
                <input type="text" class="form-control" name="cmpEmpChargerid" id="subject" placeholder="담당자" required>
              </div>
            </div>
            <br>
             <div class="row">
              <div class="col-md-6 form-group">
                <input type="text" name="cmpCeo" class="form-control" id="name1" placeholder="대표자명" required>
              </div>
              <div class="col-md-6 form-group mt-3 mt-md-0">
                <input type="text" class="form-control" name="cmpNo" id="subject1" placeholder="사업자등록번호" required>
              </div>
             </div>
            <div class="form-group mt-3">
              <input type="text" class="form-control" name="cmpNm" id="subject2" placeholder="상호명" required>
            </div>
            <div class="form-group mt-3">
              <input type="text" class="form-control" name="cmpAddr" id="subject3" placeholder="주소" required>
            </div>
            <div class="form-group mt-3">
              <select class="form-select mySelect" name="cmpIndustry" id="subject4" required>
              	<option value="">업종을 선택하세요</option>
              	<option value="A">농업, 임업 및 어업</option>
              	<option value="B">제조업</option>
			    <option value="C">수도, 하수 및 폐기물 처리, 원료 재생업</option>
			    <option value="D">건설업</option>
			    <option value="E">도매 및 소매업</option>
			    <option value="F">운수 및 창고업</option>
			    <option value="G">숙박 및 음식점업</option>
			    <option value="H">정보통신업</option>
			    <option value="I">교육 서비스업</option>
			    <option value="J">공공 행정, 국방 및 사회보장 행정</option>
			  </select>
            </div>
            <div class="form-group mt-3">
              <input type="text" class="form-control" name="cmpTelno" id="subject5" placeholder="회사대표전화번호" required>
            </div>
            <div class="form-group mt-3">
              <input type="text" class="form-control" name="cmpMail" id="subject6" placeholder="기업이메일" required>
            </div>
            <div class="form-group mt-3">
              <input type="text" class="form-control" name="cmpCptlString" id="subject7" placeholder="회사자본금" required>
            </div>
            <div class="form-group mt-3">
              <input type="hidden" class="form-control" name="cmpInitPass" id="subject8" value="0000" required>
            </div>
            <div class="my-3">
              <div class="loading">Loading</div>
            </div>
            <div class="text-center"><button type="submit" onclick="duplicateCheck()">결제하기</button></div>
            <button type="button" id="insertCmpData"  class="btn btn-secondary">시연용 데이터</button>
          </form>
        </div>

      </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="footer-info">
              <h3>WareBridge</h3>
              <p>
                대전광역시 중구 계룡로 846 3층
                <br><br>
                <strong>Phone:</strong> +82 042 222 8202<br>
                <strong>Email:</strong> valnet0112@gmail.com<br>
              </p>
              <div class="social-links mt-3">
                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>

          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Dewi</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/dewi-free-multi-purpose-html-template/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="<%=request.getContextPath() %>/resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="<%=request.getContextPath() %>/resources/assets/vendor/aos/aos.js"></script>
  <script src="<%=request.getContextPath() %>/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<%=request.getContextPath() %>/resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="<%=request.getContextPath() %>/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="<%=request.getContextPath() %>/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="<%=request.getContextPath() %>/resources/assets/vendor/php-email-form/validate.js"></script>
  
  <script src="https://code.jquery.com/jquery-latest.min.js"></script>
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
  <!-- Template Main JS File -->
  <script src="<%=request.getContextPath() %>/resources/assets/js/main2.js"></script>
  
  <script type="text/javascript">
	  IMP.init('imp35355545')
	  
	  let form;
	  let formData;
	  let data = {};
	  
	  function duplicateCheck() {
		form = $('#paymentForm')[0];
		formData = new FormData(form);
		for (let key of formData.keys()){
			data[key] = formData.get(key); // 값을 동적으로 할당할 수 있음
		};
		$.ajax({
			url : "http://localhost/Saas/introduce/check",
			method : "POST",
			data : data,
			success : function(resp){
				console.log(resp);
				if(resp == 'PKDUPLICATED'){
					let parentElement = form.parentNode;
					let divElement = document.createElement('div');
					let h5Element = document.createElement('h5');
					h5Element.innerHTML = '중복된 회사ID입니다. 다른 ID를 입력해주세요';
					divElement.appendChild(h5Element);
					parentElement.appendChild(divElement);
					let loadElement = document.querySelector('div.loading');
					loadElement.classList.remove('d-block');
				}
				else{
					inicis();
				}
			}
		});
	  };
	  
	  function inicis() {
      IMP.request_pay({
          pg : 'INIBillTst',
          pay_method : 'card',
          merchant_uid : IMP.makeMerchantUid, // Example: order_no_0001
          name : '웨어브릿지 Basic',
          amount : 100000,
          buyer_email : 'kmx1995@naver.com',
          buyer_name : 'Park JuHo',
          buyer_tel : '010-6558-7233',
          buyer_addr : 'Shinsa-dong, Gangnam-gu, Seo ul',
          buyer_postcode : '123-456'
      }, function(resp) {
         console.log(resp);
         alert('결제가 완료되었습니다. 비밀번호는 0000입니다.');
         
         $.ajax({
         	url : form.action,
         	method : form.method,
         	data : data,
         	success : function(resp){
         		console.log(resp)
         		if(resp.result == 'OK'){
         			location.href = 'http://localhost/WareBridge/'
         		}
         	}
         });
      });
   }
	  
  $(document).on('click',"#insertCmpData", function(){
	  let demoData = {
	            cmpId: "WAREBRIDGE",
	            cmpEmpChargerid: "이성엽",
	            cmpCeo: "최희연",
	            cmpNo: "110-59-333290",
	            cmpNm: "(주)웨어브릿지",
	            cmpAddr: "대전 중구 계룡로 846 401호",
	            cmpIndustry: "H", // 업종 코드 설정 (예: 도매 및 소매업)
	            cmpTelno: "010-4685-5112",
	            cmpMail: "ware@bridge.com",
	            cmpCptlString: "100,000,000"
	        };

	        // 시연용 데이터 입력
	        for (let key in demoData) {
	            let inputField = $('[name="' + key + '"]');
	            if (inputField.length > 0) {
	                inputField.val(demoData[key]);
	            }
	        }
	});  
  </script>
  
  
</body>

</html>