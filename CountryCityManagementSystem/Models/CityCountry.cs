using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityManagementSystem.Models
{
    public class CityCountry
    {
        public City city { get; set; }
        public Country counntry { get; set; }
        public int NoOfCity { get; set; }
        public int NoOfDweller { get; set; }

        public CityCountry()
        {
            city = new City();
            counntry = new Country();
        }

       

    }
}