<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="buildingListUrl" value="/admin/building-list"/>
<html>
<head>
    <title>Danh Sách Tòa Nhà</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Home</a>
                </li>
                <li class="active">Dashboard</li>
            </ul><!-- /.breadcrumb -->


        </div>

        <div class="page-content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="widget-box">
                        <div class="widget-header">
                            <h4 class="widget-title">Tìm kiếm</h4>
                            <div class="widget-toolbar">
                                <a href="" data-action="collapse">
                                    <i class="ace-icon fa fa-chevron-up"></i>
                                </a>
                            </div>
                        </div>
                        <div class="widget-body">
                            <div class="widget-main">
                                <form:form commandName="modelSearch" action="buildingListUrl" id="listForm" method="get">
                                    <div class="col-sm-6">
                                        <div>
                                            <label for="name" class="font-weight-bold">Tên tòa nhà</label>
                                           <%-- <input type="text" id="name" class="form-control" name="name" value="${modelSearch.name}">--%>
                                            <form:input path="name" cssClass="form-control"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div>
                                            <label for="buildingArea" class="font-weight-bold">Diện tích sàn</label>
                                            <input type="number" id="buildingArea" class="form-control" name="buildingArea" value="${modelSearch.buildingArea}">
                                        </div>
                                    </div>

                                    <div class="col-sm-4">
                                        <div>
                                            <label for="district" class="font-weight-bold">Quận hiện có</label>
                                            <select id="district" class="form-control">
                                                <option>--Chọn quận--</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div>
                                            <label for="ward" class="font-weight-bold">Phường</label>
                                            <form:input path="ward" cssClass="form-control"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div>
                                            <label for="street" class="font-weight-bold">Đường</label>
                                            <form:input path="street" cssClass="form-control"/>
                                        </div>
                                    </div>

                                    <div class="col-sm-4">
                                        <div>
                                            <label for="numberOfBasement" class="font-weight-bold">Số tầng hầm</label>
                                            <input type="number" id="numberOfBasement" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div>
                                            <label for="direction" class="font-weight-bold">Hướng</label>
                                            <input type="number" id="direction" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div>
                                            <label for="rate" class="font-weight-bold">Hạng</label>
                                            <input type="number" id="rate" class="form-control">
                                        </div>
                                    </div>

                                    <div class="col-sm-3">
                                        <div>
                                            <label for="areaRentFrom" class="font-weight-bold">Diện tích từ</label>
                                            <input type="number" id="areaRentFrom" class="form-control"
                                                   name="areaRentFrom">
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div>
                                            <label for="areaRentTo" class="font-weight-bold">Diện tích đến</label>
                                            <input type="number" id="areaRentTo" class="form-control" name="areaRentTo">
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div>
                                            <label for="costRentFrom" class="font-weight-bold">Giá thuê từ</label>
                                            <input type="number" id="costRentFrom" class="form-control"
                                                   name="costRentFrom">
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div>
                                            <label for="costRentTo" class="font-weight-bold">Diện tích đến</label>
                                            <input type="number" id="costRentTo" class="form-control" name="costRentTo">
                                        </div>
                                    </div>

                                    <div class="col-sm-4">
                                        <div>
                                            <label for="managerName" class="font-weight-bold">Tên quản lý</label>
                                            <input type="text" id="managerName" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div>
                                            <label for="managerPhone" class="font-weight-bold">Điện thoại quản
                                                lý</label>
                                            <input type="number" id="managerPhone" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div>
                                            <label for="assignmentStaff" class="font-weight-bold">Nhân viên phụ
                                                trách</label>
                                            <select id="assignmentStaff" class="form-control">
                                                <option>--Chọn nhân viên phụ trách--</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <input type="checkbox" id="type" name="type" checked>
                                        <label for="type">{{building type}}</label>
                                    </div>

                                    <button type="button" class="btn btn-success" id="btnSearch">Tìm kiếm <i class="glyphicon glyphicon-arrow-right"></i></button>
                                    <!-- PAGE CONTENT ENDS -->
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- /.row -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="pull-right">
                        <button class="btn btn-white btn-info btn-bold">
                            <i class="fa fa-plus-circle" aria-hidden="true" data-toggle="tooltip"
                               title="Thêm tòa nhà"></i>
                        </button>
                        <button class="btn btn-white btn-warning btn-bold">
                            <i class="fa fa-trash" aria-hidden="true" data-toggle="tooltip" title="Xóa tòa nhà"
                               id="btnDeleteBuilding"></i>
                        </button>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">

                    <table id="buildingList" class="table  table-bordered table-hover">
                        <thead>
                        <tr>
                            <th class="center">

                            </th>
                            <th>Tên sản phẩm</th>
                            <th>Địa chỉ</th>
                            <th>Tên quản lý</th>
                            <th>Số điện thoại</th>
                            <th>Diện tích sàn</th>
                            <th>Giá thuê</th>
                            <th>Phí dịch vụ</th>
                            <th>Thao tác</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><input type="checkbox" name="" value="1" id="checkbox_1"></td>
                            <td>Nam Giao Building</td>
                            <td>abc</td>
                            <td>abc</td>
                            <td>abc</td>
                            <td>abc</td>
                            <td>abc</td>
                            <td>abc</td>
                            <td>
                                <button class="btn btn-xs btn-info" data-toggle="tooltip" title="Giao tòa nhà"
                                        onclick="assignmentBuilding()">
                                    <i class="fa fa-bars" aria-hidden="true"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="" value="2" id="checkbox"></td>
                            <td>LandMark Tower</td>
                            <td>abc</td>
                            <td>abc</td>
                            <td>abc</td>
                            <td>abc</td>
                            <td>abc</td>
                            <td>abc</td>
                            <td>
                                <button class="btn btn-xs btn-info" data-toggle="tooltip" title="Giao tòa nhà"
                                        onclick="assignmentBuilding()">
                                    <i class="fa fa-bars" aria-hidden="true"></i>
                                </button>
                            </td>
                        </tr>
                        </tbody>
                    </table>

                </div>
            </div>
        </div><!-- /.page-content -->
    </div>
