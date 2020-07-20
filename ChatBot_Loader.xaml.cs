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
using System.Windows.Threading;

namespace Gym_Management_System
{
    public partial class ChatBot_Loader : Window
    {
        DispatcherTimer dt = new DispatcherTimer();
        public ChatBot_Loader()
        {
            InitializeComponent();
            dt.Tick += new EventHandler(dt_Tick);

            dt.Interval = TimeSpan.FromMilliseconds(35);
            dt.Start();
        }
        private void dt_Tick(object sender, EventArgs e)
        {
            progressBar.Width += 15;
            if (progressBar.Width >= 455)
            {
                dt.Stop();
                Login login = new Login();
                login.Show();

                this.Close();
            }

        }
    }
}
