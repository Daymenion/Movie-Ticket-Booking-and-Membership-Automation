using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Net.Mail;
namespace BookMyshow
{
    public partial class signuppg : Form
    {
        public signuppg()
        {
            InitializeComponent();
        }

        private void registerbtn_Click(object sender, EventArgs e)
        {
            if (usertxt.Text!= string.Empty && pwdtxt.Text!= string.Empty && cpwdtxt.Text!= string.Empty) {
                if (IsValid(usertxt.Text))
                {
                    if (pwdtxt.Text == cpwdtxt.Text)
                    {
                        SqlConnection cs = new SqlConnection("Data Source='DESKTOP-9MULU57\\SQLEXPRESS';initial catalog= bookshow;integrated Security=true");
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.InsertCommand = new SqlCommand("insert into usersdl (Username,Password,wallet,type) values (@Username,@Password,0,0)", cs);
                        da.InsertCommand.Parameters.Add("Username", SqlDbType.VarChar).Value = usertxt.Text;
                        da.InsertCommand.Parameters.Add("Password", SqlDbType.VarChar).Value = pwdtxt.Text;
                        cs.Open();
                        da.InsertCommand.ExecuteNonQuery();
                        cs.Close();
                        MessageBox.Show("SignUp Succesfull,Please Login");
                        this.Close();
                        this.DialogResult = DialogResult.OK;
                    }
                    else
                        MessageBox.Show("Password Does Not Match, Please Try Again");
                }
                else
                    MessageBox.Show("Please Enter Valid Email Id /in Username Field.");
            }
            else
                MessageBox.Show("Please Fill All Fields");
        }
        public bool IsValid(string emailaddress)
        {
            try
            {
                MailAddress m = new MailAddress(emailaddress);

                return true;
            }
            catch (FormatException)
            {
                return false;
            }
        }

        private void signuppg_Load(object sender, EventArgs e)
        {
            this.AcceptButton = registerbtn;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void signinbtn_Click(object sender, EventArgs e)
        {
            signinpg s = new signinpg();
            this.Hide();

            if (s.ShowDialog(this) == DialogResult.OK)
            {
                this.Activate();
            }

        }

        private void cpwdtxt_TextChanged(object sender, EventArgs e)
        {

        }

        private void loggrbx_Enter(object sender, EventArgs e)
        {

        }
    }
}
