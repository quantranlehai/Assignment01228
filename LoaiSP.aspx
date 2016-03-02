<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoaiSP.aspx.cs" Inherits="WebApplication7.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ID_LoaiSP" DataSourceID="SqlDataSource1" style="text-align: center">
            <Columns>
                <asp:BoundField DataField="ID_LoaiSP" HeaderText="ID_LoaiSP" InsertVisible="False" ReadOnly="True" SortExpression="ID_LoaiSP" />
                <asp:BoundField DataField="TenLoai" HeaderText="TenLoai" SortExpression="TenLoai" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:quantlhpd01228ConnectionString %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [ID_LoaiSP] = @ID_LoaiSP" InsertCommand="INSERT INTO [LoaiSanPham] ([TenLoai]) VALUES (@TenLoai)" SelectCommand="SELECT * FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenLoai] = @TenLoai WHERE [ID_LoaiSP] = @ID_LoaiSP">
            <DeleteParameters>
                <asp:Parameter Name="ID_LoaiSP" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TenLoai" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenLoai" Type="String" />
                <asp:Parameter Name="ID_LoaiSP" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID_LoaiSP" DataSourceID="SqlDataSource1" GridLines="Both">
            <EditItemTemplate>
                ID_LoaiSP:
                <asp:Label ID="ID_LoaiSPLabel1" runat="server" Text='<%# Eval("ID_LoaiSP") %>' />
                <br />
                TenLoai:
                <asp:TextBox ID="TenLoaiTextBox" runat="server" Text='<%# Bind("TenLoai") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <InsertItemTemplate>
                TenLoai:
                <asp:TextBox ID="TenLoaiTextBox" runat="server" Text='<%# Bind("TenLoai") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ID_LoaiSP:
                <asp:Label ID="ID_LoaiSPLabel" runat="server" Text='<%# Eval("ID_LoaiSP") %>' />
                <br />
                TenLoai:
                <asp:Label ID="TenLoaiLabel" runat="server" Text='<%# Bind("TenLoai") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
