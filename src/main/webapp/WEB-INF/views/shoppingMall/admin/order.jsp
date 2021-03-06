<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/img/apple-icon.png">
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Material Dashboard by Creative Tim</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!-- CSS Files -->
<link
	href="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/css/material-dashboard.css?v=2.1.1"
	rel="stylesheet" />

<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<!-- 스마트 에디터 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/smarteditor/js/HuskyEZCreator.js"></script>

<!--   Core JS Files   -->

<link
	href="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/css/material-dashboard.css?v=2.1.1"
	rel="stylesheet" />
<script
	src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/core/popper.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/core/bootstrap-material-design.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!-- Plugin for the momentJs  -->
<script
	src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/moment.min.js"></script>
<!--  Plugin for Sweet Alert -->
<script
	src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/sweetalert2.js"></script>
<!-- Forms Validations Plugin -->
<script
	src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/jquery.validate.min.js"></script>
<!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
<script
	src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/jquery.bootstrap-wizard.js"></script>
<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
<script
	src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/bootstrap-selectpicker.js"></script>
<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
<script
	src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
<!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
<script
	src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/jquery.dataTables.min.js"></script>
<!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
<script
	src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/bootstrap-tagsinput.js"></script>
<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script
	src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/jasny-bootstrap.min.js"></script>
<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
<script
	src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/fullcalendar.min.js"></script>
<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
<script
	src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/jquery-jvectormap.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script
	src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/nouislider.min.js"></script>
<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
<!-- Library for adding dinamically elements -->
<script
	src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/arrive.min.js"></script>
<style>
@font-face {
	font-family: 'NanumBarunpen';
	font-weight: normal;
	src: local(NanumBarunpen);
	src: url("resources/font/nanumbarunpenR.eot");
	src: url("resources/font/nanumbarunpenR.woff") format("woff"),
		url("resources/font/nanumbarunpenR.woff2") format("woff2")
}

@font-face {
	font-family: 'NanumBarunpen';
	font-weight: bold;
	src: local(NanumBarunpen);
	src: url("font/nanumbarunpenB.eot");
	src: url("font/nanumbarunpenB.woff") format("woff"),
		url("font/nanumbarunpenB.woff2") format("woff2")
}

body {
	font-family: NanumBarunpen, sans-serif
}

.input-group.no-border {
	margin-left: 50px;
}

#choice {
	position: absolute;
	left: 1000px;
}

.pagination {
	margin-left: 450px;
}

.addr_chk {
	color: black;
}
</style>
</head>

