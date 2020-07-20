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

namespace Gym_Management_System
{
    /// <summary>
    /// Interaction logic for Admin_auth.xaml
    /// </summary>
    public partial class Admin_auth : Window
    {
        public Admin_auth()
        {
            InitializeComponent();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            if(AdminloginNameTxt.Text == "admin" && AdminloginPasswordTxt.Password == "admin123")
            {
                AdminloginNameTxt.Clear();
                AdminloginPasswordTxt.Clear();

                ChatBot_Loader chatBot_Loader = new ChatBot_Loader();
                this.Hide();
                chatBot_Loader.Show();
            }
            else
            {
                MsgProfile msgBox = new MsgProfile("Incorrect Username or Password!!");
                msgBox.Show();

                AdminloginNameTxt.Clear();
                AdminloginPasswordTxt.Clear();
            }
        }
    }
}
