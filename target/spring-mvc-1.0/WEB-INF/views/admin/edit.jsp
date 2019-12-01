<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="apiUrl" value="/api/admin-news"/>
<c:url var="newsUrl" value="/admin-news/list"/>
<html>
<head>
    <title>Chỉnh sửa bài viết</title>
</head>
<body>
<div class="container-fluid">
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            Chỉnh sửa bài viết
        </div>
        <div class="card-body">
            <div class="page-content">
                <div class="row">
                    <div class="col-xs-12">
                        <form:form id="formSubmit" modelAttribute="model">
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">Thể loại</label>
                                <div class="col-sm-9">
                                    <form:select class="form-control" id="categoryCode" path="categoryCode">
                                        <form:option value="" label="Chọn thể loại"/>
                                        <form:options items="${categories}"/>
                                    </form:select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">Tiêu đề</label>
                                <div class="col-sm-9">
                                    <form:input cssClass="form-control" id="title" path="title"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">Hình đại diện</label>
                                <div class="col-sm-9">
                                    <form:input cssClass="form-control" id="thumbnail" path="thumbnail"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">Mô tả ngắn</label>
                                <div class="col-sm-9">
                                    <form:input cssClass="form-control" id="shortDescription" path="shortDescription"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">Nội dung</label>
                                <div class="col-sm-9">
                                    <form:textarea rows="" cols="" id="content" path="content"
                                                   cssStyle="width: 750px;height: 175px"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <c:if test="${not empty model.id}">
                                        <input type="button" class="btn btn-white btn-warning btn-bold"
                                               value="Cập nhật bài viết" id="btnAddOrUpdateNew"/>
                                    </c:if>
                                    <c:if test="${empty model.id}">
                                        <input type="button" class="btn btn-white btn-warning btn-bold"
                                               value="Thêm bài viết" id="btnAddOrUpdateNew"/>
                                    </c:if>
                                </div>
                            </div>
                            <form:hidden id="id" path="id"/>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <p class="small text-center text-muted my-5">
        <em>More table examples coming soon...</em>
    </p>
</div>
<script>
    $('#btnAddOrUpdateNew').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (index, result) {
            data["" + result.name + ""] = result.value;
        });
        var id = $('#id').val();
        if (id != "") {
            updateNews(data);
        } else {
            addNews(data);
        }
    });

    function updateNews(data) {
        $.ajax({
            url: '${apiUrl}',
            type: 'PUT',
            contentType: 'application/json',
            dataType: 'json',
            data: JSON.stringify(data),
            success: function (result) {
                window.location.href = "${newsUrl}?page=1&limit=5&message=update_success";
            },
            error: function (error) {
                window.location.href = "${newsUrl}?page=1&limit=5&message=update_error";
            }
        });
    }

    function addNews(data) {
        $.ajax({
            url: '${apiUrl}',
            type: 'POST',
            contentType: 'application/json',
            dataType: 'json',
            data: JSON.stringify(data),
            success: function (result) {
                window.location.href = "${newsUrl}?page=1&limit=5&message=insert_success";
            },
            error: function (error) {
                window.location.href = "${newsUrl}?page=1&limit=5&message=insert_error";
            }
        });
    }
</script>
</body>
</html>
