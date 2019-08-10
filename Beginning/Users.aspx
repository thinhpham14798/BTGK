<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Beginning.Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thêm thành viên</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="width: 300px; margin: 0 auto;  border: groove; padding: 10px;">
                <table>
                    <tr>
                        <td><label>Tên đăng nhập:</label></td>
                        <td><asp:TextBox runat="server" ID="txtUserName"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Mật khẩu:</label></td>
                        <td><asp:TextBox runat="server" ID="txtPassword" TextMode="Password"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click"/></td>
                    </tr>
                </table>
                
            </div>
        </div>
    </form>
</body>
</html>
