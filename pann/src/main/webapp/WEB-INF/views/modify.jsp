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
<title>modify.jsp</title>

<!-- Custom fonts for this template -->
<link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<script src="/jquery-3.7.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>


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
				<button id="sidebarToggleTop"
					class="btn btn-link d-md-none rounded-circle mr-3">
					<i class="fa fa-bars"></i>
				</button>

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
									<img class="rounded-circle" src="img/undraw_profile_1.svg"
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
									<img class="rounded-circle" src="img/undraw_profile_2.svg"
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
									<img class="rounded-circle" src="img/undraw_profile_3.svg"
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
							src="img/undraw_profile.svg">
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
					<h1 class="h3 mb-4 text-gray-800">게시판</h1>
					<p class="mb-4">게시판 정보 입력하기 게시판 정보 입력하기 게시판 정보 입력하기 게시판 정보 입력하기
						게시판 정보 입력하기 게시판 정보 입력하기</p>

					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">새 글쓰기</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">


								<form role="form" action="/board/modify" method="post">

									<input type='hidden' name='pageNum' value='<c:out value="${pcri.pageNum }"/>'> 
									<input type='hidden' name='amount' value='<c:out value="${pcri.amount }"/>'>
									

									<div class="form-group">
										<label>번호</label><input class="form-control" name="bno"
											value='<c:out value="${board.bno}"/>' readonly="readonly">
									</div>
									<div class="form-group">
										<label>작성자</label><input class="form-control" name="writer"
											value='<c:out value="${board.writer}"/>' readonly="readonly">
									</div>
									<div class="form-group">
										<label>제목</label> <input class="form-control" name="title"
											value='<c:out value="${board.title}"/>'>
									</div>

									<div class="form-group">
										<label>글 내용</label>
										<textarea class="form-control" rows="3" name="content"><c:out
												value="${board.content}" /></textarea>
									</div>

									<div class="form-group">
										<label>등록시간</label> <input class="form-control" name="regDate"
											value='<fmt:formatDate pattern = "yyyy/MM/dd" value="${board.updateDate }"/>'
											readonly="readonly">
									</div>
									<div class="form-group">
										<label>수정시간</label> <input class="form-control"
											name="updateDate"
											value='<fmt:formatDate pattern = "yyyy/MM/dd" value="${board.updateDate }"/>'
											readonly="readonly">
									</div>



									<button type="submit" data-oper='modify'
										class="btn btn-default" style="background-color: #eee;">수정하기</button>

									<button type="submit" data-oper='remove'
										class="btn btn-default" style="background-color: #eee;">삭제하기</button>
									<button type="submit" data-oper='list' class="btn btn-default"
										style="background-color: #eee;">목록가기</button>
								</form>

							</div>
						</div>
					</div>


					<script type="text/javascript">
						$(document).ready(function() {

											var formObj = $("form");

											
											<!--버튼을클릭했을때  -->
											$('button').on("click",	function(e) {
																e.preventDefault();
																var operation = $(this)	.data("oper");
																
																console.log(operation);

																<!-- 삭제버튼  -->
																if (operation === 'remove') {

																	formObj.attr("action","/board/remove");

																<!--목록버튼  -->
																} else if (operation === 'list') {

																	formObj.attr("action","/board/list").attr("method","get");
																	
																	var pageNumTag = $("input[name='pageNum']").clone();
																	var amountTag = $("input[name='amount']").clone();
																	
																	
																	formObj.empty();
																	formObj.append(pageNumTag);
																	formObj.append(amountTag);
																	

																}
																formObj.submit();

															});

										});
					</script>


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

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>


</body>
</html>