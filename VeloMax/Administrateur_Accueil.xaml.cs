using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.IO;
using Newtonsoft.Json;
using System.Xml.Serialization;

namespace VeloMax
{
    /// <summary>
    /// Logique d'interaction pour Administrateur_Accueil.xaml
    /// </summary>
    public partial class Administrateur_Accueil : Window
    {
        BDBuilder database = null;

        public Administrateur_Accueil()
        {
            this.database = new BDBuilder("VeloMax","3306","root","root");
            InitializeComponent();
        }

        private void Gestion_Click(object sender, RoutedEventArgs e)
        {
            Gestion windows = new Gestion();
            this.Close();
            this.database.CloseConnection();
            windows.Show();
        }

        private void Statistique_Click(object sender, RoutedEventArgs e)
        {
                Statistiques windows = new Statistiques();
            //    this.database.CloseConnection();
                this.Close();
                windows.Show();
            
        }

        private void PagePrece_Click(object sender, RoutedEventArgs e)
        {
            MainWindow windows = new MainWindow();
            this.database.CloseConnection();
            this.Close();
            windows.Show();
        }

        private void ExportStocks_Click(object sender, RoutedEventArgs e)
        {
            string msg = "SELECT * FROM individu as json INTO OUTFILE 'export2.json';";
            //    // + "\",\" " + + "\", \"" +  + "\",\" " + + "\",\" " + input_panier
            MessageBox.Show(msg);

            this.database.ExecuteRequest(msg);

            this.database.CloseConnection();
        }

        private void ExportComm_Click(object sender, RoutedEventArgs e)
        {
            

            MessageBox.Show("Export aaaaa !");
        }
    }
}
