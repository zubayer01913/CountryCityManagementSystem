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
    public partial class CityEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCountryComboBox();
                GetShowAllCity();
            }
        }

        CityManager cityManager = new CityManager();
        CountryManager countryManager = new CountryManager();


        public void GetShowAllCity()
        {
            citysGridView.DataSource = cityManager.GetAllCitys();
            citysGridView.DataBind();
        }

        protected void citySaveButton_Click(object sender, EventArgs e)
        {
            string name = cityNameTextBox.Value;
            string about = edit.Value;
            string noDwellers = noOfDwellerTextBox.Value;
            string loction = locationTextBox.Value;
            string weather = weatherTextBox.Value;
            string country = countryDropDownList.SelectedItem.Text;

            City city = new City(name, about, noDwellers, loction, weather, country);


            string message = cityManager.Save(city);

            messageLabel.Text = message;
        }

        private void LoadCountryComboBox()
        {
            List<Country> country = countryManager.GetAllCountrys();
            countryDropDownList.DataSource = country;
            countryDropDownList.DataTextField = "Name";
            countryDropDownList.DataValueField = "Id";
            countryDropDownList.DataBind();
        }
    }
}