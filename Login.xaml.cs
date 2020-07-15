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
using System.Data.SqlClient;
using System.Data;

namespace Gym_Management_System
{
    public partial class Login : Window
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\NSBM\Project\Gym Management System\database\Gym Management.mdf;Integrated Security=True;Connect Timeout=30");
        int count = 0;
        public Login()
        {
            InitializeComponent();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Register regView = new Register();
            this.Hide();
            regView.Show();
        }

        private void ForgotPWButton_Click(object sender, RoutedEventArgs e)
        {
            ForgotPassword forgotPW = new ForgotPassword();
            this.Hide();
            forgotPW.Show();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Register_admin where admin_username = '"+ loginNameTxt.Text +"' and admin_password = '"+ loginPasswordTxt.Password +"' ";
            cmd.ExecuteNonQuery();
            con.Close();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            count = Convert.ToInt32(dt.Rows.Count.ToString());
            if(loginNameTxt.Text == "" && loginPasswordTxt.Password == "")
            {
                MsgProfile msgBox = new MsgProfile("Fields are required!!");
                msgBox.Show();
            }
            else if(count == 0)
            {
                MsgProfile msgBox = new MsgProfile("Incorrect Username and password");
                msgBox.Show();
            }
            else
            {
                this.Hide();
                Dashboard dashboardView = new Dashboard();
                dashboardView.Show();
            }
        }
    }
}
