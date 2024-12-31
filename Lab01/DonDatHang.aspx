<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab01.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.rtl.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 416px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <table align="center" cellpadding="4" class="auto-style1">
                <tr>
                    <td colspan="2">DƠN ĐẶT HÀNG</td>
                </tr>
                <tr>
                    <td class="auto-style2">Khách hàng:</td>
                    <td>&nbsp;<asp:TextBox ID="txtKhachHang" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Địa chỉ:&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Mã số thuế:&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtMaSo" runat="server"></asp:TextBox>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Chọn các loại bánh sau:&nbsp;<br />
                        &nbsp;<asp:DropDownList ID="ddlLoaiBanh" runat="server">
                        </asp:DropDownList>
                        <br />
                        Số lượng:&nbsp;<asp:TextBox ID="txtSoLuong" runat="server"></asp:TextBox>
                        cái<br />
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                    </td>
                    <td>Danh sách bánh được đặt:&nbsp;<br />
                        <asp:ListBox ID="lstDanhSach" runat="server"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2"><asp:Button ID="Button3" runat="server" Text="Button" />
                    </td>
                </tr>              
            </table>

        </div>
    </form>
</body>
</html>
