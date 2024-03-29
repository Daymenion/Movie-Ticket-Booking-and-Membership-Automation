﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BookMyshow
{
    public partial class Welcome : Form
    {
        public Welcome()
        {
            InitializeComponent();
        }

        private void Welcome_Load(object sender, EventArgs e)
        {
            progressBar.Value = 0;
            timer.Interval = 50;
            timer.Enabled = true;
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void timer_Tick_1(object sender, EventArgs e)
        {
            progressBar.Visible = true;
            progressBar.Increment(1);
            if (progressBar.Value <= 20)
            {
                label1.Text = "Initializing...........";

            }
            else if (progressBar.Value <= 30)
            {
                label1.Text = "Loading Components......";

            }
            else if (progressBar.Value <= 55)
            {
                label1.Text = "Loading Interface.......";

            }
            else if (progressBar.Value <= 80)
            {
                label1.Text = "Getting Ready To Use...";

            }
            else
            {
                if (progressBar.Value == 100)
                {

                    timer.Enabled = false;
                    progressBar.Visible = false;
                    this.DialogResult = DialogResult.OK;
                }

            }
        }

    }
}
