using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityManagementSystem.Models
{
    public class Country
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string About { get; set; }

        public Country(string name, string about) : this()
        {
            Name = name;
            About = about;
        }
        public Country()
        {

        }
    }
}