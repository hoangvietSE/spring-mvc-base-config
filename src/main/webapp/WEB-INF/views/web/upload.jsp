<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
<h1>Spring MVC multi files upload example</h1>

<c:url var="upload" value="/upload"/>
<form:form method="POST" action="${upload}"
           modelAttribute="uploadForm" enctype="multipart/form-data">

    <form:input type="file" path="files"/><br/>
    <input type="submit" value="Submit"/>

</form:form>

</body>
</html>
<html>
