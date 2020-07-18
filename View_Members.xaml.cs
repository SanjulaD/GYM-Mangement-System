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
    /// Interaction logic for View_Members.xaml
    /// </summary>
    public partial class View_Members : Window
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\NSBM\Project\Gym Management System\database\Gym Management.mdf;Integrated Security=True;Connect Timeout=30");

        public View_Members()
        {
            InitializeComponent();
            Loaded += View_Members_Loaded;
        }

        private void View_Members_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Register_member";
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
            MemberMenu memberMenu = new MemberMenu();
            this.Hide();
            memberMenu.Show();
        }

        private void Member_Search_Click(object sender, RoutedEventArgs e)
        {
            int i = 0;

            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Register_member where firstname like '%" + MemberNameSearch.Text + "%' ";
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
                    MsgProfile msgProfile = new MsgProfile("No Members Found!!!");
                    msgProfile.Show();
                }
            }

            catch (Exception ex)
            {
                MsgProfile msgProfile = new MsgProfile(ex.ToString());
                msgProfile.Show();
            }
        }

        private void MemberNameSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            this.KeyDown += new KeyEventHandler(textBox1_KeyDown);
        }

        void textBox1_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Subtract)
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "select * from Register_member where firstname like '%" + MemberNameSearch.Text + "%' ";
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
                cmd.CommandText = "select * from Register_member where nic like '%" + MemberNIC_Search.Text + "%' ";
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
                    MsgProfile msgProfile = new MsgProfile("No Members Found!!!");
                    msgProfile.Show();
                }
            }

            catch (Exception ex)
            {
                MsgProfile msgProfile = new MsgProfile(ex.ToString());
                msgProfile.Show();
            }
        }

        private void MemberNIC_Search_TextChanged(object sender, TextChangedEventArgs e)
        {
            this.KeyDown += new KeyEventHandler(textBox2_KeyDown);
        }

        void textBox2_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Subtract)
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "select * from Register_member where nic like '%" + MemberNIC_Search.Text + "%' ";
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
    }
}
