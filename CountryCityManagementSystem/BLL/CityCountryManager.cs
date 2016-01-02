using CountryCityManagementSystem.Gateway;
using CountryCityManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityManagementSystem.BLL
{
    public class CityCountryManager
    {
        CityCounrtyGateway cityCounrtyGateway = new CityCounrtyGateway();

        public List<CityCountry> GetAllCityCountry()
        {
            return cityCounrtyGateway.GetAllCityCountry();
        }

        public List<CityCountry> GetSearchCitys(string title)
        {
            return cityCounrtyGateway.GetSearchCitys(title);
        }

        public List<CityCountry> GetSearchCountrys(string title)
        {
            return cityCounrtyGateway.GetSearchCountrys(title);
        }
    }
}