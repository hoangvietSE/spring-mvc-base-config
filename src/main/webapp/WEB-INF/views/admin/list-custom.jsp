<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>

<html>

<head>
    <title>Danh sách</title>
</head>

<body>

<!-- Page Content -->
<div class="container-fluid">

    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Tables</li>
    </ol>

    <!-- Single button -->
    <div style="margin: 10px">
        <div>
            <div class="dropdown" id="dropdown">
                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                    Tác vụ
                </button>
                <button type="button" class="btn btn-success">
                    <span class="btn-label"><i class="fa fa-refresh"></i></span> Làm mới
                </button>
                <button type="button" class="btn btn-labeled btn-primary">
                    <span class="btn-label"><i class="fa fa-filter"></i></span> Tìm kiếm
                </button>
                <button type="button" class="btn btn-success" id="btn-add" style="float: right">
                    <span class="btn-label"><i class="fa fa-plus"></i></span> Thêm mới
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Xóa lựa chọn</a>
                    <a class="dropdown-item" href="#">Link 1</a>
                    <a class="dropdown-item" href="#">Link 2</a>
                </div>
            </div>

        </div>
    </div>

    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            Data Table Example
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
                    <div class="row">
                        <div class="col-sm-12">
                            <table class="table table-bordered dataTable" id="dataTable" width="100%"
                                   cellspacing="0" role="grid" aria-describedby="dataTable_info"
                                   style="width: 100%;">
                                <thead>
                                <tr role="row">
                                    <th tabindex="0" aria-controls="dataTable" rowspan="1"
                                        colspan="1">
                                        <label class="customcheck">
                                            <input type="checkbox" checked="checked">
                                            <span class="checkmark"></span>
                                        </label>
                                    </th>
                                    <th class="sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1"
                                        colspan="1" aria-sort="ascending"
                                        aria-label="Name: activate to sort column descending" style="width: 147px;">
                                        Name
                                    </th>
                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1"
                                        colspan="1" aria-label="Position: activate to sort column ascending"
                                        style="width: 230px;">Position
                                    </th>
                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1"
                                        colspan="1" aria-label="Office: activate to sort column ascending"
                                        style="width: 105px;">Office
                                    </th>
                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1"
                                        colspan="1" aria-label="Age: activate to sort column ascending"
                                        style="width: 47px;">Age
                                    </th>
                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1"
                                        colspan="1" aria-label="Start date: activate to sort column ascending"
                                        style="width: 101px;">Start date
                                    </th>
                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1"
                                        colspan="1" aria-label="Salary: activate to sort column ascending"
                                        style="width: 82px;">Salary
                                    </th>
                                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1"
                                        colspan="1" aria-label="Salary: activate to sort column ascending"
                                        style="width: 82px;">Tác vụ
                                    </th>
                                </tr>
                                </thead>
                                <tfoot>
                                </tfoot>
                                <tbody>
                                <tr role="row" class="odd">
                                    <td>
                                        <label class="customcheck">
                                            <input type="checkbox" checked="checked">
                                            <span class="checkmark"></span>
                                        </label>
                                    </td>
                                    <td class="sorting_1">Airi Satou</td>
                                    <td>Accountant</td>
                                    <td>Tokyo</td>
                                    <td>33</td>
                                    <td>2008/11/28</td>
                                    <td>$162,700</td>
                                    <td>
                                        <a href="#" data-id="85"
                                           class="btn btn-icon btn-sm btn-primary deleteDialog tip">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr role="row" class="even">
                                    <td>
                                        <label class="customcheck">
                                            <input type="checkbox" checked="checked">
                                            <span class="checkmark"></span>
                                        </label>
                                    </td>
                                    <td class="sorting_1">Angelica Ramos</td>
                                    <td>Chief Executive Officer (CEO)</td>
                                    <td>London</td>
                                    <td>47</td>
                                    <td>2009/10/09</td>
                                    <td>$1,200,000</td>
                                    <td>
                                        <a href="#" data-id="85"
                                           class="btn btn-icon btn-sm btn-primary deleteDialog tip">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr role="row" class="even">
                                    <td>
                                        <label class="customcheck">
                                            <input type="checkbox" checked="checked">
                                            <span class="checkmark"></span>
                                        </label>
                                    </td>
                                    <td class="sorting_1">Angelica Ramos</td>
                                    <td>Chief Executive Officer (CEO)</td>
                                    <td>London</td>
                                    <td>47</td>
                                    <td>2009/10/09</td>
                                    <td>$1,200,000</td>
                                    <td>
                                        <a href="#" data-id="85"
                                           class="btn btn-icon btn-sm btn-primary deleteDialog tip">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr role="row" class="even">
                                    <td>
                                        <label class="customcheck">
                                            <input type="checkbox" checked="checked">
                                            <span class="checkmark"></span>
                                        </label>
                                    </td>
                                    <td class="sorting_1">Angelica Ramos</td>
                                    <td>Chief Executive Officer (CEO)</td>
                                    <td>London</td>
                                    <td>47</td>
                                    <td>2009/10/09</td>
                                    <td>$1,200,000</td>
                                    <td>
                                        <a href="#" data-id="85"
                                           class="btn btn-icon btn-sm btn-primary deleteDialog tip">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr role="row" class="even">
                                    <td>
                                        <label class="customcheck">
                                            <input type="checkbox" checked="checked">
                                            <span class="checkmark"></span>
                                        </label>
                                    </td>
                                    <td class="sorting_1">Angelica Ramos</td>
                                    <td>Chief Executive Officer (CEO)</td>
                                    <td>London</td>
                                    <td>47</td>
                                    <td>2009/10/09</td>
                                    <td>$1,200,000</td>
                                    <td>
                                        <a href="#" data-id="85"
                                           class="btn btn-icon btn-sm btn-primary deleteDialog tip">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr role="row" class="even">
                                    <td>
                                        <label class="customcheck">
                                            <input type="checkbox" checked="checked">
                                            <span class="checkmark"></span>
                                        </label>
                                    </td>
                                    <td class="sorting_1">Angelica Ramos</td>
                                    <td>Chief Executive Officer (CEO)</td>
                                    <td>London</td>
                                    <td>47</td>
                                    <td>2009/10/09</td>
                                    <td>$1,200,000</td>
                                    <td>
                                        <a href="#" data-id="85"
                                           class="btn btn-icon btn-sm btn-primary deleteDialog tip">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr role="row" class="even">
                                    <td>
                                        <label class="customcheck">
                                            <input type="checkbox" checked="checked">
                                            <span class="checkmark"></span>
                                        </label>
                                    </td>
                                    <td class="sorting_1">Angelica Ramos</td>
                                    <td>Chief Executive Officer (CEO)</td>
                                    <td>London</td>
                                    <td>47</td>
                                    <td>2009/10/09</td>
                                    <td>$1,200,000</td>
                                    <td>
                                        <a href="#" data-id="85"
                                           class="btn btn-icon btn-sm btn-primary deleteDialog tip">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr role="row" class="even">
                                    <td>
                                        <label class="customcheck">
                                            <input type="checkbox" checked="checked">
                                            <span class="checkmark"></span>
                                        </label>
                                    </td>
                                    <td class="sorting_1">Angelica Ramos</td>
                                    <td>Chief Executive Officer (CEO)</td>
                                    <td>London</td>
                                    <td>47</td>
                                    <td>2009/10/09</td>
                                    <td>$1,200,000</td>
                                    <td>
                                        <a href="#" data-id="85"
                                           class="btn btn-icon btn-sm btn-primary deleteDialog tip">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr role="row" class="even">
                                    <td>
                                        <label class="customcheck">
                                            <input type="checkbox" checked="checked">
                                            <span class="checkmark"></span>
                                        </label>
                                    </td>
                                    <td class="sorting_1">Angelica Ramos</td>
                                    <td>Chief Executive Officer (CEO)</td>
                                    <td>London</td>
                                    <td>47</td>
                                    <td>2009/10/09</td>
                                    <td>$1,200,000</td>
                                    <td>
                                        <a href="#" data-id="85"
                                           class="btn btn-icon btn-sm btn-primary deleteDialog tip">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr role="row" class="even">
                                    <td>
                                        <label class="customcheck">
                                            <input type="checkbox" checked="checked">
                                            <span class="checkmark"></span>
                                        </label>
                                    </td>
                                    <td class="sorting_1">Angelica Ramos</td>
                                    <td>Chief Executive Officer (CEO)</td>
                                    <td>London</td>
                                    <td>47</td>
                                    <td>2009/10/09</td>
                                    <td>$1,200,000</td>
                                    <td>
                                        <a href="#" data-id="85"
                                           class="btn btn-icon btn-sm btn-primary deleteDialog tip">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr role="row" class="even">
                                    <td>
                                        <label class="customcheck">
                                            <input type="checkbox" checked="checked">
                                            <span class="checkmark"></span>
                                        </label>
                                    </td>
                                    <td class="sorting_1">Angelica Ramos</td>
                                    <td>Chief Executive Officer (CEO)</td>
                                    <td>London</td>
                                    <td>47</td>
                                    <td>2009/10/09</td>
                                    <td>$1,200,000</td>
                                    <td>
                                        <a href="#" data-id="85"
                                           class="btn btn-icon btn-sm btn-primary deleteDialog tip">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr role="row" class="even">
                                    <td>
                                        <label class="customcheck">
                                            <input type="checkbox" checked="checked">
                                            <span class="checkmark"></span>
                                        </label>
                                    </td>
                                    <td class="sorting_1">Angelica Ramos</td>
                                    <td>Chief Executive Officer (CEO)</td>
                                    <td>London</td>
                                    <td>47</td>
                                    <td>2009/10/09</td>
                                    <td>$1,200,000</td>
                                    <td>
                                        <a href="#" data-id="85"
                                           class="btn btn-icon btn-sm btn-primary deleteDialog tip">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr role="row" class="even">
                                    <td>
                                        <label class="customcheck">
                                            <input type="checkbox" checked="checked">
                                            <span class="checkmark"></span>
                                        </label>
                                    </td>
                                    <td class="sorting_1">Angelica Ramos</td>
                                    <td>Chief Executive Officer (CEO)</td>
                                    <td>London</td>
                                    <td>47</td>
                                    <td>2009/10/09</td>
                                    <td>$1,200,000</td>
                                    <td>
                                        <a href="#" data-id="85"
                                           class="btn btn-icon btn-sm btn-primary deleteDialog tip">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
