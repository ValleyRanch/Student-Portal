﻿using System;
using System.Data;
using System.Web.UI.WebControls;

namespace Imcs_Protal_Asp
{
    public partial class ViewAssessments : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //gvbind();
            }
        }
        protected void gvbind()
        {
            AssessmentBLL sqlHelper = new AssessmentBLL();
            DataSet ds = sqlHelper.GetAllAssessments();

            //if (ds.Tables[0].Rows.Count > 0)
            //{
            //    GridView1.DataSource = ds;
            //    GridView1.DataBind();
            //}
            //else
            //{
            //    ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            //    GridView1.DataSource = ds;
            //    GridView1.DataBind();
            //    int columncount = GridView1.Rows[0].Cells.Count;
            //    GridView1.Rows[0].Cells.Clear();
            //    GridView1.Rows[0].Cells.Add(new TableCell());
            //    GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
            //    GridView1.Rows[0].Cells[0].Text = "No Records Found";
            //}
        }
        //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        //    Label lbldeleteid = (Label)row.FindControl("lblID");
        //    //conn.Open();
        //    //SqlCommand cmd = new SqlCommand("delete FROM detail where id='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", conn);
        //    //cmd.ExecuteNonQuery();
        //    //conn.Close();
        //    //gvbind();
        //}
        //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    GridView1.EditIndex = e.NewEditIndex;
        //    gvbind();
        //}
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            //GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            //Label lblID = (Label)row.FindControl("lblID");
            ////TextBox txtname=(TextBox)gr.cell[].control[];  
            //TextBox textName = (TextBox)row.Cells[0].Controls[0];
            //TextBox textadd = (TextBox)row.Cells[1].Controls[0];
            //TextBox textc = (TextBox)row.Cells[2].Controls[0];
            ////TextBox textadd = (TextBox)row.FindControl("txtadd");  
            ////TextBox textc = (TextBox)row.FindControl("txtc");  
            //GridView1.EditIndex = -1;
            //conn.Open();
            ////SqlCommand cmd = new SqlCommand("SELECT * FROM detail", conn);  
            //SqlCommand cmd = new SqlCommand("update detail set name='" + textName.Text + "',address='" + textadd.Text + "',country='" + textc.Text + "'where id='" + userid + "'", conn);
            //cmd.ExecuteNonQuery();
            //conn.Close();
            // gvbind();
            //GridView1.DataBind();  
        }
        //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    GridView1.PageIndex = e.NewPageIndex;
        //    gvbind();
        //}
        //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{
        //    GridView1.EditIndex = -1;
        //    gvbind();
        //}
    }

}
