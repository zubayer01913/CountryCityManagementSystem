using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityManagementSystem.Models
{
    public class Country
    {
        public int Id { get; set; }
        public string CountryName { get; set; }
        public string CountryAbout { get; set; }

        public Country(string name, string about) : this()
        {
            CountryName = name;
            CountryAbout = about;
        }
        public Country()
        {

        }
    }
}