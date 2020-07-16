using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Shapes;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Threading.Tasks;
using System.IO;
using System.Data.SqlClient;
using Path = System.IO.Path;
using Prism.Services.Dialogs;
using Microsoft.Win32;

namespace Gym_Management_System
{
    public partial class InstructorProfile : Window
    {
        string uName;

        Microsoft.Win32.OpenFileDialog openFileDialog1 = new Microsoft.Win32.OpenFileDialog();
        string wanted_path;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\NSBM\Project\Gym Management System\database\Gym Management.mdf;Integrated Security=True;Connect Timeout=30");
        string pwd = Class1.GetRandomPassword(20);
        public InstructorProfile(string userName)
        {
            uName = userName;
            InitializeComponent();
        }

        private void AddImageBtn_Click(object sender, RoutedEventArgs e)
        {
            
            wanted_path = Path.GetDirectoryName(Path.GetDirectoryName(System.IO.Directory.GetCurrentDirectory()));
            OpenFileDialog op = new OpenFileDialog();
            op.Title = "Select a picture";
            op.Filter = "JPEG Files (*.jpeg)|*.jpeg|PNG Files (*.png)|*.png|JPG Files (*.jpg)|*.jpg|GIF Files (*.gif)|*.gif";
            if (op.ShowDialog() == true)
            {
                pictureBox1.Source = new System.Windows.Media.Imaging.BitmapImage(new Uri(op.FileName));
            }
        }

        private void SaveDataBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string img_path;
                File.Copy(openFileDialog1.FileName, wanted_path + "\\instructor_images\\" + pwd + ".jpg");

                img_path = "\\instructor_images\\" + pwd + ".jpg";

                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                con.Close();

                MsgProfile msgBox = new MsgProfile("Records Saved Succefully!!");
                msgBox.Show();
            }

            catch (Exception ex)
            {
                MsgProfile msgBox = new MsgProfile(ex.Message.ToString());
                msgBox.Show();
            }
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            Dashboard dashboardView = new Dashboard();
            this.Hide();
            dashboardView.Show();
        }
    }
}
