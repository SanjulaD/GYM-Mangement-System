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
    public partial class Update_Instructors : Window
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\NSBM\Project\Gym Management System\database\Gym Management.mdf;Integrated Security=True;Connect Timeout=30");
        string pwd = Class1.GetRandomPassword(20);
        string idNum;

        public Update_Instructors()
        {
            InitializeComponent();
            Loaded += Update_Instructors_Loaded;
        }

        private void Update_Instructors_Loaded(object sender, EventArgs e)
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
            cmd.CommandText = "select * from Register_admin";
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
            if (row_selected != null)
            {
                NewInsNameTxt.Text = row_selected["admin_name"].ToString();
                NewInsGenderTxt.Text = row_selected["admin_gender"].ToString();
                NewMemberPhoneNumberTxt.Text = row_selected["admin_tel"].ToString();
                NewInsEmailTxt.Text = row_selected["admin_email"].ToString();
                NewInsNICTxt.Text = row_selected["admin_NIC"].ToString();
                NewInsUnameTxt.Text = row_selected["admin_username"].ToString();
                NewInspasswordTxt.Text = row_selected["admin_password"].ToString();
            }
            idNum = row_selected["id"].ToString();
        }

        private void Update_Members1_Click(object sender, RoutedEventArgs e)
        {
            dataGridView1.Items.Refresh();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update  Register_admin set admin_name='" + NewInsNameTxt.Text + "',admin_gender='" + NewInsGenderTxt.Text + "',admin_tel='" + NewMemberPhoneNumberTxt.Text  + "',admin_email='" + NewInsEmailTxt.Text + "',admin_NIC='" + NewInsNICTxt.Text + "',admin_username='" + NewInsUnameTxt.Text + "',admin_password='" + NewInspasswordTxt.Text + "' where id = " + Convert.ToInt32(idNum) + " ";
            cmd.ExecuteNonQuery();

            MsgProfile msgProfile = new MsgProfile("Record Update Successfully!!");
            msgProfile.Show();

            fillGrid();

            NewInsNameTxt.Text = "";
            NewInsGenderTxt.Text = "";
            NewMemberPhoneNumberTxt.Text = "";
            NewInsEmailTxt.Text = "";
            NewInsNICTxt.Text = "";
            NewInsUnameTxt.Text = "";
            NewInspasswordTxt.Text = "";
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            InstructorMenu instructorMenu = new InstructorMenu();
            this.Hide();
            instructorMenu.Show();
        }

        private void InsNameSearch_KeyUp(object sender, KeyEventArgs e)
        {
            try
            {
                dataGridView1.Columns.Clear();
                dataGridView1.Items.Refresh();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Register_admin where admin_name like '%" + InsNameSearch.Text + "%' ";
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
    }
}
