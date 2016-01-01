using CountryCityManagementSystem.BLL;
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
            if(!IsPostBack)
            {
                GetShowAllCityCountry();
            }
        }

        protected void viewCitiesGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void viewCitiesGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            viewCitiesGridView.PageIndex = e.NewPageIndex;
            LoadGridView();
        }

        private void LoadGridView()
        {
            
        }

        CityCountryManager cityCountryManager = new CityCountryManager();
        public void GetShowAllCityCountry()
        {
                viewCitiesGridView.DataSource = cityCountryManager.GetAllCityCountry();
                viewCitiesGridView.DataBind();
        }
    }
}