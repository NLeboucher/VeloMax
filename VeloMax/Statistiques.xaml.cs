using System;
using System.Data;
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

namespace VeloMax
{
    /// <summary>
    /// Interaction logic for Statistiques.xaml
    /// </summary>
    public partial class Statistiques : Window
    {
        private DataTable temp=null;
        private BDBuilder database = null;
        public Statistiques()
        {
            InitializeComponent();
        }

        private void PagePrece_Click(object sender, RoutedEventArgs e)
        {
            Administrateur_Accueil windows = new Administrateur_Accueil();
            this.Close();
            windows.Show();
        }

        private void nbclientsclick(object sender, RoutedEventArgs e)
        {
             this.temp=this.database.ExecuteToDataTable("SELECT * FROM individus;", "individu");
            nbdrClie.ItemsSource=temp.DefaultView;
            indiv.Visibility = Visibility.Visible;

            /*
             * this.piecesDt = this.database.ExecuteToDataTable(
                    "SELECT * FROM piece;", "piece");
                GridPiece.ItemsSource = this.piecesDt.DefaultView;
                Pieces.Visibility = Visibility.Visible;
             */



        }
    }
}
