namespace BookMyshow
{
    partial class Payment
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Payment));
            this.cbox = new System.Windows.Forms.GroupBox();
            this.crebtn = new System.Windows.Forms.Button();
            this.debbtn = new System.Windows.Forms.Button();
            this.paybox = new System.Windows.Forms.GroupBox();
            this.amt = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.paybtn = new System.Windows.Forms.Button();
            this.cvtxt = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.pwdtxt = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.ytxt = new System.Windows.Forms.TextBox();
            this.mtxt = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.nametxt = new System.Windows.Forms.TextBox();
            this.cardtxt = new System.Windows.Forms.TextBox();
            this.timer = new System.Windows.Forms.Timer(this.components);
            this.button1 = new System.Windows.Forms.Button();
            this.cbox.SuspendLayout();
            this.paybox.SuspendLayout();
            this.SuspendLayout();
            // 
            // cbox
            // 
            this.cbox.Controls.Add(this.crebtn);
            this.cbox.Controls.Add(this.debbtn);
            this.cbox.Location = new System.Drawing.Point(12, 24);
            this.cbox.Name = "cbox";
            this.cbox.Size = new System.Drawing.Size(489, 76);
            this.cbox.TabIndex = 0;
            this.cbox.TabStop = false;
            // 
            // crebtn
            // 
            this.crebtn.BackColor = System.Drawing.Color.Black;
            this.crebtn.Location = new System.Drawing.Point(251, 19);
            this.crebtn.Name = "crebtn";
            this.crebtn.Size = new System.Drawing.Size(200, 43);
            this.crebtn.TabIndex = 0;
            this.crebtn.Text = "CREDIT CARD";
            this.crebtn.UseVisualStyleBackColor = false;
            this.crebtn.Click += new System.EventHandler(this.crebtn_Click);
            // 
            // debbtn
            // 
            this.debbtn.BackColor = System.Drawing.Color.Navy;
            this.debbtn.ForeColor = System.Drawing.Color.Azure;
            this.debbtn.Location = new System.Drawing.Point(45, 19);
            this.debbtn.Name = "debbtn";
            this.debbtn.Size = new System.Drawing.Size(200, 43);
            this.debbtn.TabIndex = 0;
            this.debbtn.Text = "DEBIT CARD";
            this.debbtn.UseVisualStyleBackColor = false;
            this.debbtn.Click += new System.EventHandler(this.debbtn_Click);
            // 
            // paybox
            // 
            this.paybox.Controls.Add(this.amt);
            this.paybox.Controls.Add(this.label7);
            this.paybox.Controls.Add(this.paybtn);
            this.paybox.Controls.Add(this.cvtxt);
            this.paybox.Controls.Add(this.label6);
            this.paybox.Controls.Add(this.label5);
            this.paybox.Controls.Add(this.pwdtxt);
            this.paybox.Controls.Add(this.label4);
            this.paybox.Controls.Add(this.label3);
            this.paybox.Controls.Add(this.ytxt);
            this.paybox.Controls.Add(this.mtxt);
            this.paybox.Controls.Add(this.label2);
            this.paybox.Controls.Add(this.label1);
            this.paybox.Controls.Add(this.nametxt);
            this.paybox.Controls.Add(this.cardtxt);
            this.paybox.Location = new System.Drawing.Point(12, 106);
            this.paybox.Name = "paybox";
            this.paybox.Size = new System.Drawing.Size(489, 311);
            this.paybox.TabIndex = 0;
            this.paybox.TabStop = false;
            // 
            // amt
            // 
            this.amt.AutoSize = true;
            this.amt.BackColor = System.Drawing.Color.Black;
            this.amt.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.amt.ForeColor = System.Drawing.Color.Red;
            this.amt.Location = new System.Drawing.Point(227, 222);
            this.amt.Name = "amt";
            this.amt.Size = new System.Drawing.Size(0, 17);
            this.amt.TabIndex = 13;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(58, 222);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(100, 17);
            this.label7.TabIndex = 0;
            this.label7.Text = "Total Amount :";
            this.label7.Click += new System.EventHandler(this.label7_Click);
            // 
            // paybtn
            // 
            this.paybtn.BackColor = System.Drawing.SystemColors.ControlText;
            this.paybtn.Location = new System.Drawing.Point(283, 244);
            this.paybtn.Name = "paybtn";
            this.paybtn.Size = new System.Drawing.Size(149, 32);
            this.paybtn.TabIndex = 7;
            this.paybtn.Text = "PAY";
            this.paybtn.UseVisualStyleBackColor = false;
            this.paybtn.Click += new System.EventHandler(this.paybtn_Click);
            // 
            // cvtxt
            // 
            this.cvtxt.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cvtxt.Location = new System.Drawing.Point(376, 132);
            this.cvtxt.MaxLength = 3;
            this.cvtxt.Name = "cvtxt";
            this.cvtxt.Size = new System.Drawing.Size(56, 23);
            this.cvtxt.TabIndex = 5;
            this.cvtxt.TextChanged += new System.EventHandler(this.cvtxt_TextChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(299, 135);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(71, 17);
            this.label6.TabIndex = 0;
            this.label6.Text = "CV Code :";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(58, 178);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(77, 17);
            this.label5.TabIndex = 0;
            this.label5.Text = "Password :";
            // 
            // pwdtxt
            // 
            this.pwdtxt.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pwdtxt.Location = new System.Drawing.Point(175, 177);
            this.pwdtxt.Name = "pwdtxt";
            this.pwdtxt.PasswordChar = '*';
            this.pwdtxt.Size = new System.Drawing.Size(257, 23);
            this.pwdtxt.TabIndex = 6;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(211, 132);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(13, 20);
            this.label4.TabIndex = 0;
            this.label4.Text = "/";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(58, 135);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(78, 17);
            this.label3.TabIndex = 0;
            this.label3.Text = "Expiration :";
            // 
            // ytxt
            // 
            this.ytxt.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ytxt.Location = new System.Drawing.Point(230, 132);
            this.ytxt.MaxLength = 4;
            this.ytxt.Name = "ytxt";
            this.ytxt.Size = new System.Drawing.Size(56, 23);
            this.ytxt.TabIndex = 4;
            this.ytxt.TextChanged += new System.EventHandler(this.textBox4_TextChanged);
            // 
            // mtxt
            // 
            this.mtxt.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.mtxt.Location = new System.Drawing.Point(175, 132);
            this.mtxt.MaxLength = 2;
            this.mtxt.Name = "mtxt";
            this.mtxt.Size = new System.Drawing.Size(28, 23);
            this.mtxt.TabIndex = 3;
            this.mtxt.TextChanged += new System.EventHandler(this.mtxt_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(58, 88);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(110, 17);
            this.label2.TabIndex = 0;
            this.label2.Text = "Name On Card :";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(58, 43);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(100, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Card Number :";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // nametxt
            // 
            this.nametxt.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.nametxt.Location = new System.Drawing.Point(175, 87);
            this.nametxt.Name = "nametxt";
            this.nametxt.Size = new System.Drawing.Size(257, 23);
            this.nametxt.TabIndex = 2;
            // 
            // cardtxt
            // 
            this.cardtxt.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cardtxt.Location = new System.Drawing.Point(175, 42);
            this.cardtxt.MaxLength = 19;
            this.cardtxt.Name = "cardtxt";
            this.cardtxt.Size = new System.Drawing.Size(257, 23);
            this.cardtxt.TabIndex = 1;
            this.cardtxt.TextChanged += new System.EventHandler(this.cardtxt_TextChanged);
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.button1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("button1.BackgroundImage")));
            this.button1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button1.ForeColor = System.Drawing.Color.Black;
            this.button1.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.button1.Location = new System.Drawing.Point(484, 5);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(25, 18);
            this.button1.TabIndex = 8;
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // Payment
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Black;
            this.ClientSize = new System.Drawing.Size(513, 429);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.paybox);
            this.Controls.Add(this.cbox);
            this.ForeColor = System.Drawing.Color.White;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Payment";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Payment";
            this.cbox.ResumeLayout(false);
            this.paybox.ResumeLayout(false);
            this.paybox.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox cbox;
        private System.Windows.Forms.Button crebtn;
        private System.Windows.Forms.Button debbtn;
        private System.Windows.Forms.GroupBox paybox;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox nametxt;
        private System.Windows.Forms.TextBox cardtxt;
        private System.Windows.Forms.TextBox ytxt;
        private System.Windows.Forms.TextBox mtxt;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button paybtn;
        private System.Windows.Forms.TextBox cvtxt;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox pwdtxt;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Timer timer;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label amt;
        private System.Windows.Forms.Button button1;
    }
}