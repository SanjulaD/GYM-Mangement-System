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
        string path;
        public Admin_auth(string pathName)
        {
            InitializeComponent();
            path = pathName;
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            if(AdminloginNameTxt.Text == "admin" && AdminloginPasswordTxt.Password == "admin123")
            {
                AdminloginNameTxt.Clear();
                AdminloginPasswordTxt.Clear();

                if(path == "help") 
                {
                    ChatBot_Loader chatBot_Loader = new ChatBot_Loader();
                    this.Hide();
                    chatBot_Loader.Show();
                }
                if(path == "instructor")
                {
                    InstructorMenu instructorMenu = new InstructorMenu();
                    this.Hide();
                    instructorMenu.Show();
                }
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
