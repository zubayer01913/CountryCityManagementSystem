﻿using CountryCityManagementSystem.BLL;
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
            int noDwellers = Convert.ToInt32 (noOfDwellerTextBox.Value);
            string loction = locationTextBox.Value;
            string weather = weatherTextBox.Value;
            string country = countryDropDownList.SelectedItem.Text;
            int countryId = Convert.ToInt32(countryDropDownList.SelectedItem.Value);

            City city = new City(name, about, noDwellers, loction, weather, country, countryId);


            string message = cityManager.Save(city);

            messageLabel.Text = message;
        }

        private void LoadCountryComboBox()
        {
            List<Country> country = countryManager.GetAllCountrys();
            countryDropDownList.DataSource = country;
            countryDropDownList.DataTextField = "CountryName";
            countryDropDownList.DataValueField = "Id";
            countryDropDownList.DataBind();
        }
    }
}