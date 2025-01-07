using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DangKyThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Khoitaodulieu();
            }
        }

        private void Khoitaodulieu()
        {
            ddlNgay.Items.Add(new ListItem("--ngày--", ""));
            for(int i = 1; i <= 31; i++)
            {
                ddlNgay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            ddlThang.Items.Add(new ListItem("--tháng--", ""));
            for (int i = 1; i <= 12; i++)
            {
                ddlThang.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            ddlNam.Items.Add(new ListItem("--năm--", ""));
            for (int i = 1970; i <= 2005; i++)
            {
                ddlNam.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }

        protected void btDangKy_Click(object sender, EventArgs e)
        {
            string kq = "<ul>";

            kq += $"<li> Họ tên: <i> {txtHoten.Text}</i>";
            kq += $"<li> Tên đăng nhập: <i> {txtTendn.Text}</i>";
            kq += $"<li> Mật khẩu: <i> {txtMatkhau.Text}</i>";
            kq += $"<li> Ngày sinh: <i> {ddlNgay.SelectedItem.Text}/{ddlThang.SelectedItem.Text}/{ddlNam.SelectedItem.Text}</i>";
            if (ckNam.Checked)
            {
                kq += $"<li> Giới tính: <i>{ckNam.Text}</i>";
            }
            else
            {
                kq += $"<li> Giới tính: <i>Nữ</i>";
            }
            kq += $"<li> Email: <i>{txtEmail.Text}</i>";
            kq += $"<li> Địa chỉ: <i>{txtDiaChi.Text}</i>";
            kq += $"<li> Điện thoại: <i>{txtDienThoai.Text}</i>";

            kq += "</ul>";

            lblHoSo.Text = kq;
        }
    }
}