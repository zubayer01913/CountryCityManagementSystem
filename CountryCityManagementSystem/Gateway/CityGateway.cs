using CountryCityManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace CountryCityManagementSystem.DAL.Gateway
{
    [SerializableAttribute]
    public class CityGateway
    {
        SqlConnection connection = new SqlConnection();
        private string ConnectionString = WebConfigurationManager.ConnectionStrings["CountryInfoDbConnString"].ConnectionString;

        City country = new City();

        public int Save(City city)
        {
            connection.ConnectionString = ConnectionString;

            string query = "INSERT INTO Citys VALUES(@name, @about, @noDwelers, @location, @weather, @country)";

            SqlCommand command = new SqlCommand(query, connection);

            command.Parameters.Clear();
            command.Parameters.Add("name", SqlDbType.VarChar);
            command.Parameters["name"].Value = city.Name;
            command.Parameters.Add("about", SqlDbType.VarChar);
            command.Parameters["about"].Value = city.About;
            command.Parameters.Add("noDwelers", SqlDbType.VarChar);
            command.Parameters["noDwelers"].Value = city.NoDwelers;
            command.Parameters.Add("location", SqlDbType.VarChar);
            command.Parameters["location"].Value = city.Location;
            command.Parameters.Add("weather", SqlDbType.VarChar);
            command.Parameters["weather"].Value = city.Weather;
            command.Parameters.Add("country", SqlDbType.VarChar);
            command.Parameters["country"].Value = city.Country;

            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();

            return rowAffected;
        }
        public List<City> GetAllCitys()
        {
            string query = "SELECT * FROM Citys";
            connection.ConnectionString = ConnectionString;

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            List<City> city = new List<City>();

            while (reader.Read())
            {
                City acity = new City();
                acity.Name = reader["Name"].ToString();
                acity.About = reader["About"].ToString();
                acity.NoDwelers = reader["NoDwelers"].ToString();
                acity.Country = reader["Country"].ToString();

                city.Add(acity);


            }
            reader.Close();
            connection.Close();

            return city;
        }

        public bool IsNameExist(string name)
        {
            connection.ConnectionString = ConnectionString;

            string query = "SELECT * FROM Countrys WHERE Name = '" + name + "'";
            SqlCommand command = new SqlCommand();
            command.CommandText = query;
            command.Connection = connection;

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            bool isNameExist = false;

            if (reader.HasRows)
            {
                isNameExist = true;
            }

            connection.Close();

            return isNameExist;
        }
    }
}