<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html
  lang="ko"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="${pageContext.request.contextPath }/resources/assets/"
  data-template="vertical-menu-template-free"
>
<head>
<meta charset="utf-8" />
<meta
name="viewport"
content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
/>
<meta name="description" content="" />
<title><tiles:getAsString name="title"/></title>
<tiles:insertAttribute name="preScript"/>
</head>
<body data-context-path="${pageContext.request.contextPath }">
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar" style="position: fixed; background-color: rgba(185, 185, 185,0.1);">
		<div class="layout-container">
			<tiles:insertAttribute name="sideMenu"/>
		<div class="layout-page">
			<tiles:insertAttribute name="headerMenu"/>
			<div class="content-wrapper">
				<div class="container-fluid flex-grow-1 container-p-y">
<!-- 					<div style="height:77vh" class="card">	 -->
<!-- 					<div class="col-12 col-lg-8 order-2 order-md-3 order-lg-2 mb-4"> -->
<!-- 						<div class="row" style="height:85vh"> -->
							<tiles:insertAttribute name="contentPage"/>
<!-- 						</div> -->
<!-- 					</div> -->
				<tiles:insertAttribute name="footer"/>
				</div>
			</div>
		</div>
		</div>
	</div>
<tiles:insertAttribute name="postScript"/>
</body>
</html>


