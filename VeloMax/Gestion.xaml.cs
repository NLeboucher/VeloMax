using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;

using System.Security;
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
using MySql.Data.MySqlClient;


namespace VeloMax
{
    /// <summary>
    /// Logique d'interaction pour Gestion.xaml
    /// </summary>
    public partial class Gestion : Window
    {

        private DataTable piecesDt = null;
        private DataTable bicycletteDt = null;
        private DataTable assembDt = null;
        private DataTable particDt = null;
        private DataTable boutDt = null;
        private DataTable fournissDt = null;
        private DataTable commDt = null;
        private DataTable fideliteDt = null;
        private DataTable approDt = null;
        private DataTable progclieDt = null;

        private BDBuilder database = null;
        Dictionary<string, string> dicoPieceInconnue = new Dictionary<string, string>() 
        { 
            { "cadre", "\"-1\"" }, { "guidon", "\"-2\"" }, { "freins", "\"-3\"" }, { "selle", "\"-4\"" }, { "derailleurAvant", "\"-5\"" }, { "derailleurAriere", "\"-6\"" }, { "roueAvant", "\"-7\"" }, { "roueArriere", "\"-8\"" }, { "Reflecteurs", "\"-9\"" }, { "Pedalier", "\"-10\"" }, { "Ordinateur", "\"-11\"" }, { "Panier", "\"-12\"" } 
        };

