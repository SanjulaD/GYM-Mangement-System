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
    /// Interaction logic for InstructorMenu.xaml
    /// </summary>
    public partial class InstructorMenu : Window
    {
        public InstructorMenu()
        {
            InitializeComponent();
        }

        private void Back_btn_Click(object sender, RoutedEventArgs e)
        {
            Dashboard dashboard = new Dashboard();
            this.Hide();
            dashboard.Show();
        }

        private void CardNumTwo_Click(object sender, RoutedEventArgs e)
        {
            Register register = new Register();
            this.Hide();
            register.Show();
        }

        private void CardNumOn_Click(object sender, RoutedEventArgs e)
        {
            View_Instructors view_Instructors = new View_Instructors();
            this.Hide();
            view_Instructors.Show();
        }

        private void Card5_Click(object sender, RoutedEventArgs e)
        {
            Update_Instructors update_Instructors = new Update_Instructors();
            this.Hide();
            update_Instructors.Show();
        }

        private void Card4_Click(object sender, RoutedEventArgs e)
        {
            Delete_Instructors delete_Instructors = new Delete_Instructors();
            this.Hide();
            delete_Instructors.Show();
        }
    }
}
