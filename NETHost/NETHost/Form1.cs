using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WebServiceCaller;

namespace NETHost
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            IAutoWebService aws = new AutoWebService();
            if (Environment.Is64BitProcess)
            {
                MessageBox.Show(aws.HelloWorld(".net 64-bit")); //AV here
            }
            else
            {
                MessageBox.Show(aws.HelloWorld(".net 32-bit"));
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            IAutoWebService aws = new AutoWebService();
            MessageBox.Show(aws.NoWebServiceCall());
        }

    }
}
