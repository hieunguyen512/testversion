<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendMail.aspx.cs" Inherits="BaiLab5.SendMail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">Đăng nhập mail&nbsp;để gửi</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_mail" runat="server" Height="21px" Width="176px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_pass" CssClass="auto-style3" ErrorMessage="Nhập email" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_pass" type ="password" runat="server" Height="21px" Width="176px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pass" CssClass="auto-style3" ErrorMessage="Nhập mật khẩu" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="button_SendMail" runat="server" Height="25px" Text="Gửi" Width="86px" OnClick="button_SendMail_Click" />
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="label_notice" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Accounts]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
