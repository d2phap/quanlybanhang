<%-- 
    Document   : index
    Created on : Sep 24, 2013, 8:58:14 AM
    Author     : LEEYOOL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Đăng nhập | Quản lý bán hàng</title>
    
    <link type="text/css" href="css/main.css" rel="stylesheet" />
	<script type="text/javascript" src="js/jquery_min.js"></script>
</head>

<body>
	<form class="dangnhap" name="frmDangNhap" id="frmDangNhap" method="post">
    	<input type="text" class="txt" name="txtUsername" id="txtUsername" required="required" placeholder="Tên đăng nhập" style="width:100px;" />
        <input type="password" class="txt" name="txtPassword" id="txtPassword" required="required" placeholder="Mật khẩu" />
        <input type="submit" class="btn" name="btnLogin" id="btnLogin" value="Đăng nhập" />
    </form>
</body>
</html>
