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
using System.IO;
using System.Net;

namespace BookMyshow
{
    public partial class canceltik : Form
    {
        SqlConnection cs = new SqlConnection("Data Source='DESKTOP-9MULU57\\SQLEXPRESS';initial catalog= bookshow;integrated Security=true");
        SqlDataAdapter da = new SqlDataAdapter();
        SqlDataAdapter da1 = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataSet ds1 = new DataSet();
        DataSet ds2 = new DataSet();
        DataSet ds3 = new DataSet();

        public System.Drawing.Image img;
        public static int i = 0;
        public canceltik()
        {
            InitializeComponent();
        }


        private void resetbtn_Click(object sender, EventArgs e)
        {
            canceltik ma = new canceltik();
            ma.MdiParent = this.ParentForm;
            ma.Dock = DockStyle.Fill;
            this.Hide();
            ma.Show();
            /*
             * da.SelectCommand = new SqlCommand("select Wallet,Username from usersdl", cs);
            ds.Clear();
            da.Fill(ds);
            walletamt.Text = ds.Tables[0].Rows[0][0].ToString();
            string uname = ds.Tables[0].Rows[1][0].ToString();
            da.SelectCommand = new SqlCommand("select * from booked where uid ='" + uname + "' ", cs);
            ds.Clear();
            da.Fill(ds2);
            */
        }

        private void canceltik_Load(object sender, EventArgs e)
        {
            

            if (log.username != String.Empty)
            {
                try
                {
                    da.SelectCommand = new SqlCommand("select * from booked where uid= '" + log.username + "' order by (id) DESC", cs);
                    ds.Clear();
                    da.Fill(ds);
                    comboBox1.DataSource = ds.Tables[0];
                    comboBox1.DisplayMember = "id";
                    da1.SelectCommand = new SqlCommand("select Wallet from usersdl where Username='" + log.username + "'", cs);
                    ds1.Clear();
                    da1.Fill(ds1);
                    this.backgroundWorker1.DoWork += BackgroundWorker1_DoWork;

                }
                catch
                {


                }
            }
            else
            {
                groupBox2.Visible = false;
            }
          

        }

        private void BackgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {
            WebClient wc = new WebClient();
            byte[] bytes = wc.DownloadData(ds.Tables[0].Rows[comboBox1.SelectedIndex][3].ToString());
            MemoryStream ms = new MemoryStream(bytes);
            this.img = System.Drawing.Image.FromStream(ms);
            pictureBox1.Image = img;
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            i = 1;
        }


        private void groupBox2_Enter_1(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            pictureBox1.Image = null;
            pictureBox1.ImageLocation = ds.Tables[0].Rows[comboBox1.SelectedIndex][3].ToString();
            //WebClient wc = new WebClient();
            // byte[] bytes = wc.DownloadData(ds.Tables[0].Rows[comboBox1.SelectedIndex][3].ToString());
            // MemoryStream ms = new MemoryStream(bytes);
            // this.img = System.Drawing.Image.FromStream(ms);
            // pictureBox1.Image = img;
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;



            tlbl.Text = ds.Tables[0].Rows[comboBox1.SelectedIndex][0].ToString();
            titlelbl.Text = ds.Tables[0].Rows[comboBox1.SelectedIndex][2].ToString();



            datelbl.Text = ds.Tables[0].Rows[comboBox1.SelectedIndex][4].ToString();
            timelbl.Text = ds.Tables[0].Rows[comboBox1.SelectedIndex][5].ToString();
            pricelbl.Text = ds.Tables[0].Rows[comboBox1.SelectedIndex][6].ToString();
            thelbl.Text = ds.Tables[0].Rows[comboBox1.SelectedIndex][7].ToString();
            seatlbl.Text = ds.Tables[0].Rows[comboBox1.SelectedIndex][8].ToString();
            //walletamt.Text = ds1.Tables[0].Rows[0][0].ToString();

        }

        private void cancelbtn_Click(object sender, EventArgs e)
        {

        }
    }
}
