using CountryCityManagementSystem.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CountryCityManagementSystem.UI
{
    public partial class ViewCountries : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GetShowAllCountryCity();

            }
                GetShowAllCountryCity();
        }

        CountryManager countryManager = new CountryManager();
        CityCountryManager cityCountryManager = new CityCountryManager();


        public void GetShowAllCountryCity()
        {
            CountrysGridView.DataSource = cityCountryManager.GetAllCountryCity();
            CountrysGridView.DataBind();
        }



        

         public void searchCountryGridView()
            {
                CountrysGridView.DataSource = cityCountryManager.GetSearchCountryByCountyView(conuntryNameTextBox.Value); ;
                CountrysGridView.DataBind();
            }

         protected void countrySearchButton_Click(object sender, EventArgs e)
         {
             searchCountryGridView();
         }

         protected void CountrysGridView_SelectedIndexChanged(object sender, GridViewPageEventArgs e)
         {
             CountrysGridView.PageIndex = e.NewPageIndex;
             CountrysGridView.DataBind();
         }

      

    }
}