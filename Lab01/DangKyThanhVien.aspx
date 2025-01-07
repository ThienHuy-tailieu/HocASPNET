<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="Lab01.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.rtl.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style4 {
            width: 140px;
        }
        .auto-style5 {
            width: 356px;
        }
        .auto-style6 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: var(--bs-body-color);
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            background-clip: padding-box;
            border-radius: var(--bs-border-radius);
            transition: none;
            background-color: var(--bs-body-bg);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            
            <table align="center" cellpadding="4" class="w-100">
                <tr>
                    <td colspan="3" class="text-center h3 ">HỒ SƠ ĐĂNG KÝ</td>
                </tr>
                <tr>
                    <td colspan="2" class="text-center h5">Thông tin đăng nhập</td>
                    <td class="text-center h5">Hồ sơ khách hàng</td>
                </tr>
                <tr>
                    <td class="auto-style4">Tên đăng nhập</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtTendn" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td rowspan="12">
                        <asp:Label ID="lblHoSo" runat="server" CssClass="auto-style6" Height="24px" Width="73px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Mật khẩu</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtMatkhau" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Nhập lại mật khẩu</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtNhaplai" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="text-center h5">Thông tin cá nhân</td>
                </tr>
                <tr>
                    <td class="auto-style4">Họ tên khách hàng</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtHoten" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Ngày sinh</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="ddlNgay" runat="server">
                        </asp:DropDownList>
                        /<asp:DropDownList ID="ddlThang" runat="server">
                        </asp:DropDownList>
                        /<asp:DropDownList ID="ddlNam" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Email</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Thu nhập</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtThuNhap" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Giới tính</td>
                    <td class="auto-style5">
                        <asp:CheckBox ID="ckNam" Text="Nam" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Địa chỉ</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Điện thoại</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtDienThoai" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="text-center">
                        <asp:Button ID="btDangKy" runat="server" Text="Đăng Ký" />
                    </td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>
