using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DangKyThongTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                KhoiTaoDuLieu();
            }
        }

        private void KhoiTaoDuLieu()
        {
            ddlTrinhDo.Items.Add("Trung Cấp");
            ddlTrinhDo.Items.Add("Cao Đẳng");
            ddlTrinhDo.Items.Add("Đại Học");
            ddlTrinhDo.Items.Add("Sau Đại Học");

            lstNgheNghiep.Items.Add("Công nhân");
            lstNgheNghiep.Items.Add("Kỹ Sư");
            lstNgheNghiep.Items.Add("Lập Trình Viên");
            lstNgheNghiep.Items.Add("Kế Toán Viên");
            lstNgheNghiep.Items.Add("Bác Sĩ");

            cklSoThich.Items.Add("Xem Phim");
            cklSoThich.Items.Add("Mua Sắm");
            cklSoThich.Items.Add("Du Lịch");
            cklSoThich.Items.Add("Chơi Game");
            cklSoThich.Items.Add("Ăn Nhậu");


        }

        protected void btGui_Click(object sender, EventArgs e)
        {
            //b1. thu thập thông tin gửi từ client
            string kq = "<ul>";
            kq += "<li>Họ tên: <b> " + txtHoTen.Text + "</b>";
            kq += string.Format("<li> Ngày sinh: <b> {0} </b>", txtNgaySinh.Text);
            if (rdNam.Checked)
            {
                kq += string.Format("<li> Giới tính: <b> {0} </b>", rdNam.Text);
            }
            else
            {
                kq += string.Format("<li> Giới tính: <b> {0} </b>", rdNu.Text);
            }
            kq += string.Format("<li> Trình độ: <b> {0} </b>", ddlTrinhDo.SelectedItem.Text);
            kq += string.Format("<li> Nghè nghiệp: <b> {0} </b>", lstNgheNghiep.SelectedItem.Text);
            if (FHinh.HasFile)
            {
                //xử lý upload file
                string path = Server.MapPath("~/Uploads"); // lấy đường dẫn tuyệt đối của thư mục trên máy chủ
                string filename = FHinh.FileName; //lấy tên file
                FHinh.SaveAs(path + "/" + filename);

                kq += string.Format("<li>Hình: <img src='/Uploads/{0}' width=300px >", filename);
            }

            kq += "<li> Sở Thích:";
            foreach(ListItem item in cklSoThich.Items)
            {
                if (item.Selected)
                {
                    kq += item.Text + " ; ";
                }
            }

            kq += "</ul>";

            lblKetQua.Text = kq;
        }
    }
}