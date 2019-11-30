<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title><dec:title default="Trang quản trị" /></title>

    <!-- Custom fonts for this template-->
    <link href="<c:url value='/template/admin/vendor/fontawesome-free/css/all.min.css' />" rel="stylesheet" type="text/css" media="all"/>
    <!-- Page level plugin CSS-->
    <link href="<c:url value='/template/admin/vendor/datatables/dataTables.bootstrap4.css' />" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom styles for this template-->
    <link href="<c:url value='/template/admin/css/sb-admin.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="<c:url value='/template/admin/css/checkbox.css' />" rel="stylesheet" type="text/css" media="all"/>
    <script src="<c:url value='/template/admin/vendor/jquery/jquery.min.js' />"></script>
    <script src="<c:url value='/template/admin/paging/jquery.twbsPagination.js' />"></script>
</head>
<body id="page-top">
<!-- header -->
<%@ include file="/common/admin/header.jsp" %>
<!-- header -->

<div id="wrapper">
    <!-- Sidebar -->
    <%@ include file="/common/admin/menu.jsp" %>
    <!-- Sidebar -->

    <div class="content-wrapper">
        <div class="container-fluid">
            <dec:body/>
        </div>
        <!-- footer -->
        <%@ include file="/common/admin/footer.jsp" %>
        <!-- footer -->
    </div>
</div>

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="<c:url value="/thoat-admin"/>">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script type="text/javascript" src="<c:url value='/template/admin/vendor/bootstrap/js/bootstrap.bundle.min.js' />"></script>
<!-- Core plugin JavaScript-->
<script type="text/javascript" src="<c:url value='/template/admin/vendor/jquery-easing/jquery.easing.min.js' />"></script>
<!-- Page level plugin JavaScript-->
<script type="text/javascript" src="<c:url value='/template/admin/vendor/chart.js/Chart.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/admin/vendor/datatables/jquery.dataTables.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/admin/vendor/datatables/dataTables.bootstrap4.js' />"></script>
<!-- Custom scripts for all pages-->
<script type="text/javascript" src="<c:url value='/template/admin/js/sb-admin.min.js' />"></script>
<!-- Demo scripts for this page-->
<script type="text/javascript" src="<c:url value='/template/admin/js/demo/datatables-demo.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/admin/js/demo/chart-area-demo.js' />"></script>
</body>
</html>