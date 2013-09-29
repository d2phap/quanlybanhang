<%-- 
    Document   : sanpham
    Created on : Sep 26, 2013, 9:07:29 AM
    Author     : LEEYOOL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" ></jsp:include>
    
    <!--CONTENT-->
    <div class="content">
    	<span class="ketquatimkiem">Tìm thấy 200 kết quả.</span>
        
    	<!--TIM KIEM-->
        <form class="timkiem" name="frmTimKiem" id="frmTimKiem" method="post" action="<%= request.getContextPath() %>/sanpham?action=timkiem">
        	<input type="search" class="txt" name="txtSearch" id="txtSearch" placeholder="Nhập từ khoá cần tìm" style="width: 250px;" />
        </form><!--END TIM KIEM-->
    	
        <!--DANH SACH-->
        <div class="danhsach">
        	<ul class="danhsach-header">
                <li style="width:60px;">ID</li>
                <li style="width:250px;">Tên sản phẩm</li>
                <li style="width:200px;">Danh mục</li>
                <li style="width:200px;">Ảnh</li>
                <li style="width:80px;">Số lượng</li>
                <li style="width:130px;">Đơn giá</li>
                <li style="width:80px; text-align:center;">Trạng thái</li>
                <li style="width:100px; float:right; text-align:right;">
                    <a href="<%= request.getContextPath() %>/sanpham/themmoi" name="btnThemSanPham" id="btnThemSanPham" title="Thêm sản phẩm mới">+ Thêm mới</a>
                </li>
            </ul>
            <div class="danhsach-chitiet">                
                <ul class="danhsach-item">
                    <li style="width:60px;">1</li>
                    <li style="width:250px;">Thẻ biến hình</li>
                    <li style="width:200px;">Linh tinh</li>
                    <li style="width:200px;">
                    	<a href="https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-prn2/1174529_721584957857833_159548707_n.jpg" title="https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-prn2/1174529_721584957857833_159548707_n.jpg" target="_blank">
                            ...57857833_159548707_n.jpg
                        </a>
                    </li>
                    <li style="width:80px;">522</li>
                    <li style="width:130px;">200.000</li>
                    <li style="width:80px; text-align:center;">
                        <img class="imgTrangThai" name="imgTrangThai1" id="imgTrangThai1" src="<%= request.getContextPath() %>/images/check.png" alt="" width="16" height="16" data-code="1" title="Kích hoạt" />
                    </li>
                    <li style="width:100px; float:right; text-align:right;">
                        <a class="lnkSua" name="btnSua1" id="btnSua1" data-id="1" data-trangthai="0" title="Sửa sản phẩm" href="<%= request.getContextPath() %>/sanpham/capnhat?id=1">Sửa</a>
                        <a class="lnkXoa" name="btnXoa1" id="btnXoa1" data-id="1" title="Xoá sản phẩm" href="<%= request.getContextPath() %>/sanpham?action=xoa&id=1">Xoá</a>
                    </li>
                </ul>
                
                
            </div>
        </div><!--END DANH SACH-->
    </div><!--END CONTENT-->
    
<jsp:include page="footer.jsp" ></jsp:include>