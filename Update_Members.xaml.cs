using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Data.SqlClient;
using System.Data;
using Prism.Services.Dialogs;

namespace Gym_Management_System
{
    public partial class Update_Members : Window
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\NSBM\Project\Gym Management System\database\Gym Management.mdf;Integrated Security=True;Connect Timeout=30");
        string pwd = Class1.GetRandomPassword(20);
        string idNum;
        public Update_Members()
        {
            InitializeComponent();
            Loaded += Update_Members_Loaded;
        }

        private void Update_Members_Loaded(object sender, EventArgs e)
        {

            string pwd = Class1.GetRandomPassword(20);
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            fillGrid();
        }

        public void fillGrid()
        {
            dataGridView1.Columns.Clear();
            dataGridView1.Items.Refresh();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Register_member";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            dataGridView1.ItemsSource = dt.DefaultView;
        }

        private void selectedCellsChanged(object sender, SelectedCellsChangedEventArgs e)
        {
            DataGrid gd = (DataGrid)sender;
            DataRowView row_selected = gd.SelectedItem as DataRowView;
            if(row_selected != null)
            {
                NewMemberFNameTxt.Text = row_selected["firstname"].ToString();
                NewMemberLNameTxt.Text = row_selected["lastname"].ToString();
                NewMemberEmailTxt.Text = row_selected["email"].ToString();
                NewMemberPhoneNumberTxt.Text = row_selected["phonenum"].ToString();
                NewMemberNICTxt.Text = row_selected["nic"].ToString();
                NewMemberInstructorID.Text = row_selected["instruc_id"].ToString();
                NewMemberInstructorName.Text = row_selected["instruc_name"].ToString();
            }
            idNum = row_selected["id"].ToString();
        }

        private void MemberNameSearch_KeyUp(object sender, KeyEventArgs e)
        {
            try
            {
                dataGridView1.Columns.Clear();
                dataGridView1.Items.Refresh();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Register_member where firstname like '%" + MemberNameSearch.Text + "%' ";
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                dataGridView1.ItemsSource = dt.DefaultView;
            }

            catch (Exception ex)
            {
                MsgProfile msgProfile = new MsgProfile(ex.ToString());
                msgProfile.Show();
            }
        }

        private void Update_Members1_Click(object sender, RoutedEventArgs e)
        {
            dataGridView1.Items.Refresh();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update  Register_member set firstname='" + NewMemberFNameTxt.Text + "',lastname='" + NewMemberLNameTxt.Text + "',email='" + NewMemberEmailTxt.Text + "',phonenum='" + NewMemberPhoneNumberTxt.Text + "',nic='" + NewMemberNICTxt.Text + "',instruc_id='" + NewMemberInstructorID.Text + "',instruc_name='" + NewMemberInstructorName.Text + "' where id = " + Convert.ToInt32(idNum) + " ";
            cmd.ExecuteNonQuery();

            MsgProfile msgProfile = new MsgProfile("Record Update Successfully!!");
            msgProfile.Show();

            fillGrid();

            NewMemberFNameTxt.Text = "";
            NewMemberLNameTxt.Text = "";
            NewMemberEmailTxt.Text = "";
            NewMemberPhoneNumberTxt.Text = "";
            NewMemberNICTxt.Text = "";
            NewMemberInstructorID.Text = "";
            NewMemberInstructorName.Text = "";
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            MemberMenu memberMenu = new MemberMenu();
            this.Hide();
            memberMenu.Show();
        }
    }
}
