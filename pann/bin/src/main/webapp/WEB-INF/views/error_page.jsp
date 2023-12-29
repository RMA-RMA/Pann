<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>에러페이지</title>
</head>
<body>
	<h1>예외가 발생했습니다.</h1>

	<h3>발생한 예외</h3>
	<p>${pageContext.exception}</p>
	<h3>발생한 예외메세지</h3>
	<p>${pageContext.exception.message}</p>

	<h3>stackTrace</h3>
	<ol>
		<c:forEach items="${pageContext.exception.stackTrace}" var="i">
			<li>${i.toString()}</li>
		</c:forEach>
	</ol>
</body>
</html>