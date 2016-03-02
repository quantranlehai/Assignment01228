<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KhachHang.aspx.cs" Inherits="WebApplication7.WebForm1" %>

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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ID_KH" DataSourceID="SqlDataSource1" style="text-align: center">
            <Columns>
                <asp:BoundField DataField="ID_KH" HeaderText="ID_KH" InsertVisible="False" ReadOnly="True" SortExpression="ID_KH" />
                <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
                <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:quantlhpd01228ConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [ID_KH] = @ID_KH" InsertCommand="INSERT INTO [KhachHang] ([TenKH], [SDT]) VALUES (@TenKH, @SDT)" SelectCommand="SELECT * FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [SDT] = @SDT WHERE [ID_KH] = @ID_KH">
            <DeleteParameters>
                <asp:Parameter Name="ID_KH" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TenKH" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenKH" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
                <asp:Parameter Name="ID_KH" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID_KH" DataSourceID="SqlDataSource1" GridLines="Both">
            <EditItemTemplate>
                ID_KH:
                <asp:Label ID="ID_KHLabel1" runat="server" Text='<%# Eval("ID_KH") %>' />
                <br />
                TenKH:
                <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
                <br />
                SDT:
                <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <InsertItemTemplate>
                TenKH:
                <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
                <br />
                SDT:
                <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ID_KH:
                <asp:Label ID="ID_KHLabel" runat="server" Text='<%# Eval("ID_KH") %>' />
                <br />
                TenKH:
                <asp:Label ID="TenKHLabel" runat="server" Text='<%# Bind("TenKH") %>' />
                <br />
                SDT:
                <asp:Label ID="SDTLabel" runat="server" Text='<%# Bind("SDT") %>' />
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
