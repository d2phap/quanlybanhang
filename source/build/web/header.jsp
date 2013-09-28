<%-- 
    Document   : header
    Created on : Sep 27, 2013, 5:03:58 PM
    Author     : LEEYOOL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Quản lý bán hàng</title>
    
    <link type="text/css" href="css/main.css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery_min.js"></script>
    
    <% 
        String serveletName = request.getAttribute("ServeletName").toString();
        
        if (serveletName == "danhmuc") {
                out.print("<script type='text/javascript' src='js/danhmuc.js' ></script>");
        } else if (serveletName == "sanpham") {
            out.print("<script type='text/javascript' src='js/sanpham.js' ></script>");
        } else if (serveletName == "donhang") {
            out.print("<script type='text/javascript' src='js/donhang.js' ></script>");
        } else if (serveletName == "khachhang") {
            out.print("<script type='text/javascript' src='js/khachhang.js' ></script>");
        } else if (serveletName == "nguoidung") {
            out.print("<script type='text/javascript' src='js/nguoidung.js' ></script>");
        }
        
    %>
    
   
</head>

<body>
	<!--HEADER-->
    <div class="header">
    	<a href="danhmuc.html" title="Quản lý bán hàng" style="outline:none;"><h1>QUẢN LÝ BÁN HÀNG</h1></a>
        
        <!--NAVIGATION BAR-->
        <ul class="navigation">
            <a href="danhmuc" title="Danh mục sản phẩm" class="<% if (serveletName == "danhmuc") { out.print("navigation-item-selected"); } %>"><li>Danh mục sản phẩm</li></a>
            <a href="sanpham" title="Quản lý sản phẩm" class="<% if (serveletName == "sanpham") { out.print("navigation-item-selected"); } %>"><li>Quản lý sản phẩm</li></a>
            <a href="donhang" title="Quản lý đơn hàng" class="<% if (serveletName == "donhang") { out.print("navigation-item-selected"); } %>"><li>Quản lý đơn hàng</li></a>
            <a href="khachhang" title="Quản lý khách hàng" class="<% if (serveletName == "khachhang") { out.print("navigation-item-selected"); } %>"><li>Quản lý khách hàng</li></a>
            <a href="nguoidung" title="Quản lý người dùng" class="<% if (serveletName == "nguoidung") { out.print("navigation-item-selected"); } %>"><li>Quản lý người dùng</li></a>
        </ul><!--NAVIGATION BAR-->
    </div><!--END HEADER-->