        public Gestion()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Cacher tous les elements
        /// </summary>
        private void DisableAll()
        {
            Pieces.Visibility = Visibility.Hidden;
            Velo.Visibility = Visibility.Hidden;
            Assemb.Visibility = Visibility.Hidden;
            Part.Visibility = Visibility.Hidden;
            Boutique.Visibility = Visibility.Hidden;
            Fourniss.Visibility = Visibility.Hidden;
            Commande.Visibility = Visibility.Hidden;
            Programmes.Visibility = Visibility.Hidden;

            ValideFidelite.Visibility = Visibility.Hidden;
            Appro.Visibility = Visibility.Hidden;
            ValideAppro.Visibility = Visibility.Hidden;

            NumCommande.Visibility = Visibility.Hidden;
            IdBoutique.Visibility = Visibility.Hidden;
            IdParticulier.Visibility = Visibility.Hidden;
            NoModele.Visibility = Visibility.Hidden;
            NumProd.Visibility = Visibility.Hidden;
            Valid_AddComm.Visibility = Visibility.Hidden;
            ChercherClient.Visibility = Visibility.Hidden;
            ChPrenom.Visibility = Visibility.Hidden;
            ChNom.Visibility = Visibility.Hidden;
            ProgClient.Visibility = Visibility.Hidden;

            FiltreNormal.Visibility = Visibility.Hidden;
            FiltreFourniss.Visibility = Visibility.Hidden;

            Velonom.Visibility = Visibility.Hidden;
            Velograndeur.Visibility = Visibility.Hidden;
            Veloprix_Unitaire.Visibility = Visibility.Hidden;
            VeloligneProduit.Visibility = Visibility.Hidden;
            VelonbDispo.Visibility = Visibility.Hidden;
            VelonbVendu.Visibility = Visibility.Hidden;
            AjouterListe.Visibility = Visibility.Hidden;
            Confirmer.Visibility = Visibility.Hidden;

            description.Visibility = Visibility.Hidden;
            dateInscription.Visibility = Visibility.Hidden;
            dateDiscontinue.Visibility = Visibility.Hidden;
            prix_Unitaire.Visibility = Visibility.Hidden;
            NbDispo.Visibility = Visibility.Hidden;
            categorie.Visibility = Visibility.Hidden;
            nbVendu.Visibility = Visibility.Hidden;
            Approvisionner.Visibility = Visibility.Hidden;
            Ajoutervelo.Visibility = Visibility.Hidden;
            AjoutPiece.Visibility=Visibility.Hidden;
            VirerPieceDeListe.Visibility = Visibility.Hidden;

        }
        /// <summary>
        /// dropdown de debut pour accessible pour root et bozo
        /// </summary>
        /// <param name="send"></param>
        /// <param name="e"></param>
        private void Validateur_MD_Click(object send, RoutedEventArgs e)
        {

            ComboBoxItem typeItem = (ComboBoxItem)Choix_MD.SelectedItem;
            
            string value = typeItem.Content.ToString();
            this.database = new BDBuilder("VeloMax");
            DisableAll();
            if (value == "Pieces de rechanges")
            {
                
                this.piecesDt = this.database.ExecuteToDataTable(
                    "SELECT * FROM piece;", "piece");
                GridPiece.ItemsSource = this.piecesDt.DefaultView;
                Pieces.Visibility = Visibility.Visible;
                AjoutPiece.Visibility = Visibility.Visible;

            }
            else if (value == "Velos")
            {
                
                this.bicycletteDt = this.database.ExecuteToDataTable(
                       "SELECT * FROM bicyclette WHERE numProd NOT LIKE \'%DELETED%\' order by numProd;","bicyclette"
                    );
               GridVélo.ItemsSource = this.bicycletteDt.DefaultView;

                Velo.Visibility = Visibility.Visible;
                //TEXT BOX
                
                Velonom.Visibility = Visibility.Visible;
                Velograndeur.Visibility = Visibility.Visible;
                Veloprix_Unitaire.Visibility = Visibility.Visible;
                VeloligneProduit.Visibility = Visibility.Visible;
                VelonbDispo.Visibility = Visibility.Visible;
                VelonbVendu.Visibility = Visibility.Visible;
                //Buttons
                Ajoutervelo.Visibility = Visibility.Visible;
                Ajoutervelo.Content = "Ajouter Velo";
                //Approvisionner.Visibility = Visibility.Visible;


                /*
                 * 
                 *             string b = Velonom.Text;
            string c = Velograndeur.Text;
            string d = Veloprix_Unitaire.Text;
            string g = VeloligneProduit.Text;
            string f = VelonbDispo.Text;
            string h = VelonbVendu.Text;
                 */
            }
            else if (value == "Assemblage")
            {
                
                this.assembDt = this.database.ExecuteToDataTable(
                       "SELECT * FROM listeMontagePiecesBicyclette;",
                       "listeMontagePiecesBicyclette GROUP BY numProd");
                GridAssemblage.ItemsSource = this.assembDt.DefaultView;
                Assemb.Visibility = Visibility.Visible;
                AjouterListe.Visibility = Visibility.Visible;
                VirerPieceDeListe.Visibility = Visibility.Visible;

            }
            else if (value == "Clients_Particuliers")
            {
                particDt = database.ExecuteToDataTable(
                       "SELECT * FROM individu;",
                       "individu");
                GridParticulier.ItemsSource = particDt.DefaultView;

                Part.Visibility = Visibility.Visible;
            }
            else if (value == "Boutiques_Specialisees")
            {
                boutDt = database.ExecuteToDataTable(
                      "SELECT * FROM boutiquesSpecialisees; ",
                      "boutiquesSpecialisees");
                GridBoutique.ItemsSource = boutDt.DefaultView;

                Boutique.Visibility = Visibility.Visible;
            }
            else if (value == "Fournisseurs")
            {
                fournissDt = database.ExecuteToDataTable("select * from fournisseur","fournisseur");
                GridFournisseur.ItemsSource = fournissDt.DefaultView;

                Fourniss.Visibility = Visibility.Visible;
            }
            else if (value == "Commandes")
            {//Commandes affichees selon les tableaux
                this.commDt = this.database.ExecuteToDataTable("select idCommande, individu.nom as NomClient, numProd, bicyclette.nom as nomArticle, prixUnitaire, " +
                    "programme.nom as NomProgramme, prixUnitaire*(1-programme.rabais/100) as PrixFinal " +
                    "from commande natural join ligneCommandeVelo natural join bicyclette join individu on commande.idClient=individu.idClient " +
                    "join programme on individu.noProgramme = programme.noProgramme union " +
                    "select idCommande, individu.nom as NomClient, numProd, categorie as nomArticle, prixUnitaire, programme.nom as NomProgramme, prixUnitaire*(1-programme.rabais/100) as PrixFinal " +
                    "from commande natural join ligneCommandePiece natural join piece join individu on commande.idClient=individu.idClient " +
                    "join programme on individu.noProgramme = programme.noProgramme order by idCommande; ", "commandes");//natural join ligneCommandeVelonatural join bicyclette natural

                GridCommande.ItemsSource = this.commDt.DefaultView;
                //Boutique.Visibility = Visibility.Visible;
                Commande.Visibility = Visibility.Visible;
            }
            else if (value == "Programmes de fidelite")
            {
                this.progclieDt = this.database.ExecuteToDataTable("select * from programme", "Programmes");
                GridProgClient.ItemsSource = this.progclieDt.DefaultView;

                Programmes.Visibility = Visibility.Visible;
                ValideFidelite.Visibility = Visibility.Visible;
            } else if (value == "Approvisionnement")
            {
                Appro.Visibility = Visibility.Visible;
                ValideAppro.Visibility = Visibility.Visible;
            } else if (value == "liste abonnes Programmes")
            {
                this.progclieDt = this.database.ExecuteToDataTable("select * from programme ", "programme");
                GridProgClient.ItemsSource = this.progclieDt.DefaultView;
                ChercherClient.Visibility = Visibility.Visible;
                ChPrenom.Visibility = Visibility.Visible;
                ChNom.Visibility = Visibility.Visible;
                ProgClient.Visibility = Visibility.Visible;
            }
            this.database.CloseConnection();
        }
        private void ValideAppro_Click(object sender, RoutedEventArgs e)
        {
        }

