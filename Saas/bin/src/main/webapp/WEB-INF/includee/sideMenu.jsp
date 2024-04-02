<%@ page contentType="text/html; charset=UTF-8" %>

<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
  <div class="app-brand demo">
    <a href="<%=request.getContextPath()%>/index/main" class="app-brand-link">
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class="app-brand-logo demo">
      	<img src="<%=request.getContextPath()%>/resources/WareBridge_white.png">
      </span>
    </a>
    <a href="javascript:;" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
      <i class="bx bx-chevron-left bx-sm align-middle"></i>
    </a>
  </div>
  <div class="menu-inner-shadow"></div>
  <ul class="menu-inner py-1">
    <!-- Dashboard -->
  	    <li class="menu-item active">
	      <a href="<%=request.getContextPath()%>/index/main" class="menu-link">
	        <i class="menu-icon tf-icons bx bx-home-circle bx-md"></i>
	        &emsp; 홈
	      </a>
	    </li>
	    
	    <li class="menu-item">
	      <a href="<%=request.getContextPath()%>/index/member" class="menu-link">
	        <i class='bx bx-buildings bx-md'></i>
	       &emsp; 회원관리
	      </a>
	    </li>
	    
	    <li class="menu-item">
	      <a href="<%=request.getContextPath()%>/index/faq" class="menu-link">
	        <i class='bx bx-message-check bx-md'></i>
	         &emsp;  회원 문의 관리
	      </a>
	    </li>
	    
	    <li class="menu-item">
	      <a href="<%=request.getContextPath()%>/index/analyze" class="menu-link">
	        <i class='bx bx-bar-chart-square bx-md '></i>
	         &emsp;  분석
	      </a>
	    </li>
    
    </ul>
</aside>

<script src="${pageContext.request.contextPath }/resources/myJS/sideMenuLink.js">

</script>