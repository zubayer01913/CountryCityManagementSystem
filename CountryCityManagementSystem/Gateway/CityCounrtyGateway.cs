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
            string query = "SELECT * FROM Citys s JOIN Countrys d ON s.CountryId= d.Id ORDER BY CityName";
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
                acitycountry.city.NoDwelers = Convert.ToInt32(reader["NoDwelers"]);
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

        public List<CityCountry> GetAllCountryCity()
        {
            string query = "SELECT * FROM view_name ORDER BY CountryName";
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

                acitycountry.counntry.CountryName = reader["CountryName"].ToString();
                acitycountry.counntry.CountryAbout = reader["CountryAbout"].ToString();
                
                acitycountry.NoOfCity = int.Parse(reader["NoOfCity"].ToString());
                acitycountry.NoOfDweller = int.Parse(reader["NoOfDwellers"].ToString());

                citycountry.Add(acitycountry);


            }
            reader.Close();
            connection.Close();

            return citycountry;
        }



        public List<CityCountry> GetSearchCountryByCountyView(string title)
        {
            string query = "SELECT * FROM view_name WHERE CountryName LIKE'%" + title + "%'";

            connection.ConnectionString = ConnectionString;

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            List<CityCountry> citycountry = new List<CityCountry>();

            while (reader.Read())
            {
                CityCountry acitycountry = new CityCountry();
                City city = new City();
                Country acountry = new Country();

                acitycountry.counntry.CountryName = reader["CountryName"].ToString();
                acitycountry.counntry.CountryAbout = reader["CountryAbout"].ToString();

                acitycountry.NoOfCity = int.Parse(reader["NoOfCity"].ToString());
                acitycountry.NoOfDweller = int.Parse(reader["NoOfDwellers"].ToString());

                citycountry.Add(acitycountry);


            }
            reader.Close();
            connection.Close();

            return citycountry;
        }



        public List<CityCountry> GetSearchCitys(string title)
        {
            string query = "SELECT Citys.* , Countrys.CountryName, Countrys.CountryAbout FROM Citys LEFT OUTER JOIN Countrys ON Citys.CountryId = Countrys.Id  WHERE CityName LIKE '%" + title + "%'";

            //string query = "SELECT * FROM Citys s FULL OUTER JOIN Countrys d ON s.Id= d.Id WHERE CityName LIKE '%" + title + "%'";


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
                acitycountry.city.NoDwelers = Convert.ToInt32 (reader["NoDwelers"]);
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


         public List<CityCountry> GetSearchCountrys(string title)
         {
             string query = "SELECT * FROM Citys s FULL OUTER JOIN Countrys d ON s.Id= d.Id WHERE CityName LIKE '%" + title + "%'";

             connection.ConnectionString = ConnectionString;

             SqlCommand command = new SqlCommand(query, connection);

             connection.Open();
             SqlDataReader reader = command.ExecuteReader();
             List<CityCountry> citycountry = new List<CityCountry>();

             while (reader.Read())
             {
                 CityCountry acitycountry = new CityCountry();
                 City city = new City();
                 Country acountry = new Country();

                 acitycountry.city.CityName = reader["CityName"].ToString();
                 acitycountry.city.CityAbout = reader["CityAbout"].ToString();
                 acitycountry.city.NoDwelers = Convert.ToInt32( reader["NoDwelers"]);
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