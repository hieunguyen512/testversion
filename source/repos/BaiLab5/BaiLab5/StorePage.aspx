<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StorePage.aspx.cs" Inherits="BaiLab5.StorePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style4 {
            height: 22px;
            text-align: center;
        }
        .auto-style6 {
            color: #FF0000;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            height: 23px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1"  runat="server" BackColor="#FF6600" Height="64px">
                <div class="auto-style8">
                    <br />
                    <strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Tất Cả Sản Phẩm"></asp:Label>
                    </strong>
                </div>
            </asp:Panel>
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style4">
                        <a href ="RegistrationPage.aspx?Mahang=001">
                        <asp:Image ID="Image1" src="AoQuan/Ao/polo_1.jpg"  runat="server" Height="194px" Width="218px" /></a>
                        <br />
                        Áo polo Hàn Quốc<br />
                        <span class="auto-style6"><strong>359.000 đ</strong></span></td>
                    <td class="auto-style4">
                        <a href ="RegistrationPage.aspx?MaHang=002">
                        <asp:Image ID="Image2" src="AoQuan/Ao/somi_1.jpg" runat="server" Height="194px" Width="218px" /></a>
                        <br />
                        Áo sơ mi kaki<br />
                        <span class="auto-style6"><strong>299.000 đ</strong></span></td>
                    <td class="auto-style4">
                        <a href ="RegistrationPage.aspx?MaHang=003">
                        <asp:Image ID="Image3" src="AoQuan/Ao/aothun_1.jpg" runat="server" Height="194px" Width="218px" /></a>
                        <br />
                        Áo thun American<br />
                        <span class="auto-style6"><strong>249.000 đ</strong></span></td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <br />
                        <a href ="RegistrationPage.aspx?MaHang=004">
                        <asp:Image ID="Image4" src="AoQuan/Quan/Jogger_1.jpg" runat="server" Height="194px" Width="218px" /></a>
                        <br />
                        Quần Jogger<br />
                        <span class="auto-style6"><strong>199.000 đ</strong></span></td>
                    <td class="auto-style9">
                        <br />
                        <a href ="RegistrationPage.aspx?MaHang=005">
                        <asp:Image ID="Image5" src="AoQuan/Quan/Kaki_1.jpg"  runat="server" Height="194px" Width="218px" /></a>
                        <br />
                        Quần Kaki<br />
                        <span class="auto-style6"><strong>259.000 đ</strong></span></td>
                    <td class="auto-style9">
                        <br />
                        <a href ="RegistrationPage.aspx?MaHang=006">
                        <asp:Image ID="Image6" src="AoQuan/Quan/QuanTay_1.jpg" runat="server" Height="194px" Width="218px"  /></a>
                        <br />
                        Quần Tây
                        <br />
                        <span class="auto-style6"><strong>349.000 đ</strong></span></td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
