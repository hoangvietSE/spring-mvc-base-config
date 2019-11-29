<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="newsUrl" value="/admin-news/list"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách bài viết</title>
</head>
<body>
<div class="container-fluid">
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            Data Table Example
        </div>
        <div class="card-body">
            <c:if test="${not empty alert}">
                <div class="alert alert-${alert}">
                    <strong>${messageResponse}</strong>
                </div>
            </c:if>
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
                                                <a flag="info"
                                                   class="dt-button buttons-colvis btn btn-white btn-primary btn-bold"
                                                   data-toggle="tooltip" title='Thêm bài viết'
                                                   href='<c:url value="#"/>'> <span>
													<i class="fa fa-plus-circle bigger-110 purple"></i>
											</span>
                                                </a>
                                                <button id="btnDelete" type="button" disabled
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
                                                            <c:url var="editURL" value="#">
                                                                <c:param name="type" value="edit"/>
                                                                <c:param name="id" value="${item.id}"/>
                                                            </c:url>
                                                            <a class="btn btn-icon btn-sm btn-primary tip"
                                                               data-toggle="tooltip"
                                                               title="Cập nhật bài viết" href='${editURL}'><i
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
</div>
<!-- /.main-content -->
<script type="text/javascript">
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

    $('#btnDelete').click(function () {
        var data = {};
        var ids = $('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        data["ids"] = ids;
        deleteNews(data);
    });

    function deleteNews(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'DELETE',
            contentType: 'application/json',
            dataType: 'json',
            data: JSON.stringify(data),
            success: function () {
                window.location.href = "${NewsURL}?type=list&page=1&maxPageItem=5&sortName=title&sortBy=ASC&message=delete_success";
            },
            error: function () {
                window.location.href = "${NewsURL}?type=list&page=1&maxPageItem=5&sortName=title&sortBy=ASC&message=delete_error";
            }
        })
    }
</script>
</body>
</html>