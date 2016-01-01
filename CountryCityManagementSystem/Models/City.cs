using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityManagementSystem.Models
{
    public class City
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string About { get; set; }
        public string NoDwelers { get; set; }
        public string Location { get; set; }
        public string Weather { get; set; }
        public string Country { get; set; }

        public City(string name, string about, string noDwellers, string location, string weather, string country) : this()
        {
            Name = name;
            About = about;
            NoDwelers = noDwellers;
            Location = location;
            Weather = weather;
            Country = country;
        }
        public City()
        {

        }

    }
}