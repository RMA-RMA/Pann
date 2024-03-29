<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>get.jsp</title>

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
<script src="/js/comments.js"></script>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bootstrap JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


<style>

.pull-right {
	display: flex;
	justify-content: right;
	align-items: right;
}

.commentListUL {
	list-style: none;
}

.commentListUL li {
	padding-top: 10px;
	border-bottom: 3px solid #eee;
}

.styleflex {
	display: flex;
}
.styleleft {
	margin-right:auto;
	padding-left:10px;
	padding-top:5px;
}
.styleright {
	margin-left:auto;
}

.icon {
	font-size:1.4em;
	color:#4e73df;
	padding-top:5px;
}
.btn {
	display:inline;
	border:1px xolid #858796;
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
										value='<c:out value="${board.title}"/>' readonly="readonly">
								</div>

								<div class="form-group">
									<label>글 내용</label>
									<textarea class="form-control" rows="3" name="content"
										readonly="readonly"><c:out value="${board.content}" /></textarea>
								</div>

								<button type="submit" data-oper='modify' class="btn btn-default"
									style="background-color: #eee;">수정하기</button>

								<button type="submit" data-oper='list' class="btn btn-default"
									style="background-color: #eee;">목록가기</button>

								<!-- 조회 클릭했을때 가져온 글번호 , 페이지넘버  -->
								<form id='operForm' action="/board/modify" method="get">
									<input type='hidden' id='bno' name='bno'
										value='<c:out value="${board.bno }"/>'> <input
										type='hidden' name='pageNum'
										value='<c:out value="${pcri.pageNum }"/>'> <input
										type='hidden' name='amount'
										value='<c:out value="${pcri.amount }"/>'> <input
										type='hidden' name='type'
										value='<c:out value="${pcri.type }"/>'> <input
										type='hidden' name='keyword'
										value='<c:out value="${pcri.keyword }"/>'>
								</form>

							</div>
						</div>
					</div>
					<div class="card shadow mb-4">
						<div class="card-header py-3 styleflex">
							<i class="fa fa-comments icon"></i>
							<p class="m-0 font-weight-bold text-primary styleleft">댓글 Comments</p>
							<button id='addCommentBtn' class='btn btn-primary btn-xs styleright'>댓글 작성 하기 </button>
						</div>
						<div class="card-body">
							<ul class="commentListUL">
								<li class="commentListLI" data-cno='12'>
									<div>
										<div class="commentHeader styleflex">
											<strong>user00</strong> 
											<small class="styleleft">2024-01-08 12:12 </small>
											<button class='btn btn-default btn-xs styleright'> 수정/삭제 </button>
										</div>
										<p>comments start</p>
									</div>
								</li>
							</ul>
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
<!--로그아웃 모달창
	
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
	 -->
	<!-- 댓글 Modal-->
	<div class="modal fade" id="commentModal" tabindex="-1" role="dialog"
		aria-labelledby="commentModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="commentModalLabel">댓글 모달창</h5>
					<button class="close" type="button" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label>Commenter</label>
						<input class="form-control" name='commenter' value='댓글작성자'>
					</div>
					<div class="form-group">
						<label>Comments</label>
						<input class="form-control" name='comments' value='댓글내용'>
					</div>
					
					<div class="form-group">
						<label>comments Date</label>
						<input class="form-control" name='commentDate' value=''>
					</div>
				</div>
				<div class="modal-footer">
					<button id='modalModifyBtn' class="btn btn-secondary" type="button">modify</button>
						
					<button id='modalRemoveBtn' class="btn btn-secondary" type="button">remove</button>	
						
					<button id='modalRegisterBtn' class="btn btn-secondary" type="button" data-bs-dismiss="modal">Register</button>	
					
					<button id='modalCloseBtn' class="btn btn-secondary" type="button" data-bs-dismiss="modal">Close</button>
							
				</div>
			</div>
		</div>
	</div>
	
			<script type="text/javascript">
					
					//수정하기 목록가기 버튼을 눌렀을때 수정 또는 목록으로 가기 
						$(document).ready(function() {

									var operForm = $("#operForm");
									$("button[data-oper='modify']").on("click",function(e) {

												operForm.attr("action","/board/modify").submit();
											});

									$("button[data-oper='list']").on("click",function(e) {

												operForm.find("#bno").remove();
												operForm.attr("action","/board/list");
												operForm.submit();
											});

								});
						
						// 자바스크립트 연결 확인 
						$(document).ready(function() {
							console.log(commentService);
							console.log("get.jsp 자바스크립트 연결 ");
							
						});
						
						//댓글리스트를 ul-li로 자동으로 구성하는 함수 
						$(document).ready(function() {
											console.log(commentService);
											var bnoValue = '<c:out value="${board.bno}"/>';
											var commentUL = $(".commentListUL");

											showList(1);
											function showList(page) {

												commentService.getList({bno : bnoValue ,page : page || 1},function(list) {
																	var str = "";
																	if (list == null || list.length == 0) {

																		commentUL.html("");
																		return;

																	}
																	for (var i = 0, len = list.length || 0; i < len; i++) {
																		str += "<li class='commentListLI' data-cno='"+list[i].cno+"'>";
																		str += "<div><div class='commentHeader styleflex'><strong>"+ list[i].commenter+ "</strong>";
																		str += "<small class='styleleft'>"+ commentService.displayTime(list[i].commentDate)+"</small>";
																		str += "<button id='modelete' class='btn btn-default btn-xs styleright'>수정/삭제</button></div>";
																		str += "<p>"+ list[i].comments+ "</p></div></li>";

																	}
																	commentUL.html(str);
																});
											}//showList
											

											//댓글 모달창 show 
											var modal = $("#commentModal");
											var modalInputcomment =modal.find("input[name='comments']");
											var modalInputcommenter =modal.find("input[name='commenter']");
											var modalInputcommentDate =modal.find("input[name='commentDate']");
											
											var modalModifyBtn =$("#modalModifyBtn");
											var modalRemoveBtn =$("#modalRemoveBtn");
											var modalRegisterBtn =$("#modalRegisterBtn");
											
											
											$("#addCommentBtn").on("click", function (e){ 

												modal.find("input").val("");
												modalInputcommentDate.closest("div").hide();
												modal.find("button[id !='modalCloseBtn']").hide();
												modalRegisterBtn.show();
												
												$('#commentModal').modal("show");
											
											});
											
											//모달창의 register 버튼 클릭 후 댓글 등록  
											modalRegisterBtn.on("click", function (e){ 
												
												var comments = {
														comments : modalInputcomment.val(),
														commenter : modalInputcommenter.val(),
														bno : bnoValue
												};
												commentService.add(comments,function(result){
													alert(result);
													modal.find("input").val("");
													modal.modal("hide");
													
													showList(1);
												
												});

											
												
											});
											
											
											//댓글목록의 ul-li를 선택했을때 댓글을 조회한다 
											$(".commentListUL").on("click", "li", function(e) { 

												var cno = $(this).data("cno");
												console.log(cno);
												commentService.get(cno,function(comments){ 
					
													modalInputcomment.val(comments.comments);
													modalInputcommenter.val(comments.commenter);
													modalInputcommentDate.val(commentService.displayTime(comments.commentDate)).attr("readonly","readonly");
													modal.data("cno",comments.cno);
													
													modal.find("button[id != 'modalCloseBtn']").hide();
													modalModifyBtn.show();
													modalRemoveBtn.show();
													
													$('#commentModal').modal("show");
													
												});
											});
											

											//댓글 수정 
											modalModifyBtn.on("click", function(e) {

											
												var comments = {cno:modal.data("cno"), comments:modalInputcomment.val()};
												
												commentService.update(comments, function(result){

												
													alert(result);
													modal.modal("hide");
													showList(1);
												
												});
											});
											
											//댓글 삭제 
											modalRemoveBtn.on("click", function(e) {

												var cno = modal.data("cno");
												
												
												commentService.remove(cno, function(result){

												
													alert(result);
													modal.modal("hide");
													showList(1);
												
												});
											});
											
											
											
											
											
										});//document

						// 댓글 등록 				
						commentService.add({
							comments : "JS test",
							commenter : "tester",
							bno : bnoValue
						}, function(result) {
							alert("RESULT:" + result)
						});				
										
						// 댓글 삭제 				
						commentService.remove(2, function(count) {
							consol.log(count);
							if (count === "success") {
								alert("REMOVE")
							}
						}, function(err) {

							alert('ERROR');

						});
						// 댓글 수정  	
						commentService.update({
							cno : 25,
							bno : bnoValue,
							comments : "Modified comments"
						}, function(result) {

							alert('수정완료');

						});
						// 댓글 조회 	
						commentService.get(25, function(data) {
							console.log(data);
						});
						
						
					</script>
</body>
</html>