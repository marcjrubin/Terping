using System;
using TerpFarm.Domain.BusinessClients;
using System.IO;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace TerpFarm.Services.BusinessClientSvc
{
    /// <summary>
    ///
    /// </summary>
    public class BusinessClientImpl : IBusinessClient
    {
        private SqlConnection conn = null;
        private string connString = ConfigurationManager.ConnectionStrings["TerpFarmDB"].ConnectionString;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="bc"></param>
        public void StoreBusinessClient(BusinessClient bc)
        {
            try
            {
                conn = new SqlConnection(connString);

                conn.Open();

                string insert = "INSERT INTO tblBusinessClient(CompanyName, POC, AddressOne, AddressTwo, City, State, Zip, Phone, Email) VALUES ('" +
                       bc.CompanyName + "','" + bc.PointOfContact + "','" + bc.Address1 + "','" + bc.Address2 + "','" +
                       bc.City + "','" + bc.State + "','" + bc.Zip + "','" + bc.Phone + "','" + bc.Email + "')";

                SqlCommand cmd = new SqlCommand(insert, conn);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException)
            {
                throw new Exception("Database is not opened.");
            }
            finally
            {
                conn.Close();
            }    
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="bc"></param>
        public BusinessClient QueryBusinessClient(BusinessClient bc)
        {
            try
            {
                conn = new SqlConnection(connString);

                conn.Open();
                SqlDataReader reader = null;
                
                string query = "SELECT Id, CompanyName, POC, AddressOne, AddressTwo, City, State, Zip, Phone, Email FROM tblBusinessClient";

                SqlCommand cmd = new SqlCommand(query, conn);
                reader = cmd.ExecuteReader();

                while (reader.Read())
                {                    
                    bc.Id = reader.GetInt32(reader.GetOrdinal("Id"));
                    bc.CompanyName = reader.GetString(reader.GetOrdinal("CompanyName"));
                    bc.PointOfContact = reader.GetString(reader.GetOrdinal("POC"));
                    bc.Address1 = reader.GetString(reader.GetOrdinal("AddressOne"));
                    bc.Address2 = reader.GetString(reader.GetOrdinal("AddressTwo"));
                    bc.City = reader.GetString(reader.GetOrdinal("City"));
                    bc.State = reader.GetString(reader.GetOrdinal("State"));
                    bc.Zip = reader.GetString(reader.GetOrdinal("Zip"));
                    bc.Phone = reader.GetString(reader.GetOrdinal("Phone"));
                    bc.Email = reader.GetString(reader.GetOrdinal("Email"));
                }
            }
            catch (SqlException)
            {
                throw new Exception("Something went wrong with SQL and/or database");
            }
            finally
            {
                conn.Close();
            }

            return bc;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="bc"></param>
        public void DeleteBusinessClient(BusinessClient bc)
        {
            try
            {
                conn = new SqlConnection(connString);

                conn.Open();

                string insert = "DELETE FROM tblBusinessClient WHERE Id ='" + bc.Id + "'";

                SqlCommand cmd = new SqlCommand(insert, conn);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException)
            {
                throw new Exception("Database is not opened.");
            }
            finally
            {
                conn.Close();
            }
        }
    }
}