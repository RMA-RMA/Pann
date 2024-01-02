<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>list.jsp</title>

<!-- Custom fonts for this template -->
<link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<script src="/jquery-3.7.1.min.js"></script>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bootstrap JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<style> /* The Modal (background) */
.searchModal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 10; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
} /* Modal Content/Box */
.search-modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 70%; /* Could be more or less, depending on screen size */
}

.pull-right {
	padding-top: 10px;
	display: flex;
	justify-content: center;
	align-items: center;
	
}
.col-md-5 , .col-md-6 , .col-md-7 {
display:none !important;
}
#searchForm {
padding-top: 20px;
display: flex;
	justify-content: right;
	align-items: right;
}
#searchForm input {
margin-left:10px;
}



#searchForm button {
background-color: #eee;
margin-left:10px;
}

</style>
</head>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<%@ include file="/WEB-INF/views/include/sidebar.jsp"%>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

				<!-- Sidebar Toggle (Topbar) -->
				<form class="form-inline">
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>
				</form>

				<!-- Topbar Search -->
				<form
					class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
					<div class="input-group">
						<input type="text" class="form-control bg-light border-0 small"
							placeholder="Search for..." aria-label="Search"
							aria-describedby="basic-addon2">
						<div class="input-group-append">
							<button class="btn btn-primary" type="button">
								<i class="fas fa-search fa-sm"></i>
							</button>
						</div>
					</div>
				</form>

				<!-- Topbar Navbar -->
				<ul class="navbar-nav ml-auto">

					<!-- Nav Item - Search Dropdown (Visible Only XS) -->
					<li class="nav-item dropdown no-arrow d-sm-none"><a
						class="nav-link dropdown-toggle" href="#" id="searchDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
					</a> <!-- Dropdown - Messages -->
						<div
							class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
							aria-labelledby="searchDropdown">
							<form class="form-inline mr-auto w-100 navbar-search">
								<div class="input-group">
									<input type="text" class="form-control bg-light border-0 small"
										placeholder="Search for..." aria-label="Search"
										aria-describedby="basic-addon2">
									<div class="input-group-append">
										<button class="btn btn-primary" type="button">
											<i class="fas fa-search fa-sm"></i>
										</button>
									</div>
								</div>
							</form>
						</div></li>

					<!-- Nav Item - Alerts -->
					<li class="nav-item dropdown no-arrow mx-1"><a
						class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <!-- Counter - Alerts -->
							<span class="badge badge-danger badge-counter">3+</span>
					</a> <!-- Dropdown - Alerts -->
						<div
							class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
							aria-labelledby="alertsDropdown">
							<h6 class="dropdown-header">Alerts Center</h6>
							<a class="dropdown-item d-flex align-items-center" href="#">
								<div class="mr-3">
									<div class="icon-circle bg-primary">
										<i class="fas fa-file-alt text-white"></i>
									</div>
								</div>
								<div>
									<div class="small text-gray-500">December 12, 2019</div>
									<span class="font-weight-bold">A new monthly report is
										ready to download!</span>
								</div>
							</a> <a class="dropdown-item d-flex align-items-center" href="#">
								<div class="mr-3">
									<div class="icon-circle bg-success">
										<i class="fas fa-donate text-white"></i>
									</div>
								</div>
								<div>
									<div class="small text-gray-500">December 7, 2019</div>
									$290.29 has been deposited into your account!
								</div>
							</a> <a class="dropdown-item d-flex align-items-center" href="#">
								<div class="mr-3">
									<div class="icon-circle bg-warning">
										<i class="fas fa-exclamation-triangle text-white"></i>
									</div>
								</div>
								<div>
									<div class="small text-gray-500">December 2, 2019</div>
									Spending Alert: We've noticed unusually high spending for your
									account.
								</div>
							</a> <a class="dropdown-item text-center small text-gray-500"
								href="#">Show All Alerts</a>
						</div></li>

					<!-- Nav Item - Messages -->
					<li class="nav-item dropdown no-arrow mx-1"><a
						class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i> <!-- Counter - Messages -->
							<span class="badge badge-danger badge-counter">7</span>
					</a> <!-- Dropdown - Messages -->
						<div
							class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
							aria-labelledby="messagesDropdown">
							<h6 class="dropdown-header">Message Center</h6>
							<a class="dropdown-item d-flex align-items-center" href="#">
								<div class="dropdown-list-image mr-3">
									<img class="rounded-circle" src="/img/undraw_profile_1.svg"
										alt="...">
									<div class="status-indicator bg-success"></div>
								</div>
								<div class="font-weight-bold">
									<div class="text-truncate">Hi there! I am wondering if
										you can help me with a problem I've been having.</div>
									<div class="small text-gray-500">Emily Fowler · 58m</div>
								</div>
							</a> <a class="dropdown-item d-flex align-items-center" href="#">
								<div class="dropdown-list-image mr-3">
									<img class="rounded-circle" src="/img/undraw_profile_2.svg"
										alt="...">
									<div class="status-indicator"></div>
								</div>
								<div>
									<div class="text-truncate">I have the photos that you
										ordered last month, how would you like them sent to you?</div>
									<div class="small text-gray-500">Jae Chun · 1d</div>
								</div>
							</a> <a class="dropdown-item d-flex align-items-center" href="#">
								<div class="dropdown-list-image mr-3">
									<img class="rounded-circle" src="/img/undraw_profile_3.svg"
										alt="...">
									<div class="status-indicator bg-warning"></div>
								</div>
								<div>
									<div class="text-truncate">Last month's report looks
										great, I am very happy with the progress so far, keep up the
										good work!</div>
									<div class="small text-gray-500">Morgan Alvarez · 2d</div>
								</div>
							</a> <a class="dropdown-item d-flex align-items-center" href="#">
								<div class="dropdown-list-image mr-3">
									<img class="rounded-circle"
										src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="...">
									<div class="status-indicator bg-success"></div>
								</div>
								<div>
									<div class="text-truncate">Am I a good boy? The reason I
										ask is because someone told me that people say this to all
										dogs, even if they aren't good...</div>
									<div class="small text-gray-500">Chicken the Dog · 2w</div>
								</div>
							</a> <a class="dropdown-item text-center small text-gray-500"
								href="#">Read More Messages</a>
						</div></li>

					<div class="topbar-divider d-none d-sm-block"></div>

					<!-- Nav Item - User Information -->
					<li class="nav-item dropdown no-arrow"><a
						class="nav-link dropdown-toggle" href="#" id="userDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <span
							class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas
								McGee</span> <img class="img-profile rounded-circle"
							src="/img/undraw_profile.svg">
					</a> <!-- Dropdown - User Information -->
						<div
							class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
							aria-labelledby="userDropdown">
							<a class="dropdown-item" href="#"> <i
								class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
							</a> <a class="dropdown-item" href="#"> <i
								class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> Settings
							</a> <a class="dropdown-item" href="#"> <i
								class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> Activity
								Log
							</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#" data-toggle="modal"
								data-target="#logoutModal"> <i
								class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
								Logout
							</a>
						</div></li>

				</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">게시판</h1>
					<p class="mb-4">게시판 정보 입력하기 게시판 정보 입력하기 게시판 정보 입력하기 게시판 정보 입력하기
						게시판 정보 입력하기 게시판 정보 입력하기</p>

					<!-- DataTales Example 실제 게시판 표 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">
								00게시판
								<button id="regBtn" style="float: right;" type="button">새글
									작성하기</button>
							</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>#번호</th>
											<th>제목</th>
											<th>작성자</th>
											<th>작성일</th>
											<th>수정일</th>
										</tr>
									</thead>

									<c:forEach items="${list}" var="board">
										<tr>
											<th><c:out value="${board.bno}" /></th>
											<th><a class='move' href='<c:out value="${board.bno}"/>'><c:out value="${board.title}" /></a></th>
											<th><c:out value="${board.writer}" /></th>
											<th><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}" /></th>
											<th><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate}" /></th>
										</tr>
									</c:forEach>

								</table>
								
								<!-- 검색창 -->
							<form id='searchForm' action="/board/list" method="get">
								<select name='type'>
								<option value="" <c:out value="${pageMaker.pcri.type == null? 'selected':''}"/>> 선택하세요</option>
								<option value="T" <c:out value="${pageMaker.pcri.type eq 'T'? 'selected':''}"/>>제목</option>
								<option value="C" <c:out value="${pageMaker.pcri.type eq 'C'? 'selected':''}"/>>내용</option>
								<option value="W" <c:out value="${pageMaker.pcri.type eq 'W'? 'selected':''}"/>>작성자</option>
								<option value="TC" <c:out value="${pageMaker.pcri.type eq 'TC'? 'selected':''}"/>>제목or내용</option>
								<option value="TW" <c:out value="${pageMaker.pcri.type eq 'TW'? 'selected':''}"/>>제목or작성자</option>
								<option value="TWC" <c:out value="${pageMaker.pcri.type eq 'TWC'? 'selected':''}"/>>제목or내용or작성자</option>
								
								</select>
								<input type='text' name='keyword' value='<c:out value="${pageMaker.pcri.keyword }"/>'/> 
								<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.pcri.pageNum }"/>'/> 
								<input type='hidden' name='amount' value='<c:out value="${pageMaker.pcri.amount }"/>'/> 
								<button class='btn btn-default'> 검색 </button>
							</form>
								
								
								
								<!-- 페이지 네비게이션 -->
								<div class="pull-right">
									<ul class="pagination">

										<c:if test="${pageMaker.prev}">
											<li class="paginate_button previous">
											<a href="${pageMaker.startPage -1}">Previous</a></li>
										</c:if>

										<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
											<li class="paginate_button page-item ${pageMaker.pcri.pageNum == num? "active": ""} ">
											<a href="${num }" class="page-link">${num}</a></li>
										</c:forEach>

										<c:if test="${pageMaker.next}">
											<li class="paginate_button page-item disabled next">
											<a href="${pageMaker.endPage+1}" class="page-link">Next</a></li>
										</c:if>

									</ul>
								</div>

								<form id='actionForm' action="/board/list" method="get">
									<input type='hidden' name='pageNum' value='${pageMaker.pcri.pageNum }'> 
									<input type='hidden' name='amount' value='${pageMaker.pcri.amount }'>
									<input type='hidden' name='type' value='${pageMaker.pcri.type }'>
									<input type='hidden' name='keyword' value='${pageMaker.pcri.keyword }'>
								</form>
							

								<!-- 모달창html -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">

									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title">모달창</h5>
											</div>
											<div class="modal-body">
												<p>처리 완료 되었습니다.</p>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-bs-dismiss="modal">Close</button>
												<button type="button" class="btn btn-primary">Save
													changes</button>
											</div>
										</div>
									</div>
								</div>
								<!-- 자바스크립트 -->
								<script type="text/javascript">
									$(document).ready(function() {

										
										<!-- 모달창 -->
														var result = '<c:out value="${result}"/>';

														checkModal(result);

														history.replaceState({}, null, null);

														function checkModal(result) {
															if (result === ''|| history.state) {
																return;
															}
															if (parseInt(result) > 0) {
																$(".modal-body").html("게시글"+ parseInt(result)+ "번이 동록되었습니다")
															}
															$('#myModal').modal("show");
														}
														
														<!-- 글쓰기 버튼  -->
														$("#regBtn").on("click",function() {
																			self.location = "/board/register";
																		});

														
														<!-- 페이지버튼 -->
														var actionForm = $("#actionForm");
														$(".paginate_button a").on("click",function(e) {
																			
																			e.preventDefault();
																			console.log('click');
																			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
																			actionForm.submit();
																		});

														<!--게시글 제목 클릭 -->
														$(".move").on("click",function(e) {
																			e.preventDefault();
																			actionForm.append("<input type='hidden' name='bno' value='"+ $(this).attr("href")+ "'>");
																			actionForm.attr("action","/board/get");
																			actionForm.submit();
																		})
																		
														<!--검색 조건 키워드페이징  -->				
														var searchForm = $("#searchForm");
														$("#searchForm button").on("click",function(e) {
																			if(!searchForm.find("option:selected").val()) {
																					alert("검색종류를 선택하세요");
																					return false;
																			}
																			if(!searchForm.find("input[name='keyword']").val()) {
																				alert("검색키워드를 입력하세요");
																				return false;
																		}
																			searchForm.find("input[name='pageNum']").val("1");
																			e.preventDefault();
																			searchForm.submit();
																		});			
				
													});
								</script>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<%@ include file="/WEB-INF/views/include/footer.jsp"%>

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>


	<!-- Bootstrap core JavaScript-->
	<script src="/vendor/jquery/jquery.min.js"></script>
	<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="/js/demo/datatables-demo.js"></script>

</body>
</html>