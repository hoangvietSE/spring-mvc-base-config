<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="newsUrl" value="/admin-news/list"/>
<c:url var="apiAdminNews" value="/api/admin-news"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách bài viết</title>
</head>
<body>
<div>
    <c:if test="${not empty alert}">
        <div class="alert alert-${alert}" id="alert">
                ${message}
        </div>
    </c:if>
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Tables</li>
    </ol>

    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            Data Table Example
        </div>
        <div class="card-body">
            <form action="<c:url value='/admin-news/list'/>" id="formSubmit"
                  method="get">
                <div class="main-content-inner">
                    <%--                    <div class="breadcrumbs ace-save-state" id="breadcrumbs">--%>
                    <%--                        <ul class="breadcrumb">--%>
                    <%--                            <li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Trang--%>
                    <%--                                chủ</a></li>--%>
                    <%--                        </ul>--%>
                    <%--                        <!-- /.breadcrumb -->--%>
                    <%--                    </div>--%>
                    <div class="page-content">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="table-btn-controls">
                                        <div class="pull-right tableTools-container">
                                            <div class="dt-buttons btn-overlap btn-group">
                                                <c:url var="editUrlNoId" value="/admin-news/edit"/>
                                                <a flag="info"
                                                   class="dt-button buttons-colvis btn btn-white btn-primary btn-bold"
                                                   data-toggle="tooltip" title='Thêm bài viết'
                                                   href='${editUrlNoId}'> <span>
													<i class="fa fa-plus-circle bigger-110 purple"></i>
											</span>
                                                </a>
                                                <button id="btnDelete" type="button" onclick="onConfirmDelete()"
                                                        class="dt-button buttons-html5 btn btn-white btn-primary btn-bold"
                                                        data-toggle="tooltip" title='Xóa bài viết'>
												<span> <i class="fa fa-trash-o bigger-110 pink"></i>
												</span>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                <tr>
                                                    <th><input type="checkbox" id="checkAll"></th>
                                                    <th>Tiêu đề</th>
                                                    <th>Mô tả ngắn</th>
                                                    <th>Nội dung</th>
                                                    <th>Thao tác</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="item" items="${model.listResult}">
                                                    <tr>
                                                        <td><input type="checkbox" id="checkbox_${item.id}"
                                                                   value="${item.id}">
                                                        </td>
                                                        <td>${item.title}</td>
                                                        <td>${item.shortDescription}</td>
                                                        <td>${item.content}</td>
                                                        <td width="20%">
                                                            <c:url var="editUrlById" value="/admin-news/edit">
                                                                <c:param name="id" value="${item.id}"/>
                                                            </c:url>
                                                            <a class="btn btn-icon btn-sm btn-primary tip"
                                                               data-toggle="tooltip"
                                                               title="Cập nhật bài viết" href='${editUrlById}'><i
                                                                    class="fa fa-pencil" aria-hidden="true"></i>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                            <nav aria-label="Page navigation">
                                                <ul class="pagination" id="pagination"></ul>
                                            </nav>
                                            <%--                                    <input type="hidden" value="" id="type" name="type"/>--%>
                                            <input type="hidden" value="" id="page" name="page"/>
                                            <input type="hidden" value="" id="limit" name="limit"/>
                                            <%--                                    <input type="hidden" value="" id="sortName" name="sortName"/>--%>
                                            <%--                                    <input type="hidden" value="" id="sortBy" name="sortBy"/>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <p class="small text-center text-muted my-5">
        <em>More table examples coming soon...</em>
    </p>
</div>
<!-- /.main-content -->
<script type="text/javascript">
    $(document).ready(function () {
        $("#alert").fadeTo(2000, 500).slideUp(500, function () {
            $("#alert").slideUp(500);
        });
    });
    $(function () {
        var currentPage = ${model.page};
        var limit = ${model.limit};
        var totalPage = ${model.totalPage};
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPage,
            visiblePages: 5,
            startPage: currentPage,
            onPageClick: function (event, page) {
                if (currentPage != page) {
                    $('#page').val(page);
                    $('#limit').val(limit);
                    $('#formSubmit').submit();
                }
            }
        })
    });

    function onConfirmDelete() {
        swal({
            title: "Xác nhận xóa",
            text: "Bạn có chắc chắn muốn xóa hay không",
            type: "warning",
            showCancelButton: true,
            confirmButtonClass: "btn-success",
            cancelButtonClass: "btn-danger",
            confirmButtonText: "Xác nhận",
            cancelButtonText: "Hủy bỏ",
        }).then(function(isConfirm) {
            if (isConfirm) {
                var ids = $('tbody input[type=checkbox]:checked').map(function () {
                    return $(this).val();
                }).get();
                deleteNews(ids);
            }
        });
    }

    $('#btnDelete').click(function () {
    });

    function deleteNews(data) {
        $.ajax({
            url: '${apiAdminNews}',
            type: 'DELETE',
            contentType: 'application/json',
            data: JSON.stringify(data),
            success: function (result) {
                window.location.href = "${NewsURL}?page=1&limit=5&message=delete_success";
            },
            error: function (error) {
                window.location.href = "${NewsURL}?page=1&limit=5&message=delete_error";
            }
        });
    }
</script>
</body>
</html>