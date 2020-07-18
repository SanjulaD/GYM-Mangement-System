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
    /// <summary>
    /// Interaction logic for Delete_Members.xaml
    /// </summary>
    public partial class Delete_Members : Window
    {
        public Delete_Members()
        {
            InitializeComponent();
            Loaded += Delete_Members_Loaded;
        }

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\NSBM\Project\Gym Management System\database\Gym Management.mdf;Integrated Security=True;Connect Timeout=30");
        string pwd = Class1.GetRandomPassword(20);
        string idNum;

        private void Delete_Members_Loaded(object sender, EventArgs e)
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

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            MemberMenu memberMenu = new MemberMenu();
            this.Hide();
            memberMenu.Show();
        }

        private void dataGridView1_SelectedCellsChanged(object sender, SelectedCellsChangedEventArgs e)
        {
            DataGrid gd = (DataGrid)sender;
            DataRowView row_selected = gd.SelectedItem as DataRowView;
            try {
                if (row_selected != null)
                {
                    NewMemberFNameTxt.Text = row_selected["firstname"].ToString();
                    NewMemberLNameTxt.Text = row_selected["lastname"].ToString();
                    NewMemberEmailTxt.Text = row_selected["email"].ToString();
                    NewMemberPhoneNumberTxt.Text = row_selected["phonenum"].ToString();
                    NewMemberNICTxt.Text = row_selected["nic"].ToString();
                    NewMemberInstructorID.Text = row_selected["instruc_id"].ToString();
                    NewMemberInstructorName.Text = row_selected["instruc_name"].ToString();
                    idNum = row_selected["id"].ToString();
                }
                else
                {
                    MsgProfile msgProfile = new MsgProfile("Selected Row Empty!!");
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

            }
            catch(Exception ex)
            {
                MsgProfile msgProfile = new MsgProfile(ex.ToString());
                msgProfile.Show();
            }
        }

        private void Delete_Member_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                dataGridView1.Columns.Clear();
                dataGridView1.Items.Refresh();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete from Register_member where id = "+ Convert.ToInt32(idNum) +" ";
                cmd.ExecuteNonQuery();

                fillGrid();

                NewMemberFNameTxt.Text = "";
                NewMemberLNameTxt.Text = "";
                NewMemberEmailTxt.Text = "";
                NewMemberPhoneNumberTxt.Text = "";
                NewMemberNICTxt.Text = "";
                NewMemberInstructorID.Text = "";
                NewMemberInstructorName.Text = "";
            }

            catch (Exception ex)
            {
                MsgProfile msgProfile = new MsgProfile(ex.ToString());
                msgProfile.Show();
            }
        }
    }
}
