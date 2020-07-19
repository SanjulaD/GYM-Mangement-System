using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace Gym_Management_System
{
    /// <summary>
    /// Açlılış Ekranı Hazırlıyoruz
    /// </summary>
    public partial class MainWindow : Window
    {
        DispatcherTimer dt = new DispatcherTimer();
        public MainWindow()
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
