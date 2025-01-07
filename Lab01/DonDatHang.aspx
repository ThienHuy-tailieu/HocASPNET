<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab01.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.rtl.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style2 {
            width: 350px;
        }
        .auto-style5 {
            text-align: center;
            width: 350px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <table align="center" cellpadding="4" class="w-75">
                <tr>
                    <td colspan="2" class="text-center h3 alert alert-info">ĐƠN ĐẶT HÀNG</td>
                </tr>
                <tr>
                    <td class="auto-style2">Khách hàng:</td>
                    <td>&nbsp;<asp:TextBox ID="txtKhachHang" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Địa chỉ:&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control"></asp:TextBox>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Mã số thuế:&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtMaSo" runat="server" CssClass="form-control"></asp:TextBox>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Chọn các loại bánh sau:&nbsp;<br />
                        &nbsp;<asp:DropDownList ID="ddlLoaiBanh" runat="server" CssClass="form-select">
                        </asp:DropDownList>
                        <br />
                        Số lượng:&nbsp;<asp:TextBox ID="txtSoLuong" runat="server"></asp:TextBox>
                        cái<br />
                        <br />
                        <asp:Button ID="btThem" runat="server" Text="&gt;" OnClick="Button1_Click" Width="39px" />
                    </td>
                    <td class="text-center">Danh sách bánh được đặt:&nbsp;<br />
                        <asp:ListBox ID="lstBanh" runat="server" CssClass="form-control" SelectionMode="Multiple"></asp:ListBox>
                        <br />
                        <asp:ImageButton ID="ibtXoa" runat="server" ImageUrl="~/Images/Images/delete.gif" OnClick="ibtXoa_Click" style="height: 16px" />
                    </td>
                </tr>
                <tr>
                    <td class="text-center" colspan="2"><asp:Button ID="btInDonHang" runat="server" Text="In đơn đặt hàng" OnClick="btInDonHang_Click" />
                    </td>
                </tr>              
            </table>
            <asp:Label ID="lbHoaDon" runat="server" ForeColor="#ff0000"></asp:Label>
        </div>
    </form>
</body>
</html>
