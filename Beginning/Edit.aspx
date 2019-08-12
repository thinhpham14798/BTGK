<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Beginning.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đổi Password</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="width: 300px; margin: 0 auto;  border: groove; padding: 10px;">
                <table>
                    <tr>
                        <td><label>Tên đăng nhập:</label></td>
                        <td>
                            <asp:Label ID="username" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><label>Mật khẩu mới:</label></td>
                        <td><asp:TextBox runat="server" ID="txtPassword" TextMode="Password"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><asp:Button ID="btnDoi" runat="server" Text="Đổi" OnClick="btnDoi_Click"/></td>
                    </tr>
                </table>
                <hr />
            </div>
        </div>
    </form>
</body>
</html>