<%--                    <div class="row">--%>
<%--                        <div class="col-sm-12 col-md-5">--%>
<%--                            <div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">--%>
<%--                                Showing 1 to 10 of 57 entries--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-sm-12 col-md-7">--%>
<%--                            <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">--%>
<%--                                <ul class="pagination">--%>
<%--                                    <li class="paginate_button page-item previous disabled" id="dataTable_previous">--%>
<%--                                        <a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0"--%>
<%--                                           class="page-link">Previous</a></li>--%>
<%--                                    <li class="paginate_button page-item active"><a href="#"--%>
<%--                                                                                    aria-controls="dataTable"--%>
<%--                                                                                    data-dt-idx="1" tabindex="0"--%>
<%--                                                                                    class="page-link">1</a></li>--%>
<%--                                    <li class="paginate_button page-item "><a href="#" aria-controls="dataTable"--%>
<%--                                                                              data-dt-idx="2" tabindex="0"--%>
<%--                                                                              class="page-link">2</a></li>--%>
<%--                                    <li class="paginate_button page-item "><a href="#" aria-controls="dataTable"--%>
<%--                                                                              data-dt-idx="3" tabindex="0"--%>
<%--                                                                              class="page-link">3</a></li>--%>
<%--                                    <li class="paginate_button page-item "><a href="#" aria-controls="dataTable"--%>
<%--                                                                              data-dt-idx="4" tabindex="0"--%>
<%--                                                                              class="page-link">4</a></li>--%>
<%--                                    <li class="paginate_button page-item "><a href="#" aria-controls="dataTable"--%>
<%--                                                                              data-dt-idx="5" tabindex="0"--%>
<%--                                                                              class="page-link">5</a></li>--%>
<%--                                    <li class="paginate_button page-item "><a href="#" aria-controls="dataTable"--%>
<%--                                                                              data-dt-idx="6" tabindex="0"--%>
<%--                                                                              class="page-link">6</a></li>--%>
<%--                                    <li class="paginate_button page-item next" id="dataTable_next"><a href="#"--%>
<%--                                                                                                      aria-controls="dataTable"--%>
<%--                                                                                                      data-dt-idx="7"--%>
<%--                                                                                                      tabindex="0"--%>
<%--                                                                                                      class="page-link">Next</a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                </div>
            </div>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
    </div>

</div>
<!-- /.container-fluid -->
<!-- /.container -->

</body>

</html>