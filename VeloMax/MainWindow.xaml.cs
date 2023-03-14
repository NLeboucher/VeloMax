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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace VeloMax
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        const string LOGIN = "root";
        const string PWD = "root";
        const string LOGINB = "bozo";
        const string PWDB = "bozo";
        public MainWindow()
        {
            InitializeComponent();
        }
        private void Validateur_Admin_Click(object sender, RoutedEventArgs e)
        {
            if (Id_id.Text == LOGIN && Nom_id.Password == PWD|| Id_id.Text == LOGINB && Nom_id.Password == PWDB)
            {
                Administrateur_Accueil windows = new Administrateur_Accueil();

                this.Close();
                windows.Show();
            }
            else
            {
                
                MessageBox.Show("Identifiants incorrects. Veuillez essayer de nouveau.");
            }
        }

        private void MainGrid_KeyDown(object sender, KeyEventArgs e)
        {
            
            if (e.Key == Key.Enter)
            {
                Validateur_Admin_Click(sender, e);
            }
        }
    }
}
