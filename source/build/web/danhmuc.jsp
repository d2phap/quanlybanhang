<%-- 
    Document   : danhmuc
    Created on : Sep 26, 2013, 9:06:06 AM
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
            	<li style="width:50px;">ID</li>
                <li style="width:400px;">Tên danh mục</li>
                <li style="width:80px; text-align:center;">Trạng thái</li>
                <li style="width:100px; float:right; text-align:right;">
                	<a href="themdanhmucmoi.html" name="btnThemDanhMuc" id="btnThemDanhMuc" title="Thêm danh mục mới">+ Thêm mới</a>
                </li>            </ul>
            <div class="danhsach-chitiet">
                <ul class="danhsach-item">
                    <li style="width:50px;">1</li>
                    <li style="width:400px;">
                        <input type="text" class="editField" name="txtTenDanhMuc1" id="txtTenDanhMuc1" readonly value="Quần áo trẻ em" title="Quần áo trẻ em" />
                    </li>
                    <li style="width:80px; text-align:center;">
                        <img class="imgTrangThai" name="imgTrangThai1" id="imgTrangThai1" src="images/check.png" alt="" width="16" height="16" data-code="1" title="Kích hoạt" />
                    </li>
                    <li style="width:100px; float:right; text-align:right;">
                        <a class="lnkSua" name="btnSua1" id="btnSua1" data-id="1" data-trangthai="0" title="Sửa danh mục">Sửa</a>
                        <a class="lnkXoa" name="btnXoa1" id="btnXoa1" data-id="1" title="Xoá danh mục">Xoá</a>
                    </li>
                </ul>
                <ul class="danhsach-item">
                    <li style="width:50px;">2</li>
                    <li style="width:400px;">
                        <li style="width:400px;">
                        <input type="text" class="editField" name="txtTenDanhMuc2" id="txtTenDanhMuc2" readonly value="Quần áo người lớn" title="Quần áo người lớn" />
                    </li>
                    </li>
                    <li style="width:80px; text-align:center;">
                        <img class="imgTrangThai" name="imgTrangThai2" id="imgTrangThai2" src="files/images/delete.png" alt="" width="16" height="16" data-code="0" title="Ẩn" />
                    </li>
                    <li style="width:100px; float:right; text-align:right;">
                        <a class="lnkSua" name="btnSua2" id="btnSua2" data-id="2" data-trangthai="0" title="Sửa danh mục">Sửa</a>
                        <a class="lnkXoa" name="btnXoa2" id="btnXoa2" data-id="2" title="Xoá danh mục">Xoá</a>
                    </li>
                </ul>
                <ul class="danhsach-item">
                    <li style="width:50px;">3</li>
                    <li style="width:400px;">
                        <li style="width:400px;">
                        <input type="text" class="editField" name="txtTenDanhMuc3" id="txtTenDanhMuc3" readonly value="Thiết bị điện tử" title="Thiết bị điện tử" />
                    </li>
                    </li>
                    <li style="width:80px; text-align:center;">
                        <img class="imgTrangThai" name="imgTrangThai3" id="imgTrangThai3" src="files/images/check.png" alt="" width="16" height="16" data-code="1" title="Kích hoạt" />
                    </li>
                    <li style="width:100px; float:right; text-align:right;">
                    	<a class="lnkSua" name="btnSua3" id="btnSua3" data-id="3" data-trangthai="0" title="Sửa danh mục">Sửa</a>
                        <a class="lnkXoa" name="btnXoa3" id="btnXoa3" data-id="3" title="Xoá danh mục">Xoá</a>
                    </li>
                </ul>
                
            </div>
        </div><!--END DANH SACH-->
        <div class="danhsach-navigation">
            <a name="btnThemDanhMuc" id="btnThemDanhMuc">< Trang cũ</a>
            <label id="lblTrang">1/4 trang</label>
            <a name="btnThemDanhMuc" id="btnThemDanhMuc">Trang kế ></a>
        </div>
    </div><!--END CONTENT-->
   
    
<jsp:include page="footer.jsp" ></jsp:include>