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

namespace Gym_Management_System
{
    /// <summary>
    /// Interaction logic for NewRegistration.xaml
    /// </summary>
    public partial class NewRegistration : Window
    {
        string uName;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\NSBM\Project\Gym Management System\database\Gym Management.mdf;Integrated Security=True;Connect Timeout=30");
        string gender;
        public NewRegistration(string userName)
        {
            uName = userName;
            InitializeComponent();
        }
        public NewRegistration()
        {
            InitializeComponent();
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            Dashboard dashboard = new Dashboard();
            this.Hide();
            dashboard.Show();
        }

        private void SubmitNewMemberBtn_Click(object sender, RoutedEventArgs e)
        {
            
            if (regMaleIndex.IsChecked == true)
            {
                gender = Convert.ToString("Male");
            }
            if (regFeMaleIndex.IsChecked == true)
            {
                gender = Convert.ToString("FeMale");
            }


            try
            {
                if (NewMemberFNameTxt.Text == "" || NewMemberLNameTxt.Text == "" || NewMemberEmailTxt.Text == "" || NewMemberPhoneNumberTxt.Text == "" || NewMemberNICTxt.Text == "")
                {
                    MsgProfile msgBox = new MsgProfile("All Fields are required!!");
                    msgBox.Show();
                }
                else
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into Register_member values('" + NewMemberFNameTxt.Text + "','" + NewMemberLNameTxt.Text + "','" + NewMemberEmailTxt.Text + "','" + NewMemberPhoneNumberTxt.Text + "','" + NewMemberNICTxt.Text + "' , '"+ gender +"' , '"+ NewMemberInstructorID.Text +"' , '"+ NewMemberInstructorName.Text +"')";
                    cmd.ExecuteNonQuery();
                    con.Close();

                    MsgProfile msgBox = new MsgProfile("Member Registered!!");
                    msgBox.Show();
                    NewMemberFNameTxt.Clear();
                    NewMemberLNameTxt.Clear();
                    NewMemberEmailTxt.Clear();
                    NewMemberPhoneNumberTxt.Clear();
                    NewMemberNICTxt.Clear();
                    regFeMaleIndex.IsChecked = false;
                    regMaleIndex.IsChecked = false;
                    NewMemberInstructorID.Clear();
                    NewMemberInstructorName.Clear();
                }
            }
            catch (Exception ex)
            {
                MsgProfile msgBox = new MsgProfile(ex.Message.ToString());
                msgBox.Show();
            }
        }
    }
}
