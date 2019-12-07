<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<html>

<body>
<h1>Upload Status</h1>
<h2>Message : ${message}</h2>
<c:set var="image" value='${requestScope["imageUpload"]}'/>
<img width="100px" height="100px" src="${pageContext.request.contextPath}/images/image/${image}' />" alt=""/>
</body>
</html>