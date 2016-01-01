using CountryCityManagementSystem.DAL.Gateway;
using CountryCityManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityManagementSystem.BLL
{
    public class CityManager
    {
        CityGateway cityGateway = new CityGateway();

        public string Save(City city)
        {
            if (!cityGateway.IsNameExist(city.Name))
            {
                if (cityGateway.Save(city) >= 0)
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

        public List<City> GetAllCitys()
        {
            return cityGateway.GetAllCitys();
        }
    }
}