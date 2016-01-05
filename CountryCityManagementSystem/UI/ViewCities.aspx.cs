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
    public partial class ViewCities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (cityNameRadioButton.Checked == true)
            {
                CountryDropDownList.Enabled = false;
            }
            else
            {
                CountryDropDownList.Enabled = true;
                cityNameTextBox.Visible = true;
            }

            if(!IsPostBack)
            {
                LoadCountryComboBox();

                int countryId = 0;

                if (Request.QueryString["id"] != null)
                {
                    string id = Request.QueryString["id"].ToString();
                    countryId = int.Parse(id);
                }

                GetShowAllCityCountry();
            }
            GetShowAllCityCountry();
        }

        protected void viewCitiesGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetShowAllCityCountry();
        }

        protected void viewCitiesGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
           
            viewCitiesGridView.PageIndex = e.NewPageIndex;
            viewCitiesGridView.DataBind();

            LoadGridView();
        }

        private void LoadGridView()
        {
            
        }

        CountryManager countryManager = new CountryManager();
        CityCountryManager cityCountryManager = new CityCountryManager();
        public void GetShowAllCityCountry()
        {
                viewCitiesGridView.DataSource = cityCountryManager.GetAllCityCountry();
                viewCitiesGridView.DataBind();
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            if (cityNameTextBox.Value == "")
            {
                searchCityGridView();
                cityNameTextBox.Value = String.Empty;
            }
            else
            {
                searchCityGridView();
                cityNameTextBox.Value = String.Empty;
            }
        }
        public void searchCounrtyGridView()
        {
            viewCitiesGridView.DataSource = cityCountryManager.GetSearchCountrys(CountryDropDownList.SelectedItem.Text); ;
            viewCitiesGridView.DataBind();
        }

        public void searchCityGridView()
        {
            viewCitiesGridView.DataSource = cityCountryManager.GetSearchCitys(cityNameTextBox.Value); ;
            viewCitiesGridView.DataBind();
        }

        protected void CountryDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void LoadCountryComboBox()
        {
            List<Country> country = countryManager.GetAllCountrys();
            //if (country == null)
            //{
            //    country = new List<Country>();
            //}
            Country dcountry = new Country();
            dcountry.Id = -1;
            dcountry.CountryName = "Select..";
            country.Insert(0, dcountry);



            CountryDropDownList.DataSource = country;

            CountryDropDownList.DataTextField = "CountryName";
            CountryDropDownList.DataValueField = "CountryName";
            CountryDropDownList.DataBind();
        }



    }
}