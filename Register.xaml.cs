using System;
using System.Data;
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

namespace Gym_Management_System
{
    public partial class Register : Window
    {
        public String gender;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\NSBM\Project\Gym Management System\database\Gym Management.mdf;Integrated Security=True;Connect Timeout=30");
        public Register()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            regNameTxt.Clear();
            regPhoneNumberTxt.Clear();
            regNICTxt.Clear();
            regEmailTxt.Clear();
            regUserNameTxt.Clear();
            regPasswordTxt.Clear();
            regFeMaleIndex.IsChecked = false;
            regMaleIndex.IsChecked = false;

        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            if (regMaleIndex.IsChecked == true)
            {
                gender = "Male";
            }
            if (regFeMaleIndex.IsChecked == true)
            {
                gender = "Female";
            }

            try
            {
                if (regEmailTxt.Text == "" || regNameTxt.Text == "" || regNICTxt.Text == "" || regUserNameTxt.Text == "" || regPhoneNumberTxt.Text == "" || regPasswordTxt.Password == "")
                {
                    MsgProfile msgBox = new MsgProfile("All Fields are required!!");
                    msgBox.Show();
                }
                else
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into Register_admin values('" + regNameTxt.Text + "','" + gender + "','" + regPhoneNumberTxt.Text + "','" + regEmailTxt.Text + "','" + regNICTxt.Text + "','" + regUserNameTxt.Text + "','" + regPasswordTxt.Password + "')";
                    cmd.ExecuteNonQuery();
                    con.Close();

                    MsgProfile msgBox = new MsgProfile("Registered Succefully!!");
                    msgBox.Show();
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void Back_btn_Click(object sender, RoutedEventArgs e)
        {
            Login loginPage = new Login();
            this.Hide();
            loginPage.Show();
        }
    }
}