</div><!-- /.main-content -->
<div class="modal fade" id="assignmentBuildingModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Danh sách nhân viên</h4>
            </div>
            <div class="modal-body">
                <table class="table table-bordered" id="staffList">
                    <thead>
                    <tr>
                        <th>Chọn nhân viên</th>
                        <th>Tên nhân viên</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input type="checkbox" name="" value="2" id="checkbox_2"></td>
                        <td>Otto</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" name="" value="3" id="checkbox_3"></td>
                        <td>Thornton</td>
                    </tr>
                    </tbody>
                </table>
                <input type="hidden" name="buildingId" id="buildingId" value="">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="btnAssignBuilding">Giao tòa nhà</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
            </div>
        </div>

    </div>
</div>
<%--modal fade--%>
<script type="text/javascript">
    function assignmentBuilding(buildingId) {
        openModalAssignmentBuilding();
        $('#buildingId').val(buildingId);
        console.log($('#buildingId').val());
    }

    function openModalAssignmentBuilding() {
        $('#assignmentBuildingModal').modal();
    }

    $('btnAssignBuilding').click(function (e) {
        e.preventDefault();
        var data = {};
        data['buildingId'] = $('buildingId').val();
        //$('#staffList').find('tbody input[type=checkbox]');
        var staffs = $('#staffList').find('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        data['stats'] = staffs;
        assignStaff(data);
    });

    function assignStaff(data) {
        $.ajax({
            url: 'http://localhost:8080/api-user-assignment',
            type: 'POST',
            dataType: 'json',
            data: JSON.stringify(data),
            contentType: "application/json",
            complete: function (xhr, textStatus) {

            },
            success: function (response) {
                console.log('success');
            },
            error: function (response) {
                console.log('error');
                console.log(response);
            }
        });
        $('#btnDeleteBuilding').click(function (e) {
            e.preventDefault();
            var data = {};
            var buildingIds = $('#buildingList').find('tbody input[type=checkbox]:checked').map(function () {
                return $(this).val();
            }).get();
            data['buildingIds'] = buildingIds;
            deleteBuilding(data);
        });

        function deleteBuilding(data) {
            $.ajax({
                url: 'http://localhost:8080/api-building-assignment',
                type: 'DELETE',
                dataType: 'json',
                data: JSON.stringify(data),
                contentType: "application/json",
                complete: function (xhr, textStatus) {

                },
                success: function (response) {
                    console.log('success');
                },
                error: function (response) {
                    console.log('error');
                    console.log(response);
                }
            });
        }
        $('#btnSearch').click(function (e) {
            e.preventDefault();
            $('#listForm').submit();
        });
    }
</script>
</body>
</html>
