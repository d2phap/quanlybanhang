<%-- 
    Document   : donhang
    Created on : Sep 27, 2013, 5:03:43 PM
    Author     : LEEYOOL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" ></jsp:include>

    <!--CONTENT-->
    <div class="content">
    	<span class="ketquatimkiem">Tìm thấy 200 kết quả.</span>
        
    	<!--TIM KIEM-->
    	<form class="timkiem" name="frmTimKiem" id="frmTimKiem" method="post">
        	<input type="search" class="txt" name="txtSearch" id="txtSearch" placeholder="Nhập từ khoá cần tìm" style="width: 250px;" />
        </form><!--END TIM KIEM-->
    	
        <!--DANH SACH-->
        <div class="danhsach">
        	<ul class="danhsach-header">
                <li style="width:60px;">ID</li>
                <li style="width:250px;">Khách hàng</li>
                <li style="width:100px;">Ngày lập</li>
                <li style="width:200px;">Tổng tiền</li>
                <li style="width:100px; float:right; text-align:right;">
                </li>
            </ul>
            <div class="danhsach-chitiet">                
                <ul class="danhsach-item">
                    <li style="width:60px;">1</li>
                    <li style="width:250px;">Bùi Bá Lộc</li>
                    <li style="width:100px;">23/12/2013</li>
                    <li style="width:200px;">1.455.000</li>
                    <li style="width:100px; float:right; text-align:right;">
                        <a class="lnkSua lnkChiTiet" name="btnChiTiet1" id="btnChiTiet1" data-id="1" data-trangthai="0" title="Xem chi tiết" href="#">Chi tiết</a>
                    </li>
                </ul>
                <div class="danhsach-subitem" id="chiTietDonHang1">
                	<ul class="danhsach-subitem-header">
                        <li style="width:250px;">Sản phẩm</li>
                        <li style="width:100px;">Số lượng</li>
                        <li style="width:130px;">Đơn giá</li>
                        <li style="width:200px;">Tổng tiền</li>
                    </ul>
                    <ul class="danhsach-subitem-item">
                        <li style="width:250px;">Thẻ biến hình</li>
                        <li style="width:100px;">6</li>
                        <li style="width:130px;">200.000</li>
                        <li style="width:200px;">1.200.000</li>
                    </ul>
                    <ul class="danhsach-subitem-item">
                        <li style="width:250px;">Tả lót</li>
                        <li style="width:100px;">2</li>
                        <li style="width:130px;">55.000</li>
                        <li style="width:200px;">110.000</li>
                    </ul>
                    <ul class="danhsach-subitem-item">
                        <li style="width:250px;">Kem trị mụn</li>
                        <li style="width:100px;">1</li>
                        <li style="width:130px;">145.000</li>
                        <li style="width:200px;">145.000</li>
                    </ul>
                </div>
                
                <ul class="danhsach-item">
                    <li style="width:60px;">2</li>
                    <li style="width:250px;">Nguyễn Quốc Tuấn</li>
                    <li style="width:100px;">25/12/2013</li>
                    <li style="width:200px;">1.455.000</li>
                    <li style="width:100px; float:right; text-align:right;">
                        <a class="lnkSua lnkChiTiet" name="btnChiTiet2" id="btnChiTiet2" data-id="2" data-trangthai="0" title="Xem chi tiết" href="#">Chi tiết</a>
                    </li>
                </ul>
                <div class="danhsach-subitem" id="chiTietDonHang2">
                	<ul class="danhsach-subitem-header">
                        <li style="width:250px;">Sản phẩm</li>
                        <li style="width:100px;">Số lượng</li>
                        <li style="width:130px;">Đơn giá</li>
                        <li style="width:200px;">Tổng tiền</li>
                    </ul>
                    <ul class="danhsach-subitem-item">
                        <li style="width:250px;">Thẻ biến hình</li>
                        <li style="width:100px;">6</li>
                        <li style="width:130px;">200.000</li>
                        <li style="width:200px;">1.200.000</li>
                    </ul>
                    <ul class="danhsach-subitem-item">
                        <li style="width:250px;">Tả lót</li>
                        <li style="width:100px;">2</li>
                        <li style="width:130px;">55.000</li>
                        <li style="width:200px;">110.000</li>
                    </ul>
                    <ul class="danhsach-subitem-item">
                        <li style="width:250px;">Kem trị mụn</li>
                        <li style="width:100px;">1</li>
                        <li style="width:130px;">145.000</li>
                        <li style="width:200px;">145.000</li>
                    </ul>
                </div>
                
                <ul class="danhsach-item">
                    <li style="width:60px;">3</li>
                    <li style="width:250px;">Dương Diệu Pháp</li>
                    <li style="width:100px;">27/12/2013</li>
                    <li style="width:200px;">445.000</li>
                    <li style="width:100px; float:right; text-align:right;">
                        <a class="lnkSua lnkChiTiet" name="btnChiTiet3" id="btnChiTiet3" data-id="3" data-trangthai="0" title="Xem chi tiết" href="#">Chi tiết</a>
                    </li>
                </ul>
                <div class="danhsach-subitem" id="chiTietDonHang3">
                	<ul class="danhsach-subitem-header">
                        <li style="width:250px;">Sản phẩm</li>
                        <li style="width:100px;">Số lượng</li>
                        <li style="width:130px;">Đơn giá</li>
                        <li style="width:200px;">Tổng tiền</li>
                    </ul>
                    <ul class="danhsach-subitem-item">
                        <li style="width:250px;">CD Lạ giường - Như Quỳnh</li>
                        <li style="width:100px;">1</li>
                        <li style="width:130px;">445.000</li>
                        <li style="width:200px;">445.000</li>
                    </ul>
                </div>
                
            </div>
        </div><!--END DANH SACH-->
        <div class="danhsach-navigation">
            <a name="btnThemDanhMuc" id="btnThemDanhMuc">< Trang cũ</a>
            <label id="lblTrang">1/4 trang</label>
            <a name="btnThemDanhMuc" id="btnThemDanhMuc">Trang kế ></a>
        </div>
    </div><!--END CONTENT-->

<jsp:include page="footer.jsp" ></jsp:include>