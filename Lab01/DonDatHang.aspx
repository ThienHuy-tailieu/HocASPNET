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
                    <td class="text-center">Chọn các loại bánh sau:&nbsp;<br />
                        &nbsp;<asp:DropDownList ID="ddlLoaiBanh" runat="server" CssClass="form-select">
                        </asp:DropDownList>
                        <br />
                        Số lượng:&nbsp;<asp:TextBox ID="txtSoLuong" runat="server"></asp:TextBox>
                        cái<br />
                        <asp:Button ID="Button1" runat="server" Text="&gt;" />
                    </td>
                    <td class="text-center">Danh sách bánh được đặt:&nbsp;<br />
                        <asp:ListBox ID="lstDanhSach" runat="server" CssClass="form-control"></asp:ListBox>
                        <br />
                        <asp:ImageButton ID="ImageButton1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="text-center" colspan="2"><asp:Button ID="Button3" runat="server" Text="In đơn đặt hàng" />
                    </td>
                </tr>              
            </table>

        </div>
    </form>
</body>
</html>
