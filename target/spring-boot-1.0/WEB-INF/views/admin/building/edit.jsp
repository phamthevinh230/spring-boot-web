<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<c:url var="buildingAPI" value="/api/building"/>
<html>
<head>
    <title>Chỉnh sửa tòa nhà</title>
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
                    <form class="form-horizontal" role="form" id="formEdit">
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name">Tên tòa nhà</label>
                            <div class="col-sm-9">
                                <input type="text" id="name" class="form-control" name="name" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="assignmentStaff">Người quản lý sản phẩm</label>
                            <div class="col-sm-9">
                                <input type="text" id="assignmentStaff" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <%--<div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="">Quận</label>
                            <div class="col-sm-9">
                                <input type="text" id="" class="form-control" name=""/>
                            </div>
                        </div>--%>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="ward">Phường</label>
                            <div class="col-sm-9">
                                <input type="text" id="ward" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="street">Đường</label>
                            <div class="col-sm-9">
                                <input type="text" id="street" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="structure">Kết cấu</label>
                            <div class="col-sm-9">
                                <input type="text" id="structure" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="numberofBasement">Số tầng hầm</label>
                            <div class="col-sm-9">
                                <input type="text" id="numberofBasement" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="floorArea">Diện tích sàn</label>
                            <div class="col-sm-9">
                                <input type="text" id="floorArea" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="direction">Hướng</label>
                            <div class="col-sm-9">
                                <input type="text" id="direction" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="rate">Hạng</label>
                            <div class="col-sm-9">
                                <input type="text" id="rate" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="rentArea">Diện tích thuê</label>
                            <div class="col-sm-9">
                                <input type="text" id="rentArea" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="areaDescription">Mô tả diện tích</label>
                            <div class="col-sm-9">
                                <input type="text" id="areaDescription" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="priceDescription">Mô tả giá</label>
                            <div class="col-sm-9">
                                <input type="text" id="priceDescription" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="serviceFee">Phí dịch vụ</label>
                            <div class="col-sm-9">
                                <input type="text" id="serviceFee" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="carFee">Phí ô tô</label>
                            <div class="col-sm-9">
                                <input type="text" id="carFee" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="motoFee">Phí mô tô</label>
                            <div class="col-sm-9">
                                <input type="text" id="motoFee" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="overtimeFee">Phí ngoài giờ</label>
                            <div class="col-sm-9">
                                <input type="text" id="overtimeFee" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="eclectricBill">Tiền điện</label>
                            <div class="col-sm-9">
                                <input type="text" id="eclectricBill" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="deposit">Đặt cọc</label>
                            <div class="col-sm-9">
                                <input type="text" id="deposit" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="payment">Thanh toán</label>
                            <div class="col-sm-9">
                                <input type="text" id="payment" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="leaseTerm">Thời hạn thuê</label>
                            <div class="col-sm-9">
                                <input type="text" id="leaseTerm" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="decorationTime">Thời gian trang trí</label>
                            <div class="col-sm-9">
                                <input type="text" id="decorationTime" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="managerName">Tên quản lý</label>
                            <div class="col-sm-9">
                                <input type="text" id="managerName" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="managerPhone">Số điện thoại quản lý</label>
                            <div class="col-sm-9">
                                <input type="text" id="managerPhone" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="brokerageFee">Phí môi giới</label>
                            <div class="col-sm-9">
                                <input type="text" id="brokerageFee" class="form-control" name="" value=""/>
                            </div>
                        </div>
                        <%--<div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="buildingTypes">Loại tòa
                                nhà</label>
                            <div class="col-sm-9">
                                <label class="checkbox-inline"><input type="checkbox" name="buildingTypes"
                                                                      value="TANG_TRET" id="buildingTypes">Tầng
                                    trệt</label>
                                <label class="checkbox-inline"><input type="checkbox" name="buildingTypes"
                                                                      value="NGUYEN_CAN" id="buildingTypes">Nguyên
                                    căn</label>
                                <label class="checkbox-inline"><input type="checkbox" name="buildingTypes"
                                                                      value="NOI_THAT" id="buildingTypes">Nội
                                    thất</label>
                            </div>
                        </div>--%>
                        <!-- <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="areaRent">Diện tích thuê</label>
                            <div class="col-sm-9">
                                <input type="number" id="areaRent" class="form-control" name="areaRent" />
                            </div>
                        </div> -->
                        <div class="form-group">
                            <%--<label class="col-sm-3 control-label no-padding-right" for="areaRent"></label>--%>
                            <div class="col-sm-9">
                                <button type="button" class="btn btn-primary" id="btnAddBuilding">Thêm tòa nhà</button>
                                <button type="button" class="btn btn-warning">Hủy</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div><!-- /.row -->
        </div><!-- /.page-content -->
    </div>
</div><!-- /.main-content -->
<script type="text/javascript">
    $('#btnAddBuilding').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formEdit').serializeArray();
        var buildingTypes = [];
        /*$.each(formData, function (index, val) {
            if (val.name == 'buildingTypes') {
                buildingTypes.push(val.value);
            } else {
                data["" + val.name + ""] = val.value;
            }
        });*/
        $.each(formData, function (index, val){
            data[""+val.name+""] = val.value;

        });
        $.ajax({
            type: 'POST',
            url: '${buildingAPI}',
            data: JSON.stringify(data),
            dataType: "json",
            contentType: "application/json",
            success: function (response){
                console.log('success');
            },
            error: function (response){
                console.log('failed');
                console.log(response);
            }
        });


        data['buildingTypes'] = buildingTypes;
        $.jQuery.ajax({
            url: 'http://localhost:8080/api-building',
            type: 'POST',
            dataType: 'xml/html/script/json/jsonp',
            data: JSON.stringify(data),
            contentType: "application/json",
            complete: function (xhr, textStatus) {

            },
            success: function (data, textStatus, xhr) {
                console.log('success');
            },
            error: function (xhr, textStatus, errorThrown) {
                console.log('error');
                console.log(response);
            }
        });

    });
</script>
</body>
</html>
