<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Beginning.Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quản lý thành viên</title>
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
                <hr />
                <asp:GridView ID="data" runat="server" AutoGenerateColumns="False" style="width: 100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowCommand="data_RowCommand" OnSelectedIndexChanged="data_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Username" HeaderText="Username" />
                        <asp:BoundField DataField="Password" HeaderText="Password" />

                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="btnEdit" runat="server" ImageUrl="~/doipass.png" CommandName="Sua" CommandArgument='<%# Eval("Username") %>' />
                                <asp:ImageButton ID="btnDel" runat="server" ImageUrl="~/del.png" CommandName="Xoa" CommandArgument='<%# Eval("Username") %>' CausesValidation="false" OnClientClick='return confirm("Bạn chắc chắn muốn xóa chứ?");' />
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
