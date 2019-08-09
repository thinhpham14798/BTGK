<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Beginning.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang chủ</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style=" width: 500px; margin: 0 auto;">

            <h3 style="text-align:center; color: aqua; font-style:italic;">Xin chào: 
                <asp:Label ID="lblUserName" runat="server" Text="Username"></asp:Label>
                </h3>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Views.aspx">Xem danh sách Nhân viên/ Phòng</asp:HyperLink>
            <hr />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/LocDuLieu.aspx">Xem danh sách NV theo Phòng</asp:HyperLink>
            <hr />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Exit.aspx">Đăng xuất</asp:HyperLink>
            <hr />
            <h2 style="text-align:center; color: red;">Website by ThinhPham1407</h2>
            </div>
            </div>
    </form>
</body>
</html>
