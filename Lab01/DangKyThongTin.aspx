<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThongTin.aspx.cs" Inherits="Lab01.DangKyThongTin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 195px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="4" class="auto-style1">
                <tr>
                    <td colspan="2">ĐĂNG KÍ THÔNG TIN&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Họ và Tên:</td>
                    <td>
                        <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Ngày Sinh:</td>
                    <td>
                        <asp:TextBox ID="txtNgaySinh" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Giới Tính:</td>
                    <td>
                        <asp:RadioButton ID="rdNam" runat="server" Text="Nam" Checked="true" GroupName="GT" />
                        <asp:RadioButton ID="rdNu" runat="server" Text="Nữ" GroupName="GT"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Trình Độ:</td>
                    <td>
                        <asp:DropDownList ID="ddlTrinhDo" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Nghề Nghiệp:</td>
                    <td>
                        <asp:ListBox ID="lstNgheNghiep" runat="server"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Hình:</td>
                    <td>
                        <asp:FileUpload ID="FHinh" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Sở Thích:</td>
                    <td>
                        <asp:CheckBoxList ID="cklSoThich" runat="server">
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btGui" runat="server" Text="Gửi" OnClick="btGui_Click" />
                        <asp:Button ID="btNhapLai" runat="server" Text="Làm lại" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">KẾT QUẢ ĐĂNG KÝ</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblKetQua" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
