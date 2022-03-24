<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmPage.aspx.cs" Inherits="BaiLab5.ConfirmPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 624px;
            margin-left: 520px;
            margin-right: 520px;
        }
        .auto-style3 {
            text-align: center;
            height: 62px;
        }
        .auto-style4 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style5 {
            height: 173px;
            position: static;
            width: 421px;
        }
        .auto-style6 {
            height: 24px;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style10 {
            height: 24px;
            width: 706px;
            text-align: center;
            font-size: large;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style13 {
            width: 1371px;
        }
        .auto-style23 {
            width: 706px;
            text-align: center;
            font-size: large;
        }
        .auto-style24 {
            height: 23px;
            width: 706px;
            text-align: center;
            font-size: large;
        }
        .auto-style25 {
            width: 706px;
            font-size: large;
        }
        .auto-style26 {
            width: 706px;
            text-align: center;
        }
        .auto-style27 {
            color: #FF0000;
            font-size: xx-large;
        }
        .auto-style28 {
            text-align: center;
        }
        .auto-style30 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style31 {
            color: #FF0000;
        }
        .auto-style32 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style13">
        <div class="auto-style1">
            <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#FF6600" Height="64px" Width="424px">
                <div class="auto-style3">
                    <br />
                    <span class="auto-style4"><strong>Xác Nhận<br /> </strong></span></div>
            </asp:Panel>
            </div>
            <asp:Panel ID="Panel2" runat="server" Width="424px" Height="457px">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tên đăng nhập:<br /> </td>
                        <td>
                            <asp:Label ID="label_User" runat="server" CssClass="auto-style12" Text="Label"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;Họ tên:</td>
                        <td>
                            <asp:TextBox ID="txt_Name" runat="server" CssClass="auto-style32" Width="157px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_Name" ErrorMessage="Nhập họ và tên" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ngày sinh:</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txt_Date" runat="server" CssClass="auto-style32" Width="157px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_Date" ErrorMessage="Nhập ngày sinh" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Số điện thoại:<br /> </td>
                        <td class="auto-style6">
                            <asp:Label ID="label_Phone" runat="server" CssClass="auto-style12" Text="Label"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style24">&nbsp; Địa chỉ:<br /> </td>
                        <td class="auto-style7">
                            <asp:Label ID="label_Addr" runat="server" CssClass="auto-style12" Text="Label"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mã sản phẩm:<br /> </td>
                        <td>
                            <asp:Label ID="label_MaSP" runat="server" Text="Label" CssClass="auto-style12"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tên sản phẩm:<br /> </td>
                        <td class="auto-style6">
                            <asp:Label ID="label_TenSP" runat="server" Text="Label" CssClass="auto-style12"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Loại sản phẩm:<br /> </td>
                        <td>
                            <asp:Label ID="label_LoaiSP" runat="server" Text="Label" CssClass="auto-style12"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Giá:<br /> </td>
                        <td>
                            <asp:Label ID="label_Gia" runat="server" Text="Label" CssClass="auto-style12"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp; Số lượng<br /> </td>
                        <td>
                            <asp:DropDownList ID="drop_SoLuong" runat="server" AutoPostBack="True" Width="81px" CssClass="auto-style32">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style27">Thành tiền</span></td>
                        <td>
                            <asp:Label ID="label_ThanhTien" runat="server" Text="Label" CssClass="auto-style27"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Accounts]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [SanPham]"></asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT * FROM [QLKH]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">
                            <strong>
                            <asp:Button ID="button_Confirm" runat="server" BackColor="#FF6600" CssClass="auto-style30" ForeColor="White" Height="34px" OnClick="Button1_Click" Text="Xác Nhận" Width="94px" />
                            </strong>
                        </td>
                        <td class="auto-style28">
                            <strong>
                            <asp:Button ID="button_Cancel" runat="server" BackColor="#FF6600" CssClass="auto-style30" ForeColor="White" Height="34px" Text="Hủy" Width="89px" OnClick="button_Cancel_Click" />
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26" colspan="2">
                            <asp:Label ID="label_Notice" runat="server" Text="Label" CssClass="auto-style31" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