<body>
	<%@include file='sidebar.jsp'%>
	<div class="main-panel">
		<!-- Navbar -->
		<%@include file='top_nav.jsp'%>
		<!-- End Navbar -->
		<div class="content">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header card-header-primary">
								<h4 class="card-title ">주문 목록</h4>
								<p class="card-category">주문 상태에 따른 주문 목록입니다.</p>
							</div>
							<div class="card-body">
								<div class="col-lg-12">
									<div class="float-right">
										<div class="input-group">
											<div class="float-right">
												<input type="checkbox" name="stts" value="0" id="paid"
													onclick="showOrderList()"> <label for="paid"
													class="addr_chk">결제완료</label>&nbsp;&nbsp; <input
													type="checkbox" name="stts" value="1" id="deliverPre"
													onclick="showOrderList()"> <label for="deliverPre"
													class="addr_chk">배송준비중</label>&nbsp;&nbsp; <input
													type="checkbox" name="stts" value="2" id="delivering"
													onclick="showOrderList()"> <label for="delivering"
													class="addr_chk">배송중</label>&nbsp;&nbsp; <input
													type="checkbox" name="stts" value="3" id="deliverFin"
													onclick="showOrderList()"> <label for="deliverFin"
													class="addr_chk">배송완료</label>&nbsp;&nbsp; <input
													type="checkbox" name="stts" value="4" id="cancel"
													onclick="showOrderList()"> <label for="cancel"
													class="addr_chk">주문취소</label>
											</div>
										</div>
									</div>
								</div>
								<div class="table-responsive">
									<table class="table table-hover">
										<thead class=" text-primary" style="text-align: center;">
											<th>주문일자</th>
											<th>주문번호</th>
											<th>회원 ID</th>
											<th>총 결제금액</th>
											<th>결제방법</th>
											<th>총 적립금</th>
											<th>주문상태</th>
											<th>송장번호</th>
										</thead>
										<tbody id="order_table"></tbody>
									</table>
								</div>
								<table id='table_footer' width="100%">
									<tr>
										<td style='text-align: center'>
											<ul class="pagination">
												<!-- 페이지 목록 버튼 -->
												<c:forEach var="num" begin="${pageMaker.startPage}"
													end="${pageMaker.endPage}">
													<li
														class="page-item ${pageMaker.pagingVO.pageNum == num ? 'active' : ''}"
														id="btn_${num }"><a href="${num}" class="page-link">${num}</a>
													</li>
												</c:forEach>
											</ul>
										</td>
										<!-- 검색 -->
										<td style='text-align: right;' width=30%>
											<div class="input-group no-border" style="margin-left: 0px;">
												<!-- Small button group -->
												<div class="btn-group" style='float: right'>
													<button class="btn btn-default btn-sm dropdown-toggle"
														type="button" data-toggle="dropdown" aria-expanded="false">
														검색 기준 <span class="caret"></span>
													</button>
													<ul class="dropdown-menu" role="menu">
														<li><a href="#">회원ID</a></li>
														<li><a href="#">주문상태</a></li>
														<li><a href="#">송장번호</a></li>
														<li><a href="#">주문일자</a></li>
													</ul>
												</div>
												<input type="text" value="" class="form-control"
													style="margin-top: 5px">
												<button type="submit"
													class="btn btn-white btn-round btn-just-icon">
													<i class="material-icons">search</i>
													<div class="ripple-container"></div>
												</button>
											</div>
									</tr>
								</table>
								<!-- 페이징 버튼 처리를 위한 히든 폼 -->
								<form id="actionForm" action="admin_order.do">
									<input type="hidden" name="pageNum"
										value="${pageMaker.pagingVO.pageNum }"> <input
										type="hidden" name="amount"
										value="${pageMaker.pagingVO.amount }">
								</form>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	</div>

	<div class="fixed-plugin">
		<div class="dropdown show-dropdown">
			<a href="#" data-toggle="dropdown"> <i class="fa fa-cog fa-2x">
			</i>
			</a>
			<ul class="dropdown-menu">
				<li class="header-title">Sidebar Filters</li>
				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger active-color">
						<div class="badge-colors ml-auto mr-auto">
							<span class="badge filter badge-purple" data-color="purple"></span>
							<span class="badge filter badge-azure" data-color="azure"></span>
							<span class="badge filter badge-green" data-color="green"></span>
							<span class="badge filter badge-warning" data-color="orange"></span>
							<span class="badge filter badge-danger" data-color="danger"></span>
							<span class="badge filter badge-rose active" data-color="rose"></span>
						</div>
						<div class="clearfix"></div>
				</a></li>
				<li class="header-title">Images</li>
				<li class="active"><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="resources/admin_bootstrap/assets/img/sidebar-1.jpg" alt="">
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="resources/admin_bootstrap/assets/img/sidebar-2.jpg" alt="">
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="resources/admin_bootstrap/assets/img/sidebar-3.jpg" alt="">
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="resources/admin_bootstrap/assets/img/sidebar-4.jpg" alt="">
				</a></li>
				<li class="button-container"><a
					href="https://www.creative-tim.com/product/material-dashboard"
					target="_blank" class="btn btn-primary btn-block">Free Download</a></li>
				<!-- <li class="header-title">Want more components?</li>
            <li class="button-container">
                <a href="https://www.creative-tim.com/product/material-dashboard-pro" target="_blank" class="btn btn-warning btn-block">
                  Get the pro version
                </a>
            </li> -->
				<li class="button-container"><a
					href="https://demos.creative-tim.com/material-dashboard/docs/2.1/getting-started/introduction.html"
					target="_blank" class="btn btn-default btn-block"> View
						Documentation </a></li>
				<li class="button-container github-star"><a
					class="github-button"
					href="https://github.com/creativetimofficial/material-dashboard"
					data-icon="octicon-star" data-size="large" data-show-count="true"
					aria-label="Star ntkme/github-buttons on GitHub">Star</a></li>
				<li class="header-title">Thank you for 95 shares!</li>
				<li class="button-container text-center">
					<button id="twitter" class="btn btn-round btn-twitter">
						<i class="fa fa-twitter"></i> &middot; 45
					</button>
					<button id="facebook" class="btn btn-round btn-facebook">
						<i class="fa fa-facebook-f"></i> &middot; 50
					</button> <br> <br>
				</li>
			</ul>
		</div>
	</div>

	<script>
		$(document)
				.ready(
						function() {
							$()
									.ready(
											function() {

												$(".sidebar-wrapper li").eq(2)
														.addClass('active');
												$sidebar = $('.sidebar');

												$sidebar_img_container = $sidebar
														.find('.sidebar-background');

												$full_page = $('.full-page');

												$sidebar_responsive = $('body > .navbar-collapse');

												window_width = $(window)
														.width();

												fixed_plugin_open = $(
														'.sidebar .sidebar-wrapper .nav li.active a p')
														.html();

												if (window_width > 767
														&& fixed_plugin_open == 'Dashboard') {
													if ($(
															'.fixed-plugin .dropdown')
															.hasClass(
																	'show-dropdown')) {
														$(
																'.fixed-plugin .dropdown')
																.addClass(
																		'open');
													}

												}

												$('.fixed-plugin a')
														.click(
																function(event) {
																	// Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
																	if ($(this)
																			.hasClass(
																					'switch-trigger')) {
																		if (event.stopPropagation) {
																			event
																					.stopPropagation();
																		} else if (window.event) {
																			window.event.cancelBubble = true;
																		}
																	}
																});

												$(
														'.fixed-plugin .active-color span')
														.click(
																function() {
																	$full_page_background = $('.full-page-background');

																	$(this)
																			.siblings()
																			.removeClass(
																					'active');
																	$(this)
																			.addClass(
																					'active');

																	var new_color = $(
																			this)
																			.data(
																					'color');

																	if ($sidebar.length != 0) {
																		$sidebar
																				.attr(
																						'data-color',
																						new_color);
																	}

																	if ($full_page.length != 0) {
																		$full_page
																				.attr(
																						'filter-color',
																						new_color);
																	}

																	if ($sidebar_responsive.length != 0) {
																		$sidebar_responsive
																				.attr(
																						'data-color',
																						new_color);
																	}
																});

												$(
														'.fixed-plugin .background-color .badge')
														.click(
																function() {
																	$(this)
																			.siblings()
																			.removeClass(
																					'active');
																	$(this)
																			.addClass(
																					'active');

																	var new_color = $(
																			this)
																			.data(
																					'background-color');

																	if ($sidebar.length != 0) {
																		$sidebar
																				.attr(
																						'data-background-color',
																						new_color);
																	}
																});

												$('.fixed-plugin .img-holder')
														.click(
																function() {
																	$full_page_background = $('.full-page-background');

																	$(this)
																			.parent(
																					'li')
																			.siblings()
																			.removeClass(
																					'active');
																	$(this)
																			.parent(
																					'li')
																			.addClass(
																					'active');

																	var new_image = $(
																			this)
																			.find(
																					"img")
																			.attr(
																					'src');

																	if ($sidebar_img_container.length != 0
																			&& $('.switch-sidebar-image input:checked').length != 0) {
																		$sidebar_img_container
																				.fadeOut(
																						'fast',
																						function() {
																							$sidebar_img_container
																									.css(
																											'background-image',
																											'url("'
																													+ new_image
																													+ '")');
																							$sidebar_img_container
																									.fadeIn('fast');
																						});
																	}

																	if ($full_page_background.length != 0
																			&& $('.switch-sidebar-image input:checked').length != 0) {
																		var new_image_full_page = $(
																				'.fixed-plugin li.active .img-holder')
																				.find(
																						'img')
																				.data(
																						'src');

																		$full_page_background
																				.fadeOut(
																						'fast',
																						function() {
																							$full_page_background
																									.css(
																											'background-image',
																											'url("'
																													+ new_image_full_page
																													+ '")');
																							$full_page_background
																									.fadeIn('fast');
																						});
																	}

																	if ($('.switch-sidebar-image input:checked').length == 0) {
																		var new_image = $(
																				'.fixed-plugin li.active .img-holder')
																				.find(
																						"img")
																				.attr(
																						'src');
																		var new_image_full_page = $(
																				'.fixed-plugin li.active .img-holder')
																				.find(
																						'img')
																				.data(
																						'src');

																		$sidebar_img_container
																				.css(
																						'background-image',
																						'url("'
																								+ new_image
																								+ '")');
																		$full_page_background
																				.css(
																						'background-image',
																						'url("'
																								+ new_image_full_page
																								+ '")');
																	}

																	if ($sidebar_responsive.length != 0) {
																		$sidebar_responsive
																				.css(
																						'background-image',
																						'url("'
																								+ new_image
																								+ '")');
																	}
																});

												$('.switch-sidebar-image input')
														.change(
																function() {
																	$full_page_background = $('.full-page-background');

																	$input = $(this);

																	if ($input
																			.is(':checked')) {
																		if ($sidebar_img_container.length != 0) {
																			$sidebar_img_container
																					.fadeIn('fast');
																			$sidebar
																					.attr(
																							'data-image',
																							'#');
																		}

																		if ($full_page_background.length != 0) {
																			$full_page_background
																					.fadeIn('fast');
																			$full_page
																					.attr(
																							'data-image',
																							'#');
																		}

																		background_image = true;
																	} else {
																		if ($sidebar_img_container.length != 0) {
																			$sidebar
																					.removeAttr('data-image');
																			$sidebar_img_container
																					.fadeOut('fast');
																		}

																		if ($full_page_background.length != 0) {
																			$full_page
																					.removeAttr(
																							'data-image',
																							'#');
																			$full_page_background
																					.fadeOut('fast');
																		}

																		background_image = false;
																	}
																});

												$('.switch-sidebar-mini input')
														.change(
																function() {
																	$body = $('body');

																	$input = $(this);

																	if (md.misc.sidebar_mini_active == true) {
																		$(
																				'body')
																				.removeClass(
																						'sidebar-mini');
																		md.misc.sidebar_mini_active = false;

																		$(
																				'.sidebar .sidebar-wrapper, .main-panel')
																				.perfectScrollbar();

																	} else {

																		$(
																				'.sidebar .sidebar-wrapper, .main-panel')
																				.perfectScrollbar(
																						'destroy');

																		setTimeout(
																				function() {
																					$(
																							'body')
																							.addClass(
																									'sidebar-mini');

																					md.misc.sidebar_mini_active = true;
																				},
																				300);
																	}

																	// we simulate the window Resize so the charts will get updated in realtime.
																	var simulateWindowResize = setInterval(
																			function() {
																				window
																						.dispatchEvent(new Event(
																								'resize'));
																			},
																			180);

																	// we stop the simulation of Window Resize after the animations are completed
																	setTimeout(
																			function() {
																				clearInterval(simulateWindowResize);
																			},
																			1000);

																});
											});
						});
	</script>
	
	<script>
	
	var actionForm = $("#actionForm");
	var user_id_list = new Array();
	
	// 유저 id를 배열에 받음
	$(document).ready(function() {
		
		<c:forEach items="${user_id_list}" var="user_id" varStatus="status">
			user_id_list['${status.index}'] = '${user_id}';
		</c:forEach>
	})

	// 페이지가 로드되면 주문/배송 전체 리스트 불러오는 부분
	$(document).ready(function() {
		
		var data = {
			pageNum: actionForm.find("input[name='pageNum']").val(), 
			amount: actionForm.find("input[name='amount']").val()
		};
		
		$.ajax({
			type: "POST",
			url: "/admin_orderListPaging.do",
			data : JSON.stringify(data),
			dataType : "json",
			contentType: "application/json",
			success : function(result) {
				
				var start = ${pageMaker.startPage};
				var end = ${pageMaker.endPage};
				var str = '';
				var paging = '';
								
				$.each(result, function(index, value){
										
					str += '<tr><td>' + result[index].or_date + '</td><td>' + result[index].order_num + '</td><td>';
					str += user_id_list[index] + '</td><td>';
					str += '￦ ' + result[index].pymntamnt + '</td><td>';
					str += result[index].pymntmthd + '</td><td>';
					str += '￦ ' + result[index].savings + '</td><td>';
						
					switch(result[index].stts) {
					
						case 0 : str += '<span style="color: blue;">결제완료</span>'; break;
						case 1 : str += '배송준비중'; break;
						case 2 : str += '배송중'; break;
						case 3 : str += '배송완료'; break;
						case 4 : str += '<span style="color: red;">주문취소</span>'; break;
					}
					
					str += '</td><td>';
					str += result[index].ship_nmbr + '</td><td>';
				});
				
				$('#order_table').empty();
				$('#order_table').append(str);
				
				// 페이징 버튼 AJAX 처리
				for (var i = start; i <= end; i++) {
					
					paging += '<li class="page-item ';
					
					if (${pageMaker.pagingVO.pageNum} == i)
						paging += 'active';
					
					paging += '" id="btn_' + i + '">';
					paging += '<a href="' + i + '" class="page-link">' + i + '</a></li>';
				}
				
				$('.pagination').empty();
				$('.pagination').append(paging);
				
				$('.page-item').removeClass("active");
				$('#btn_' + actionForm.find("input[name='pageNum']").val()).addClass("active");
			},
			error : function() {
				
				alert('AJAX 요청 실패!');
			}
		});
	})
	
	// 페이징 버튼 클릭시 페이징 함수
	$(document).on("click", ".page-item a", function(e) {

		e.preventDefault();
		
		var checkValues = new Array();
		
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		
		if ($("input[name='stts']:checked").length == 0) {
			
			checkValues.push('5'); // 체크된 버튼이 없을시에 전체 주문을 불러온다.
			
		} else {
		
			$("input[name='stts']:checked").each(function(){
		    				
				checkValues.push($(this).val());
			});
		}
		
		var pageNum = actionForm.find("input[name='pageNum']").val();
		var amount = actionForm.find("input[name='amount']").val();
		
		var data = {};  
		data["stts"] = checkValues;
		data["pageNum"] = pageNum;
		data["amount"] = amount;
		
		$.ajax({
			type: "POST",	    
			url : "/admin_orderListCheck.do",
			data : JSON.stringify(data),    
			dataType: "json",			
			contentType:"application/json",			
			success : function(result) {
							
				var str = '';
				var end = (Math.ceil(pageNum / 10.0)) * 10;
				var start = end - 9;
				var total = result.length;
				var paging = '';

				var realEnd = (Math.ceil((result.total * 1.0) / amount));
				
				if (realEnd < end) {
					end = realEnd;
				}
																		
				var values = result.orders_list;
					
				$.each(values, function(index, value){
					
					str += '<tr><td>' + values[index].or_date + '</td><td>' + values[index].order_num + '</td><td>';
					str += user_id_list[index] + '</td><td>';
					str += '￦ ' + values[index].pymntamnt + '</td><td>';
					str += values[index].pymntmthd + '</td><td>';
					str += '￦ ' + values[index].savings + '</td><td>';
						
					switch(values[index].stts) {
					
						case 0 : str += '<span style="color: blue;">결제완료</span>'; break;
						case 1 : str += '배송준비중'; break;
						case 2 : str += '배송중'; break;
						case 3 : str += '배송완료'; break;
						case 4 : str += '<span style="color: red;">주문취소</span>'; break;
					}
					
					str += '</td><td>';
					str += values[index].ship_nmbr + '</td><td>';
				});
				
				$('#order_table').empty();
				$('#order_table').append(str);
				
				// 페이징 버튼 AJAX 처리
				for (var i = start; i <= end; i++) {
					
					paging += '<li class="page-item ';
					
					if (${pageMaker.pagingVO.pageNum} == i)
						paging += 'active';
					
					paging += '" id="btn_' + i + '">';
					paging += '<a href="' + i + '" class="page-link">' + i + '</a></li>';
				}
				
				$('.pagination').empty();
				$('.pagination').append(paging);
				
				$('.page-item').removeClass("active");
				$('#btn_' + actionForm.find("input[name='pageNum']").val()).addClass("active");
			},
			error: function() {
			
				alert("error = " + errorThrown);
			}
		});
	});
	
	// 주문 배송 상태에 따른 체크박스 클릭시의 함수
	function showOrderList(checkbox) {
		
		var checkValues = new Array();
		
		actionForm.find("input[name='pageNum']").val(1); // 어떠한 카테고리든 선택시에는 1페이지부터 보이게 고정한다.
		
		if ($("input[name='stts']:checked").length == 0) {
			
			checkValues.push('5'); // 체크된 버튼이 없을시에 전체 주문을 불러온다.
			
		} else {
		
			$("input[name='stts']:checked").each(function(){
				
				checkValues.push($(this).val());
			});
		}
		
		var pageNum = actionForm.find("input[name='pageNum']").val();
		var amount = actionForm.find("input[name='amount']").val();
		
		var data = {};	  
		data["stts"] = checkValues;
		data["pageNum"] = pageNum;
		data["amount"] = amount;
		
		$.ajax({
			type: "POST",	    
			url : "/admin_orderListCheck.do",
			data : JSON.stringify(data),    
			dataType: "json",			
			contentType:"application/json",			
			success : function(result) {
							
				var str = '';
				var end = (Math.ceil(pageNum / 10.0)) * 10;
				var start = end - 9;
				var total = result.length;
				var paging = '';

				var realEnd = (Math.ceil((result.total * 1.0) / amount));
				
				if (realEnd < end) {
					end = realEnd;
				}
																		
				var values = result.orders_list;
					
				$.each(values, function(index, value){
					
					str += '<tr><td>' + values[index].or_date + '</td><td>' + values[index].order_num + '</td><td>';
					str += user_id_list[index] + '</td><td>';
					str += '￦ ' + values[index].pymntamnt + '</td><td>';
					str += values[index].pymntmthd + '</td><td>';
					str += '￦ ' + values[index].savings + '</td><td>';
						
					switch(values[index].stts) {
					
						case 0 : str += '<span style="color: blue;">결제완료</span>'; break;
						case 1 : str += '배송준비중'; break;
						case 2 : str += '배송중'; break;
						case 3 : str += '배송완료'; break;
						case 4 : str += '<span style="color: red;">주문취소</span>'; break;
					}
					
					str += '</td><td>';
					str += values[index].ship_nmbr + '</td><td>';
				});
				
				$('#order_table').empty();
				$('#order_table').append(str);
				
				// 페이징 버튼 AJAX 처리
				for (var i = start; i <= end; i++) {
					
					paging += '<li class="page-item ';
					
					if (${pageMaker.pagingVO.pageNum} == i)
						paging += 'active';
					
					paging += '" id="btn_' + i + '">';
					paging += '<a href="' + i + '" class="page-link">' + i + '</a></li>';
				}
				
				$('.pagination').empty();
				$('.pagination').append(paging);
				
				$('.page-item').removeClass("active");
				$('#btn_' + actionForm.find("input[name='pageNum']").val()).addClass("active");
			},
			error: function() {
			
				alert("error = " + errorThrown);
			}
		});
	}
	</script>
</body>

</html>
