using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;

namespace VeloMax
{
    class BDBuilder
    {
        public MySqlConnection connection;

        /// <summary>
        /// BDBuilder constructeur
        /// </summary>
        /// <param name="dbName">Nom de la base de données</param>
        /// <param name="dbPort">Port utilisé pour la connexion</param>
        /// <param name="id">Id de l'utilisateur (par défaut à root)</param>
        /// <param name="password">Mot de passe de l'utilisateur (par défaut à root)</param>
        public BDBuilder(string dbName, string dbPort="3306", string id="root", string password="root")
        {
            string connectionString = "SERVER=localhost;PORT="+ dbPort +";DATABASE="+ dbName  + ";USER=" + id +";PASSWORD="+ password +";";
/*            string connectionString = "server=<container_ip_address>;port=<mapped_port_number>;database=<database_name>;user=<username>;password=<password>";
*/
            this.connection = new MySqlConnection(connectionString);
            this.connection.Open();
        }

        /// <summary>
        /// Permet d'executer une requête SQL et de récupérer le reader (si des données sont retournées)
        /// </summary>
        /// <param name="request">Requête à executer</param>
        /// <returns>Le reader</returns>
        public List<string[]> ExecuteRequest(string request)
        {
            List<string[]> res = null;
            MySqlCommand command = this.connection.CreateCommand();
            command.CommandText = request;
            try
            {
                res = ReadData(command.ExecuteReader());
                command.Dispose();
            }
            catch (Exception e)
            {
                MessageBox.Show(e.ToString());

            }


            return res;
        }

        public DataTable ExecuteToDataTable(string request, string dataTableName)
        {
            DataTable res = new DataTable(dataTableName);
            MySqlCommand command = this.connection.CreateCommand();
            command.CommandText = request;
            command.ExecuteNonQuery();
            MySqlDataAdapter adp = new MySqlDataAdapter(command);
            adp.Fill(res);
            command.Dispose();

            return res;
        }
        public string stringExecuteToDataTable(string requete, MySqlCommand maRequete)
        {
            maRequete.CommandText = requete;
            MySqlDataReader exeRequete = maRequete.ExecuteReader();

            string tableau = "";
            while (exeRequete.Read())
            {

                //pour chaque ligne
                string ligne = "";
                for (int i = 0; i < exeRequete.FieldCount; i++)
                {
                    //construire la ligne dans une chaine de caractères
                    ligne = ligne + " " + exeRequete.GetValue(i).ToString();
                }
                tableau = tableau + ligne;
            }
            exeRequete.Close();


            return tableau;
            
        }

        /// <summary>
        /// Permet de fermer la connection SQL
        /// </summary>
        public void CloseConnection()
        {
            this.connection.Close();
        }

        /// <summary>
        /// Permet de lire des données à partir d'un MySqlDataReader
        /// </summary>
        /// <param name="reader">Le reader à utiliser</param>
        /// <returns>Un tableau avec les données</returns>
        public List<string[]> ReadData(MySqlDataReader reader)
        {
            List<string[]> result = new List<string[]>();

            while (reader.Read())
            {
                string[] row = new string[reader.FieldCount];
                for (int i = 0; i < reader.FieldCount; i++)
                {
                    row[i] = reader.GetValue(i).ToString();
                }
                result.Add(row);
            }

            return result;
        }
        
    }
}
