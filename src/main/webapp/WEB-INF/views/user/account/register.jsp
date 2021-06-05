<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<title>Đăng ký tài khoản</title>
</head>
<body>
	<div class="row">
<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">
					<c:forEach var="item" items="${ categorys }">
						<li><a href='<c:url value="/san-pham/${ item.id }"/>'><span
								class="icon-circle-blank"></span>${ item.name }</a></li>
					</c:forEach>

					<li><a class="totalInCart" href="cart.html"><strong>Đã
								mua<span class="badge badge-warning pull-right"
								style="line-height: 18px;"><fmt:formatNumber type="number" groupingUsed="true" value="${ TotalPriceCart }" /> ₫</span>
						</strong></a></li>
				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br> <br> <a
						class="defaultBtn" href="#">Click here </a>
				</p>
			</div>
			<div class="well well-small">
				<a href="#"><img
					src="<c:url value="/assets/user/img/paypal.jpg" />"
					alt="payment method paypal"></a>
			</div>

			<a class="shopBtn btn-block" href="#">Upcoming products <br>
				<small>Click to view</small></a> <br> <br>
			<ul class="nav nav-list promowrapper">
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img
							src="<c:url value="/assets/user/img/bootstrap-ecommerce-templates.PNG" />"
							alt="bootstrap ecommerce templates">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img
							src="<c:url value="/assets/user/img/shopping-cart-template.PNG" />"
							alt="shopping cart template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img
							src="<c:url value="/assets/user/img/bootstrap-template.png" />"
							alt="bootstrap template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
			</ul>
		</div>
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="<c:url value="/trang-chu"/>"> Trang Chủ</a> <span class="divider">/</span></li>
		<li class="active">Người dùng</li>
    </ul>
	<h3> Người dùng</h3>	
	<hr class="soft"/>
	
	<div class="row">
		<div class="span4">
			<div class="well">
			<h5>Đăng ký tài khoản</h5>
			<br/>
			<form:form action="dang-ky" method="POST" modelAttribute="user">  
			 <div class="control-group">
				<label class="control-label" for="inputEmail">Email</label>
				<div class="controls">
				
				  <form:input type="email" class="span3" placeholder="Mời nhập Email" path="user" />  
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="inputEmail">Mật khẩu</label>
				<div class="controls">
				  <form:input type="password" class="span3"  placeholder="Mời nhập mật khẩu" path="password" /> 
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="inputEmail">Họ và tên</label>
				<div class="controls">
				  <form:input type="text" class="span3"  placeholder="Mời nhập họ và tên" path="display_name" /> 
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="inputEmail">Địa chỉ</label>
				<div class="controls">
				  <form:input type="text" class="span3"  placeholder="Mời nhập địa chỉ" path="address" /> 
				</div>
			  </div>
			  <div class="controls">
			  <button type="submit" class="btn block">Đăng ký thành viên</button>
			  </div>
			</form:form>
		</div>
		</div>
		<div class="span1"> &nbsp;</div>
		<div class="span4">
			<div class="well">
				<h5>Đăng nhập hệ thống</h5>
				<c:if test="${ statusLogin }"> <h1>${ statusLogin }</h1> </c:if>
			<form:form action="dang-nhap" method="POST" modelAttribute="user">
			  <div class="control-group">
				<label class="control-label" for="inputEmail">Email</label>
				<div class="controls">
				 <form:input class="span3"  type="email" placeholder="Mời nhập Email" path="user" />
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="inputPassword">Password</label>
				<div class="controls">
				<form:input type="password" class="span3" placeholder="Mời nhập mật khẩu" path="password" />
				</div>
			  </div>
			  <div class="control-group">
				<div class="controls">
				  <button type="submit" class="defaultBtn">Đăng nhập</button> <a href="#">Quên mật khẩu ?</a>
				</div>
			  </div>
			</form:form>
		</div>
		</div>
	</div>	
	
</div>
</div>
</body>
