<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication7._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px" style="font-size: medium">
            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#B5C7DE" />
            <DynamicSelectedStyle BackColor="#507CD1" />
            <Items>
                <asp:MenuItem NavigateUrl="~/default.aspx" Text="Chọn bản" Value="Chọn bản">
                    <asp:MenuItem NavigateUrl="~/KhachHang.aspx" Text="Khách Hàng" Value="Khách Hàng"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/HoaDoan.aspx" Text="Hóa Đơn" Value="New Item"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/SanPham.aspx" Text="Sản Phẩm" Value="New Item"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/LoaiSP.aspx" Text="LoaiSP" Value="LoaiSP"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#507CD1" />
        </asp:Menu>
        <br />
        <h2><strong>Bài Assignment Điện Toán Đám Mây</strong></h2>
        <p style="text-align: left">
            Tên: Trần Lê Hải Quân</p>
        <p style="text-align: left">
            MSSV: PD01228</p>
    
    </div>
    </form>
</body>
</html>
