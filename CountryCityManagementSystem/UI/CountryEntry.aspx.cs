using CountryCityManagementSystem.BLL;
using CountryCityManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CountryCityManagementSystem.UI
{
    public partial class CountryEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              if (!IsPostBack)
                {
                    GetShowAllCountry();
                }
            
        }
        CountryManager countryManager = new CountryManager();

        protected void countrySaveButton_Click(object sender, EventArgs e)
        {
            string name = conuntryNameTextBox.Value;
            string about = edit.Value;

            Country country = new Country(name, about);


            string message = countryManager.Save(country);

            messageLabel.Text = message;
        }

        public void GetShowAllCountry()
        {
            countrysGridView.DataSource = countryManager.GetAllCountrys();
            countrysGridView.DataBind();
        }
    }
}