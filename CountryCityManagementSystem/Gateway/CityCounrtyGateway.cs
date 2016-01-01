using CountryCityManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace CountryCityManagementSystem.Gateway
{
    public class CityCounrtyGateway
    {

        SqlConnection connection = new SqlConnection();
        private string ConnectionString = WebConfigurationManager.ConnectionStrings["CountryInfoDbConnString"].ConnectionString;

        public List<CityCountry> GetAllCityCountry()
        {
            string query = "SELECT * FROM Citys s FULL OUTER JOIN Countrys d ON s.Id= d.Id";
            connection.ConnectionString = ConnectionString;

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            List<CityCountry> citycountry = new List<CityCountry>();

            while (reader.Read())
            {
                CityCountry acitycountry = new CityCountry();
                City city  = new City();
                Country acountry = new Country();

                acitycountry.city.CityName = reader["CityName"].ToString();
                acitycountry.city.CityAbout = reader["CityAbout"].ToString();
                acitycountry.city.NoDwelers = reader["NoDwelers"].ToString();
                acitycountry.city.Location = reader["Location"].ToString();
                acitycountry.city.Weather = reader["Weather"].ToString();
                acitycountry.counntry.CountryName = reader["CountryName"].ToString();
                acitycountry.counntry.CountryAbout = reader["CountryAbout"].ToString();

                citycountry.Add(acitycountry);


            }
            reader.Close();
            connection.Close();

            return citycountry;
        }
    }
}