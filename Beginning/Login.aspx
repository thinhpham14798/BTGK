<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Beginning.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập vào hệ thống</title>
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
                        <td><asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" OnClick="btnLogin_Click"/></td>
                    </tr>
                </table>
                
            </div>
        </div>
    </form>
</body>
</html>
