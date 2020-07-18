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
    /// Interaction logic for MemberMenu.xaml
    /// </summary>
    public partial class MemberMenu : Window
    {
        public MemberMenu()
        {
            InitializeComponent();
        }

        private void Back_btn_Click(object sender, RoutedEventArgs e)
        {
            Dashboard dashboard = new Dashboard();
            this.Hide();
            dashboard.Show();
        }

        private void CardNumOn_Click(object sender, RoutedEventArgs e)
        {
            View_Members view_Members = new View_Members();
            this.Hide();
            view_Members.Show();
        }

        private void CardNumTwo_Click(object sender, RoutedEventArgs e)
        {
            NewRegistration newRegistration = new NewRegistration();
            this.Hide();
            newRegistration.Show();
        }

        private void Card5_Click(object sender, RoutedEventArgs e)
        {
            Update_Members update_Members = new Update_Members();
            this.Hide();
            update_Members.Show();
        }

        private void Card4_Click(object sender, RoutedEventArgs e)
        {
            Delete_Members delete_Members = new Delete_Members();
            this.Hide();
            delete_Members.Show();
        }
    }
}
