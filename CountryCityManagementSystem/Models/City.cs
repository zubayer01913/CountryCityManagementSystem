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
        public string Locaction { get; set; }
        public string Wether { get; set; }
        public Country Country { get; set; }

    }
}