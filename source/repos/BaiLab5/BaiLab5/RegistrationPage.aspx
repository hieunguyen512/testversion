<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="BaiLab5.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký tài khoản</title>
    <style type="text/css">
        .auto-style1 {
            height: 624px;
            margin-left: 520px;
            margin-right: 520px;
            margin-top: 0px;
        }
        .auto-style5 {
            width: 100%;
            height: 159px;
        }
        .auto-style6 {
            width: 228px;
        }
        .auto-style15 {
            width: 425px;
            height: 64px;
            position: absolute;
            top: 15px;
            left: 530px;
            z-index: 1;
            text-align: center;
        }
        .auto-style16 {
            font-size: x-large;
        }
        .auto-style17 {
            width: 454px;
        }
        .auto-style18 {
            position: static;
        }
        .auto-style19 {
            text-align: center;
        }
        .auto-style20 {
            font-weight: bold;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel2" runat="server" Height="447px" CssClass="auto-style18" Width="424px">
                <asp:Panel ID="Panel3" runat="server" BackColor="#FF6600" Height="64px" CssClass="auto-style15" style="position: static">
                    <br />
                    <strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style16" ForeColor="White" Text="Đăng Ký Tài Khoản"></asp:Label>
                    </strong>
                </asp:Panel>
                <table class="auto-style5" style="position: static">
                            <tr>
                                <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    &nbsp;Tên đăng nhập:<br /> <br /> </td>
                                <td class="auto-style6"
                                    <br />
                                    <br />
                                    <asp:TextBox ID="txt_Username" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_Username" ErrorMessage="Nhập tên đăng nhập" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style17">&nbsp; Mật khẩu:<br /> <br /> </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="txt_Pwd" type="password" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_Pwd" ErrorMessage="Nhập mật khẩu" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style17">&nbsp; Email:<br /> <br /> </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="txt_Email" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_Email" ErrorMessage="Nhập email" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style17">&nbsp; Địa chỉ:<br /> 
                                    <br />
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="txt_Addr" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_Addr" ErrorMessage="Nhập địa chỉ" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style17">&nbsp; Số điện thoại:<br /> <br /> </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="txt_Phone" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_Phone" ErrorMessage="Nhập số điện thoại" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="auto-style19">
                                    <strong>
                                    <br />
                                    <asp:Button ID="button_Registration" runat="server" BackColor="#FF6600" CssClass="auto-style20" ForeColor="White" Height="32px" Text="Đăng Ký" Width="85px" OnClick="button_Registration_Click" />
                                    <br />
                                    <br />
                                    </strong>
                                    <asp:Label ID="label_Error" runat="server" ForeColor="Red" Text="Hello world" Visible="False"></asp:Label>
                                    <br />
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Accounts]"></asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
