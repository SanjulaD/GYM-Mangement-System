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
using System.Windows.Interop;

namespace Gym_Management_System
{
    /// <summary>
    /// Interaction logic for View_Instructors.xaml
    /// </summary>
    public partial class View_Instructors : Window
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\NSBM\Project\Gym Management System\database\Gym Management.mdf;Integrated Security=True;Connect Timeout=30");

        public View_Instructors()
        {
            InitializeComponent();
            Loaded += View_Instructor_Loaded;
        }

        private void View_Instructor_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Register_admin";
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                dataGridView1.ItemsSource = dt.DefaultView;

                con.Close();
            }
            catch (Exception ex)
            {
                MsgProfile msgProfile = new MsgProfile(ex.ToString());
                msgProfile.Show();
            }
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            InstructorMenu instructorMenu = new InstructorMenu();
            this.Hide();
            instructorMenu.Show();
        }

        private void Member_Search_Click(object sender, RoutedEventArgs e)
        {
            int i = 0;

            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Register_admin where admin_name like '%" + InsNameSearch.Text + "%' ";
                cmd.ExecuteNonQuery();
                con.Close();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                i = Convert.ToInt32(dt.Rows.Count.ToString());
                dataGridView1.ItemsSource = dt.DefaultView;
                con.Close();
                if (i == 0)
                {
                    MsgProfile msgProfile = new MsgProfile("No Instructors Found!!!");
                    msgProfile.Show();
                }
            }

            catch (Exception ex)
            {
                MsgProfile msgProfile = new MsgProfile(ex.ToString());
                msgProfile.Show();
            }
        }

        private void InsNameSearch_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Subtract)
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "select * from Register_admin where admin_name like '%" + InsNameSearch.Text + "%' ";
                    cmd.ExecuteNonQuery();
                    con.Close();

                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    dataGridView1.ItemsSource = dt.DefaultView;
                    con.Close();
                }

                catch (Exception ex)
                {
                    MsgProfile msgProfile = new MsgProfile(ex.ToString());
                    msgProfile.Show();
                }
            }
        }

        private void NIC_Search_Click(object sender, RoutedEventArgs e)
        {
            int i = 0;

            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Register_admin where admin_NIC like '%" + InsNIC_Search.Text + "%' ";
                cmd.ExecuteNonQuery();
                con.Close();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                i = Convert.ToInt32(dt.Rows.Count.ToString());
                dataGridView1.ItemsSource = dt.DefaultView;
                con.Close();
                if (i == 0)
                {
                    MsgProfile msgProfile = new MsgProfile("No Instructors Found!!!");
                    msgProfile.Show();
                }
            }

            catch (Exception ex)
            {
                MsgProfile msgProfile = new MsgProfile(ex.ToString());
                msgProfile.Show();
            }
        }

        private void InsNIC_Search_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Subtract)
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "select * from Register_admin where admin_NIC like '%" + InsNIC_Search.Text + "%' ";
                    cmd.ExecuteNonQuery();
                    con.Close();

                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    dataGridView1.ItemsSource = dt.DefaultView;
                    con.Close();
                }

                catch (Exception ex)
                {
                    MsgProfile msgProfile = new MsgProfile(ex.ToString());
                    msgProfile.Show();
                }
            }
        }

        private void InsNameSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            this.KeyDown += new KeyEventHandler(InsNameSearch_KeyDown);
        }

        private void InsNIC_Search_TextChanged(object sender, TextChangedEventArgs e)
        {
            this.KeyDown += new KeyEventHandler(InsNIC_Search_KeyDown);
        }
    }
}