        private void PagePrece_Click(object sender, RoutedEventArgs e)
        {
            Administrateur_Accueil windows = new Administrateur_Accueil();
            this.Close();
            windows.Show();
        }
        private void ValideVélo_Click(object sender, RoutedEventArgs e)
        {
        }

        private void ValideAssemblage_Click(object sender, RoutedEventArgs e)
        {
        }

        private void ValideParticulier_Click(object sender, RoutedEventArgs e)
        {

        }

        private void ValideBoutique_Click(object sender, RoutedEventArgs e)
        {
        }

        private void ValideCommande_Click(object sender, RoutedEventArgs e)
        {
        }

        private void ValideFidelite_Click(object sender, RoutedEventArgs e)
        {
        }


        private void Valid_AddComm_Click(object sender, RoutedEventArgs e)
        {
        }

        private void ChercherClient_Click(object sender, RoutedEventArgs e)
        {
            if (ChNom.Text != "" && ChPrenom.Text != "")
            {
                this.progclieDt = this.database.ExecuteToDataTable("SELECT Nom,prenom,idIndividus from individus where Nom= ","individus");
                //GridProgClient.ItemsSource = this.progclieDt.DefaultView;
            }
            else
            {
                MessageBox.Show("Veuillez remplir les champs.");
            }
        }

        private void MAJ_ProgCli_Click(object sender, RoutedEventArgs e)
        {
            //MySqlCommand cmd = this.database.connection.CreateCommand();
            //cmd.CommandText = "SELECT * FROM adhesions;";
            //cmd.ExecuteNonQuery();
            //MySqlDataAdapter msa = new MySqlDataAdapter(cmd);
            //MySqlCommandBuilder scb = new MySqlCommandBuilder(msa);
            //msa.Update(this.progclieDt);
        }

        private void FiltreNormal_Checked(object sender, RoutedEventArgs e)
        {
            //this.fournissDt = this.database.ExecuteToDataTable(
            //                 "SELECT * FROM fournisseurs;",
            //                 "fournisseurs");
            //GridFournisseur.ItemsSource = this.fournissDt.DefaultView;
            //FiltreFourniss.IsChecked = false;
        }

        private void FiltreFourniss_Checked(object sender, RoutedEventArgs e)
        {
            //this.fournissDt = this.database.ExecuteToDataTable(
            //                 "SELECT p.numprod, p.nomprodcatalogue, f.Siret FROM stocks s NATURAL JOIN pieces p NATURAL JOIN approvisionne a NATURAL JOIN fournisseurs f;",
            //                 "fournisseurs");
            //GridFournisseur.ItemsSource = this.fournissDt.DefaultView;
            //FiltreNormal.IsChecked = false;
        }

        private void AjoutListeMontage(object sender, RoutedEventArgs e)
        {
            numProdVelo.Text = "numProd";
            numProdVelo.Visibility = Visibility.Visible;
            cadre.Visibility = Visibility.Visible;
            guidon.Visibility = Visibility.Visible;
            freins.Visibility = Visibility.Visible;
            selle.Visibility = Visibility.Visible;
            derailleurAvant.Visibility = Visibility.Visible;
            derailleurArriere.Visibility = Visibility.Visible;
            roueAvant.Visibility = Visibility.Visible;
            roueArriere.Visibility = Visibility.Visible;
            reflecteurs.Visibility = Visibility.Visible;
            pedaier.Visibility = Visibility.Visible;
            ordinateur.Visibility = Visibility.Visible;
            panier.Visibility = Visibility.Visible;
            AjouterListe.Visibility = Visibility.Hidden;
            Confirmer.Visibility = Visibility.Visible;
            foreach (DataRow dr in assembDt.Rows)
            {
                numProdVelo.Items.Add( dr["numProd"].ToString());
                cadre.Items.Add(dr["cadre"].ToString());
                guidon.Items.Add(dr["guidon"].ToString());
                freins.Items.Add(dr["freins"].ToString());
                selle.Items.Add(dr["selle"].ToString());
                derailleurAvant.Items.Add(dr["derailleurAvant"].ToString());
                derailleurArriere.Items.Add(dr["derailleurArriere"].ToString());
                roueAvant.Items.Add(dr["roueAvant"].ToString());
                roueArriere.Items.Add(dr["roueArriere"].ToString());
                reflecteurs.Items.Add(dr["reflecteurs"].ToString());
                pedaier.Items.Add(dr["pedalier"].ToString());
                ordinateur.Items.Add(dr["ordinateur"].ToString());
                panier.Items.Add(dr["panier"].ToString());
            }
        }

