<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/view/jspf/pageHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>
<my:navbar />

<div class="main-container">
<h1>게시물 목록</h1>
<my:boardList />
</div>

<div style= text-align: align="center">
<c:forEach begin="${beginPage }" end="${endPage }" var="page">
<c:url value="/" var="curl" >
	<c:param name="page" value="${page }" />
</c:url>
<a href="${curl}">${page }</a> | 
</c:forEach>

</div>





</body>
</html>











