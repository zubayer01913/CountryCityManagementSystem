﻿using CountryCityManagementSystem.DAL.Gateway;
using CountryCityManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityManagementSystem.BLL
{
    public class CountryManager
    {
        CountryGateway countryGateway = new CountryGateway();

        public string Save(Country country)
        {
            if (!countryGateway.IsNameExist(country.Name))
            {
                if (countryGateway.Save(country) >= 0)
                {
                    return "Save Successfully";
                }
                else
                {
                    return "Insertion Failded";
                }
            }
            else
            {
                return " Name alerady Exist!! Please use Unique Name";
            }
        }

        public List<Country> GetAllCountrys()
        {
            return countryGateway.GetAllCountrys();
        }
    }
}