        private void ConfirmerAjouterListe(object sender, RoutedEventArgs e)
        {
            string input_numProd = numProdVelo.SelectedItem.ToString();
            string input_cadre = cadre.SelectedItem.ToString();
            string input_guidon = guidon.SelectedItem.ToString();
            string input_freins = freins.SelectedItem.ToString();
            string input_selle = selle.SelectedItem.ToString();
            string input_derailleurAvant = derailleurAvant.SelectedItem.ToString();
            string input_derailleurArriere = derailleurArriere.SelectedItem.ToString();
            string input_roueAvant = roueAvant.SelectedItem.ToString();
            string input_roueArriere = roueArriere.SelectedItem.ToString();
            string input_reflecteurs = reflecteurs.SelectedItem.ToString();
            string input_pedalier =pedaier.SelectedItem.ToString();
            string input_ordinateur = freins.SelectedItem.ToString();
            string input_panier = freins.SelectedItem.ToString();


            this.database = new BDBuilder("VeloMax");
            this.database.ExecuteRequest("INSERT INTO listeMontagePiecesBicyclette(numProd, cadre, guidon, freins, selle, derailleurAvant, derailleurArriere, roueAvant, roueArriere, reflecteurs, pedalier, ordinateur, panier)  " +
                "VALUES(\"" + input_numProd + "\", \"" + input_cadre + "\", \"" + input_guidon + "\",\" " + input_freins + "\",\" " + input_selle + "\", \"" + input_derailleurAvant + "\", \"" 
                + input_derailleurArriere + "\", \"" + input_roueAvant + "\", \"" + input_roueArriere + "\",\" " + input_reflecteurs + "\", \"" + input_pedalier + "\",\" " 
                + input_ordinateur + "\",\" " + input_panier + "\");");
            this.database.CloseConnection();
            MessageBox.Show(input_numProd);

            numProdVelo.Visibility = Visibility.Hidden;
            cadre.Visibility = Visibility.Hidden;
            guidon.Visibility = Visibility.Hidden;
            freins.Visibility = Visibility.Hidden;
            selle.Visibility = Visibility.Hidden;
            derailleurAvant.Visibility = Visibility.Hidden;
            derailleurArriere.Visibility = Visibility.Hidden;
            roueAvant.Visibility = Visibility.Hidden;
            roueArriere.Visibility = Visibility.Hidden;
            reflecteurs.Visibility = Visibility.Hidden;
            pedaier.Visibility = Visibility.Hidden;
            ordinateur.Visibility = Visibility.Hidden;
            panier.Visibility = Visibility.Hidden;


            numProdVelo.Items.Clear();
            cadre.Items.Clear();
            guidon.Items.Clear();
            freins.Items.Clear();
            selle.Items.Clear();
            derailleurAvant.Items.Clear();
            derailleurArriere.Items.Clear();
            roueAvant.Items.Clear();
            roueArriere.Items.Clear();
            reflecteurs.Items.Clear();
            pedaier.Items.Clear();
            ordinateur.Items.Clear();
            panier.Items.Clear();
        }

        private void Ajoutervelo_Click(object sender, RoutedEventArgs e)
        {

            this.database = new BDBuilder("VeloMax");
            string a = Convert.ToString(Convert.ToInt32(bicycletteDt.Compute("max([numProd])", string.Empty)) + 1);
            string b = Velonom.Text;
            string c = Velograndeur.Text;
            string d = Veloprix_Unitaire.Text;
            string g = VeloligneProduit.Text;
            string f = VelonbDispo.Text;
            string h = VelonbVendu.Text;

            MessageBox.Show("INSERT INTO bicyclette(numProd, nom, grandeur, prixUnitaire, ligneProduit, nbDispo,nbVendu) VALUES(\"" + a + "\", \"" + b + "\", \"" + c + "\", " + d + ", \"" + g + "\", " + f + ", " + h + ");");

            this.database.ExecuteRequest("INSERT INTO bicyclette(numProd, nom, grandeur, prixUnitaire, ligneProduit, nbDispo,nbVendu) VALUES(\"" + a + "\", \"" + b + "\", \"" + c + "\", " + d + ", \"" + g + "\", " + f + ", " + h + ");");
            this.database.CloseConnection();
        }

