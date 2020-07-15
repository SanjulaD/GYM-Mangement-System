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
    public partial class MsgProfile : Window
    {
        public String MSG;
        public MsgProfile(String message)
        {
            InitializeComponent();

            this.MSG = message;

            MessageBoxText.Text = MSG;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Hide();
        }
    }
}
