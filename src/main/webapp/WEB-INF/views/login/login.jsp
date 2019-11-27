<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>

<html>

<head>
    <title>Đăng nhập</title>
</head>

<body>

<!-- Page Content -->
<div id="formContent">
    <!-- Icon -->
    <div class="fadeIn first">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTDwicjrC_5Nzf889J7J-SLLg3DH1w4pcyuLrxS4Uf5qWfrCiGU" id="icon" alt="User Icon" />
    </div>

    <!-- Login Form -->
    <form action="j_spring_security_check" method="POST">
        <input type="text" id="login" class="fadeIn second" name="j_username" placeholder="Tên đăng nhập">
        <input type="password" id="password" class="fadeIn third" name="j_password" placeholder="Mật khẩu">
        <input type="submit" class="fadeIn fourth" value="Đăng nhập">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
        <a class="underlineHover" href="#">Quên mật khẩu?</a>
    </div>

</div>
</div>
<!-- /.container -->

</body>

</html>