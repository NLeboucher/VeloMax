   M S B A M L   `   `   `  ����B  >VeloMax, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:VeloMaxVeloMax  5   	       VeloMax.Gestion   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:VeloMax     5   	     � Title$  Gestion��5   	   $	��450��6   $	��820��6&   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $
��243* �6   �� 5      $
��569* �6   .+�5   
   �� $��10��6   
���   �$��0,0,62.449,1q�66   �� 5   
   $	��355��6   $	��Top=�6   $H��Bhttps://images.pexels.com/photos/1595483/pexels-photo-1595483.jpeg��65   $
��Left=�6�   $	��657��6�   $��181,0,-26,0q�6�   $��2��6�   �� 5   
   $��Verdana)�6   $��30(�6)   $��25,10,62.449,0q�67   $
��Wrap=�6O   $��Gestion ��6c   $	��Top=�6s   $	��110��6�   
�������6�   �� 5   
   -   5         ��Name$ Choix_MD��5      $
��Left=�6'   $��	0,238,0,0q�5   
   $	��Top=�6   $	��145��69   $��27��6G   .@�5      ��  �� 
IsSelected . $��Choix��6-   �� 5      $��Pieces de rechanges��6   �� 5      $��Velos��6   �� 5      $��
Assemblage��6   �� 5      $��Clients_Particuliers��6   �� 5      $��Boutiques_Specialisees��6   �� 5      $��Fournisseurs��6   �� 5      $��	Commandes��6   �� 5      $��Approvisionnement��6   �� 5      $��Programmes client��6   �� 5      $��Programmes de fidélité��6   5      �� 5    
   -   5         ��Name$ Validateur_MD��5       $��Sélectionner��6(   $
��Left=�6?   $��
-1,304,0,0q�6Z   $	��Top=�6n   $	��146��6�   $��30��6�   6�   �� 5"   
   -   5         ��Name$ Pieces��5"      $y�Hidden=�6%   $��2��69   .+�5#      &   System.Windows.Controls.DataGrid  -   5          Name$ 	GridPiece��5#   n      AutoGenerateColumns . $	��335��62   $
��Left=�6?   $��
189,20,0,0q�6Z   $	��Top=�6�   $	��613��6�   ��. $
��Auto=�5$      $
��Auto=�5%      ��69   �� 5'      �� 5)   
   -   5        $
 Velo��5)      $y�Hidden=�6#   $��2��67   .+�5*        -   5        $��	GridVélo��5*   n    . $	��335��62   $
��Left=�6?   $��
189,20,0,0q�6Z   $	��Top=�6~   $	��613��6�   ��. $
��Auto=�5+      $
��Auto=�5,      ��5-      �� 5.      5/      �� 50   
   -   5        $ Assemb��50      $y�Hidden=�6%   $��2��69   .+�51        -   5        $��GridAssemblage��51   n    . $	��335��62   $
��Left=�6?   $��
189,20,0,0q�6Z   $	��Top=�6�   $	��613��6�   ��. $
��Auto=�52      $
��Auto=�53      ��69   �� 54      55      �� 57   
   -	   5        $
 Part��57      $y�Hidden=�6#   $��2��67   .+�58        -
   5        $��GridParticulier��58   n    . $	��335��62   $
��Left=�6?   $��
189,20,0,0q�6Z   $	��Top=�6�   $	��613��6�   ��. $
��Auto=�59      $
��Auto=�5:      ��69   �� 5;      5<      �� 5=   
   -   5        $ Boutique��5=      $y�Hidden=�6'   $��2��6;   .+�5>        -   5        $��GridBoutique��5>   n    . $	��335��62   $
��Left=�6?   $��
189,20,0,0q�6Z   $	��Top=�6�   $	��533��6�   ��. $
��Auto=�5?      $
��Auto=�5@      ��69   �� 5A      5B      �� 5D   
   -   5        $ Fourniss��5D      $y�Hidden=�6'   $��2��6;   .+�5E        -   5        $��GridFournisseur��5E   n    . $	��335��62   $
��Left=�6?   $��
189,20,0,0q�6Z   $	��Top=�6�   $	��613��6�   ��. $
��Auto=�5F      $
��Auto=�5G      ��69   �� 5H      5I      �� 5J   
   -   5         ��Name$ FiltreNormal��5J      $��Normal��6)   $y�Hidden=�6:   $
��Left=�6N   $��363.551,375,0,0q�6i   $	��Top=�6�   $��23��6�   $��78��6�   $��1��6�   �� 5K   
   -   5        $ FiltreFourniss��5K      $��Par Fournisseurs��6+   $y�Hidden=�6F   $
��Left=�6Z   $��223.551,374,0,0q�6u   $	��Top=�6�   $��24��6�   $	��108��6�   $��1��6�   �� 5L   
   -   5        $ Commande��5L      $y�Hidden=�6'   $��2��6;   .+�5M        -   5        $��GridCommande��5M   n    . $	��335��62   $
��Left=�6?   $��
189,20,0,0q�6Z   $	��Top=�6�   $	��613��6�   ��. $
��Auto=�5N      $
��Auto=�5O      ��69   �� 5P      5Q      �� 5R   
   -   5        	 ��Name$	 NumCommande��5R      $y�Hidden=�6'   $
��Left=�6;   $��23��6V   $��438.551,61,0,0q�6b   
 �� TextWrapping$

 Wrap=�6z   $��Num commande��6�   $	��Top=�6�   $	��102��6�   $��1��6�   �� 5S   
   -   5        $	 
IdBoutique��5S      $y�Hidden=�6&   $
��Left=�6:   $��23��6U   $��438.551,103,0,0q�6a   $

 Wrap=�6z   $��Id boutique��6�   $	��Top=�6�   $	��102��6�   $��1��6�   �� 5T   
   -   5        $	 IdParticulier��5T      $y�Hidden=�6)   $
��Left=�6=   $��23��6X   $��438.551,147,0,0q�6d   $

 Wrap=�6}   $��Id particulier��6�   $	��Top=�6�   $	��102��6�   $��1��6�   �� 5U   
   -   5        $	 NoModele��5U      $y�Hidden=�6$   $
��Left=�68   $��23��6S   $��438.551,202,0,0q�6_   $

 Wrap=�6x   $��	No modele��6�   $	��Top=�6�   $	��102��6�   $��1��6�   �� 5V   
   -   5        $	 NumProd��5V      $y�Hidden=�6#   $
��Left=�67   $��23��6R   $��438.551,254,0,0q�6^   $

 Wrap=�6w   $��Num prod��6�   $	��Top=�6�   $	��102��6�   $��1��6�   �� 5W   
   -   5        $ Valid_AddComm��5W      $y�Hidden=�6(   $��Ajouter Commande��6<   $
��Left=�6W   $��438.551,301,0,0q�6r   $	��Top=�6�   $	��116��6�   $��28��6�   $��1��6�   �� 5Y   
   -   5        $ Appro��5Y      $y�Hidden=�6$   $��2��68   .+�5Z        -   5        $��	GridAppro��5Z   n    . $	��340��62   $
��Left=�6?   $��
189,20,0,0q�6Z   $	��Top=�6   $	��533��6�   ��. $
��Auto=�5[      $
��Auto=�5\      ��69   �� 5]      5^      �� 5_   
   -   5        $ ValideAppro��5_      $��Mettre à Jour��6&   $y�Hidden=�6>   $
��Left=�6R   $��200,390,0,0q�6m   $	��Top=�6�   $��75��6�   $��2��6�   �� 5a   
   -   5        $ 
Programmes��5a      $y�Hidden=�6)   $��2��6=   .+�5b        -   5        $��GridFidelite��5b   n    . $	��340��62   $
��Left=�6?   $��
189,20,0,0q�6Z   $	��Top=�6�   $	��533��6�   ��. $
��Auto=�5c      $
��Auto=�5d      ��69   �� 5e      5f      �� 5g   
   -   5        $ ValideFidelite��5g      $��Mettre à Jour��6)   $y�Hidden=�6A   $
��Left=�6U   $��200,390,0,0q�6p   $	��Top=�6�   $��75��6�   $��2��6�   �� 5i   
   -   5        $ 
ProgClient��5i      $y�Hidden=�6)   $��2��6=   .+�5j        -    5        $��GridProgClient��5j   n    . $	��340��62   $
��Left=�6?   $��
189,20,0,0q�6Z   $	��Top=�6�   $	��533��6�   ��. $
��Auto=�5k      $
��Auto=�5l      ��69   �� 5m      5n      �� 5o   
   -!   5        $	 ChNom��5o      $
��Left=�6!   $��23��6<   $y�Hidden=�6H   $��195,381,0,0q�6\   $

 Wrap=�6q   $	��Nom��6�   $	��Top=�6�   $	��120��6�   $��2��6�   �� 5p   
   -"   5        $	 ChPrenom��5p      $
��Left=�6$   $��23��6?   $y�Hidden=�6K   $��76.551,381,0,0q�6_   $

 Wrap=�6w   $��Prénom��6�   $	��Top=�6�   $	��120��6�   $��1��6�   �� 5q   
   -#   5        $ ChercherClient��5q      $��Chercher��6)   $y�Hidden=�6<   $
��Left=�6P   $��223.551,385,0,0q�6k   $	��Top=�6�   $��75��6�   $��1��6�   �� 5s   
   -$   5        $��Retour��5s      $
��Left=�6"   $��
25,374,0,0q�6=   $	��Top=�6Q   $��95��6i   6t   �� 5u   
   -%   5        $ Ajoutervelo��5u      $y�Hidden=�6'   $
��Left=�6;   $��181,358,0,0q�6V   $	��Top=�6k   $��75��6�   4  .System.Windows.Automation.AutomationProperties   Name$ Ajoutervelo��6�   $��2��6�   .��5w      �� $	��120��6   5x      �� 5y   
   -&   5        $	 Velonom��5y      $��1��6#   $y�Hidden=�63   $
��Left=�6G   $��23��6b   $��
15,355,0,0q�6n   $

 Wrap=�6�   $	��Nom��6�   $	��Top=�6�   $��70��6�   $ Velonom��6�   �� 5z   
   -'   5        $	 Velograndeur��5z      $��1��6(   $y�Hidden=�68   $
��Left=�6L   $��23��6g   $��
90,355,0,0q�6s   $

 Wrap=�6�   $��Grandeur��6�   $	��Top=�6�   $��70��6�   $ Velograndeur��6�   �� 5{   
   -(   5        $	 Veloprix_Unitaire��5{      $��1��6-   $y�Hidden=�6=   $
��Left=�6Q   $��23��6l   $��165,355,0,0q�6x   $

 Wrap=�6�   $
��Prix��6�   $	��Top=�6�   $��70��6�   $ Veloprix_Unitaire��6�   �� 5|   
   -)   5        $	 VeloligneProduit��5|      $��1��6,   $y�Hidden=�6<   $
��Left=�6P   $��23��6k   $��240,355,0,0q�6w   $

 Wrap=�6�   $��Ligne_produit��6�   $	��Top=�6�   $��70��6�   $ VeloligneProduit��6�   �� 5}   
   -*   5        $	 VelonbDispo��5}      $��1��6'   $y�Hidden=�67   $
��Left=�6K   $��23��6f   $��318,355,0,0q�6r   $

 Wrap=�6�   $��nb_Dispo��6�   $	��Top=�6�   $��70��6�   $ VelonbDispo��6�   �� 5~   
   -+   5        $	 VelonbVendu��5~      $��1��6'   $y�Hidden=�67   $
��Left=�6K   $��23��6f   $��393,355,0,0q�6r   $

 Wrap=�6�   $��nbVendu��6�   $	��Top=�6�   $��70��6�   $ VelonbVendu��6�   �� 5   
   -,   5        $ numProdVelo��5      $
��Left=�6(   $��217,362,0,0q�6C   $	��Top=�6X   $��86��6p   $��2��6{   $y�Hidden=�6�    �� Text$ numProd��6�   �� 5�   
   --   5        $ cadre��5�      $
��Left=�6"   $��
73,362,0,0q�6=   $	��Top=�6Q   $��86��6i   $��1��6t   $y�Hidden=�6�   $ cadre��6�   �� 5�   
   -.   5        $ guidon��5�      $
��Left=�6#   $��174,362,0,0q�6>   $	��Top=�6S   $��86��6k   $��1��6v   $y�Hidden=�6�   $ guidon��6�   �� 5�   
   -/   5        $ freins��5�      $
��Left=�6#   $��276,362,0,0q�6>   $	��Top=�6S   $��86��6k   $��1��6v   $y�Hidden=�6�   $ freins��6�   �� 5�   
   -0   5        $ selle��5�      $
��Left=�6"   $��379,362,0,0q�6=   $	��Top=�6R   $��86��6j   $��1��6u   $y�Hidden=�6�   $ selle��6�   �� 5�   
   -1   5        $ derailleurAvant��5�      $
��Left=�6,   $��483,362,0,0q�6G   $	��Top=�6\   $��86��6t   $��1��6   $y�Hidden=�6�   $ derailleurAvant��6�   �� 5�   
   -2   5        $ derailleurArriere��5�      $
��Left=�6.   $��217,390,0,0q�6I   $	��Top=�6^   $��86��6v   $��2��6�   $y�Hidden=�6�   $ derailleurArriere��6�   �� 5�   
   -3   5        $ 	roueAvant��5�      $
��Left=�6&   $��
73,390,0,0q�6A   $	��Top=�6U   $��86��6m   $��1��6x   $y�Hidden=�6�   $ 	roueAvant��6�   �� 5�   
   -4   5        $ roueArriere��5�      $
��Left=�6(   $��174,390,0,0q�6C   $	��Top=�6X   $��86��6p   $��1��6{   $y�Hidden=�6�   $ roueArriere��6�   �� 5�   
   -5   5        $ reflecteurs��5�      $
��Left=�6(   $��276,390,0,0q�6C   $	��Top=�6X   $��86��6p   $��1��6{   $y�Hidden=�6�   $ reflecteurs��6�   �� 5�   
   -6   5        $ pedaier��5�      $
��Left=�6$   $��379,390,0,0q�6?   $	��Top=�6T   $��86��6l   $��1��6w   $y�Hidden=�6�   $ pedalier��6�   �� 5�   
   -7   5        $ 
ordinateur��5�      $
��Left=�6'   $��483,390,0,0q�6B   $	��Top=�6W   $��86��6o   $��1��6z   $y�Hidden=�6�   $ 
ordinateur��6�   �� 5�   
   -8   5        $ ajouterVelo��5�      $
��Left=�6(   $��224,376,0,0q�6C   $	��Top=�6X   $��86��6p   $��1��6{   $y�Hidden=�6�   �� 5�   
   -9   5        $ panier��5�      $
��Left=�6#   $��483,329,0,0q�6>   $	��Top=�6S   $��86��6k   $��1��6v   $y�Hidden=�6�   �� 5�   
   -:   5        $ AjouterListe��5�      $��AjouterListe��6'   $
��Left=�6>   $��181,370,0,0q�6Y   $	��Top=�6n   $��75��6�   $ AjouterListe��6�   $y�Hidden=�6�   $��2��6�   �� 5�   
   -;   5        $ VirerPieceDeListe��5�      $��VirerPieceDeListe��6,   $
��Left=�6H   $��181,391,0,0q�6c   $	��Top=�6x   $��75��6�   $ VirerPieceDeListe��6�   $y�Hidden=�6�   $��2��6�   �� 5�   
   -<   5        $ 	Confirmer��5�      $��	Confirmer��6$   $
��Left=�68   $��149,399,0,0q�6S   $	��Top=�6h   $��75��6�   $��1��6�   $ AjouterListe��6�   $y�Hidden=�6�   �� 5�   
   -=   5        $ 
AjoutPiece��5�      $��2��6%   $��Ajouter Piece��69   $
��Left=�6Q   $��181,364,0,0q�6l   $	��Top=�6�   $��75��6�   $y�Hidden=�6�   $��23��6�   �� 5�   
   ->   5        $	 description��5�      $��1��6'   $
��Left=�67   $��23��6R   $��
18,364,0,0q�6^   $

 Wrap=�6r   $��description��6�   $	��Top=�6�   $	��120��6�   $y�Hidden=�6�   �� 5�   
   -?   5        $	 dateInscription��5�      $��1��6+   $
��Left=�6;   $��23��6V   $��143,364,0,0q�6b   $

 Wrap=�6w   $��date Inscription��6�   $	��Top=�6�   $	��120��6�   $y�Hidden=�6�   �� 5�   
   -@   5        $	 dateDiscontinue��5�      $��1��6+   $
��Left=�6;   $��23��6V   $��268,364,0,0q�6b   $

 Wrap=�6w   $��dateDiscontinuité��6�   $	��Top=�6�   $	��120��6�   $y�Hidden=�6�   �� 5�   
   -A   5        $	 prix_Unitaire��5�      $��1��6)   $
��Left=�69   $��23��6T   $��393,364,0,0q�6`   $

 Wrap=�6u   $��prix Unitaire��6�   $	��Top=�6�   $	��120��6�   $y�Hidden=�6�   �� 5�   
   -B   5        $	 NbDispo��5�      $��1��6#   $
��Left=�63   $��23��6N   $��
18,391,0,0q�6Z   $

 Wrap=�6n   $��nb Dispo��6�   $	��Top=�6�   $	��120��6�   $y�Hidden=�6�   �� 5�   
   -C   5        $	 	categorie��5�      $��1��6%   $
��Left=�65   $��23��6P   $��143,391,0,0q�6\   $

 Wrap=�6q   $��	categorie��6�   $	��Top=�6�   $	��120��6�   $y�Hidden=�6�   �� 5�   
   -D   5        $	 nbVendu��5�      $��1��6#   $
��Left=�63   $��23��6N   $��268,391,0,0q�6Z   $

 Wrap=�6o   $��nb Vendu��6�   $	��Top=�6�   $	��120��6�   $y�Hidden=�6�   �� 5�   
   -E   5        $ NumProdPiece��5�      $��1��6)   $
��Left=�69   $��
23,391,0,0q�6T   $	��Top=�6h   $	��120��6�   $y�Hidden=�6�   �� 5�   
   -F   5        $ Approvisionner��5�      $��Approvisionner��6)   $
��Left=�6B   $��
23,375,0,0q�6]   $	��Top=�6q   $��75��6�   $��1��6�   $y�Hidden=�6�   5�      5�      