        bool temp = true;
        private void AjoutPieceClick(object sender, RoutedEventArgs e)
        {
                
            if (temp)
            {
                description.Visibility = Visibility.Visible;
                dateInscription.Visibility = Visibility.Visible;
                dateDiscontinue.Visibility = Visibility.Visible;
                prix_Unitaire.Visibility = Visibility.Visible;
                NbDispo.Visibility = Visibility.Visible;
                categorie.Visibility = Visibility.Visible;
                nbVendu.Visibility = Visibility.Visible;
                temp = false;
            }
            else
            {
                this.database = new BDBuilder("VeloMax");
                string input_numProd = Convert.ToString(Convert.ToInt32(piecesDt.Compute("max([numProd])", string.Empty)) + 1);
                string input_description = description.Text;
                string input_dateIntroduction = dateInscription.Text;
                string input_dateDiscont = dateDiscontinue.Text;
                string input_prixUnitaire = prix_Unitaire.Text;
                string input_nbdispo = NbDispo.Text;
                string input_categorie =categorie.Text;
                string input_nbvendu = nbVendu.Text;


                string msg = "INSERT INTO piece(numProd, description, dateIntroduction, dateDiscont, prixUnitaire, nbdispo, categorie, nbvendu) VALUES (\"" + input_numProd + "\", \"" + input_description + "\", \"" + input_dateIntroduction + "\", \"" + input_dateDiscont + "\", \"" + input_prixUnitaire + "\", \"" + input_nbdispo + "\", \"" + input_categorie + "\", \"" + input_nbvendu + "\");";
                //    // + "\",\" " + + "\", \"" +  + "\",\" " + + "\",\" " + input_panier
                MessageBox.Show(msg);

                this.database.ExecuteRequest(msg);
                this.database.CloseConnection();
                description.Visibility = Visibility.Hidden;
                dateInscription.Visibility = Visibility.Hidden;
                dateDiscontinue.Visibility = Visibility.Hidden;
                prix_Unitaire.Visibility = Visibility.Hidden;
                NbDispo.Visibility = Visibility.Hidden;
                categorie.Visibility = Visibility.Hidden;
                nbVendu.Visibility = Visibility.Hidden;
            }



            
        }
        bool temp2 = true;
        private void SupprimerPieceClick(object sender, RoutedEventArgs e)
        {
            if (temp2)
            {
                
                temp2 = false;

                temp = false;
                description.Visibility = Visibility.Visible;
                
            }
            else
            {
                this.database = new BDBuilder("VeloMax");

                BDBuilder bd = new BDBuilder("name");

                string input_numProd = description.Text;
                DataTable temp = database.ExecuteToDataTable("SELECT categorie FROM piece WHERE numProd = \"" + input_numProd + "\";", "temp");

                string msg = "DELETE FROM listePieceFournisseur WHERE numProd = \"" + input_numProd + "\";";
                //    // + "\",\" " + + "\", \"" +  + "\",\" " + + "\",\" " + input_panier
                MessageBox.Show(msg);

                this.database.ExecuteRequest(msg);
                this.database.CloseConnection();
                description.Visibility = Visibility.Hidden;
                dateInscription.Visibility = Visibility.Hidden;
                dateDiscontinue.Visibility = Visibility.Hidden;
                prix_Unitaire.Visibility = Visibility.Hidden;
                NbDispo.Visibility = Visibility.Hidden;
                categorie.Visibility = Visibility.Hidden;
                nbVendu.Visibility = Visibility.Hidden;
            }

        }

        private void NumProdPieceOpen(object sender, ContextMenuEventArgs e)
        {
            foreach (DataRow dr in piecesDt.Rows)
            {
                NumProdPiece.Items.Add(dr["numProd"].ToString());
            }

        }

        private void Approvisionnerclick(object sender, RoutedEventArgs e)
        {

        }

        private void Choix_MD_ContextMenuOpening(object sender, ContextMenuEventArgs e)
        {
            DisableAll();
        }
    }
}
