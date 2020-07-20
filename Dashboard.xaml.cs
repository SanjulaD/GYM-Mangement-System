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
using System.Configuration;

namespace Gym_Management_System
{
    /// <summary>
    /// Interaction logic for Dashboard.xaml
    /// </summary>
    public partial class Dashboard : Window
    {
        string uName;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\NSBM\Project\Gym Management System\database\Gym Management.mdf;Integrated Security=True;Connect Timeout=30");
        public Dashboard(string userName)
        {
            InitializeComponent();
            uName = userName;
        }

        public Dashboard()
        {
            InitializeComponent();
            Loaded += Dashboard_Loaded;
        }

        private void Dashboard_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                con.Open();
                string q = "select nic from Register_member where id=1";
                SqlCommand query = new SqlCommand(q, con);

                using (SqlDataReader dr = query.ExecuteReader())
                {
                    bool success = dr.Read();
                    if (success)
                    {
                        totNum.Text = dr.GetString(0);
                    }
                }

                con.Close();
            }
            catch (Exception)
            {
                totNum.Text = "Error";
            }
        }

        private void NewRegisterButton_Click(object sender, RoutedEventArgs e)
        {
            NewRegistration newMemberRegister = new NewRegistration(uName);
            this.Hide();
            newMemberRegister.Show();
        }

        private void SignOutButton_Click_1(object sender, RoutedEventArgs e)
        {
            this.Hide();
            Login loginView = new Login();
            loginView.Show();
        }

        private void MyProfileButton_Click(object sender, RoutedEventArgs e)
        {
            InstructorProfile insProfile = new InstructorProfile(uName);
            this.Hide();
            insProfile.Show();
        }

        private void MembershipButton_Click(object sender, RoutedEventArgs e)
        {
            MemberMenu memberMenu = new MemberMenu();
            this.Hide();
            memberMenu.Show();
        }

        private void CardNumOne_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Login login = new Login();
            this.Hide();
            login.Show();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Admin_auth admin_Auth = new Admin_auth("help");
            this.Hide();
            admin_Auth.Show();
        }

        private void InstructorButton_Click(object sender, RoutedEventArgs e)
        {
            Admin_auth admin_Auth = new Admin_auth("instructor");
            this.Hide();
            admin_Auth.Show();
        }
    }
}
