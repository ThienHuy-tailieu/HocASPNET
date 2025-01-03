﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddlLoaiBanh.Items.Add("Bánh mì");
                ddlLoaiBanh.Items.Add("Bánh tiêu");
                ddlLoaiBanh.Items.Add("Bánh tét");
                ddlLoaiBanh.Items.Add("Bánh su");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tenbanh = ddlLoaiBanh.SelectedItem.Text;
            int soluong = int.Parse(txtSoLuong.Text);
            string kq = string.Format("{0} ({1})", tenbanh, soluong);
            lstDanhSach.Items.Add(kq);
        }

        protected void ibtXoa_Click(object sender, ImageClickEventArgs e)
        {
            for(int i = lstDanhSach.Items.Count - 1; i >= 0; i--)
            {
                if (lstDanhSach.Items[i].Selected)
                {
                    lstDanhSach.Items.RemoveAt(i);
                }
            }
        }

        protected void btInDonHang_Click(object sender, EventArgs e)
        {
            string kq = "<div class='h3 text-center'>HOÁ ĐƠN ĐẶT HÀNG</div>";
            kq += "<div class='border p-3'>";

            kq += string.Format("Khách hàng: <b> {0} </b> <br>", txtKhachHang.Text);
            kq += string.Format("Địa chỉ: <b> {0} </b> <br>", txtKhachHang.Text);
            kq += string.Format("Khách hàng: <b> {0} </b> <br>", txtKhachHang.Text);
        }
    }
}