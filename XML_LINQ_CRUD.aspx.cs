using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace XML_CRUD
{
    public partial class XML_LINQ_CRUD : System.Web.UI.Page
    {
        XDocument xmldoc;
        public void BindGrid()
        {
            //Load xml document and bind it to grid
            xmldoc = XDocument.Load(@"C:\GitHub\XML_CRUD\XML_CRUD\XML_CRUD\Employee.xml");
            var bind = xmldoc.Descendants("Employee").Select(p => new
            {
                Id = p.Element("id").Value,
                Name = p.Element("name").Value,
                Salary = p.Element("salary").Value,
                Email = p.Element("email").Value,
                Address = p.Element("address").Value
            }).OrderBy(p => p.Id);
            GridView1.DataSource = bind;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGrid();
        }
        protected void Find(object sender, EventArgs e)
        {
            //Find Employee details on the basis on Employee ID
            XElement emp = xmldoc.Descendants("Employee").FirstOrDefault(p => p.Element("id").Value == txtid.Text);
            if (emp != null)
            {
                txtname.Text = emp.Element("name").Value;
                txtsalary.Text = emp.Element("salary").Value;
                txtemail.Text = emp.Element("email").Value;
                txtaddress.Text = emp.Element("address").Value;

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            //Insert in xml document
            XElement emp = new XElement("Employee",
                new XElement("id", txtid.Text),
                new XElement("name", txtname.Text),
                new XElement("salary", txtsalary.Text),
                new XElement("email", txtemail.Text),
                new XElement("address", txtaddress.Text));
            xmldoc.Root.Add(emp);
            xmldoc.Save(@"C:\GitHub\XML_CRUD\XML_CRUD\XML_CRUD\Employee.xml");
            BindGrid();
            Reset();
        }

        private void Reset()
        {
            txtid.Text = "";
            txtname.Text = "";
            txtsalary.Text = "";
            txtaddress.Text = "";
            txtemail.Text = "";
            txtid.Focus();
        }

        private void Update(XElement emp)
        {
            if (emp != null)
            {
                emp.Element("name").Value = txtname.Text;
                emp.Element("salary").Value = txtsalary.Text;
                emp.Element("email").Value = txtemail.Text;
                emp.Element("address").Value = txtaddress.Text;
                xmldoc.Root.Add(emp);
                xmldoc.Save(@"C:\GitHub\XML_CRUD\XML_CRUD\XML_CRUD\Employee.xml");
                BindGrid();
                Reset();

            }
        }

        private XElement Delete()
        {
            XElement emp = xmldoc.Descendants("Employee").FirstOrDefault(p => p.Element("id").Value == txtid.Text);
            if (emp != null)
            {
                emp.Remove();
                xmldoc.Save(@"C:\GitHub\XML_CRUD\XML_CRUD\XML_CRUD\Employee.xml");
                BindGrid();
            }
            return emp;
        }
        protected void Update_click(object sender, EventArgs e)
        {
            //First delete the old record and then add the new record
           XElement emp = Delete();
            Update(emp);
        }
        
        protected void Button5_Click(object sender, EventArgs e)
        {
        }

        protected void delete_click(object sender, EventArgs e)
        {
            
            Delete();
            Reset();
        }
    }
}