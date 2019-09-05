package A_Propos;

	##########################################################################################
	# Include Librairie PERL
	##########################################################################################
	use warnings;
	use Tk;
	use strict;
	use utf8;

	##########################################################################################
	# Definition variable
	##########################################################################################
	my Tk::MainWindow $mw ;	# main windows

	
	###################################################################################
	# Creation du contenu de la fenetre A_Propos
	###################################################################################
	sub affiche_A_Propos
	{
		# $mw->bind( 'all' => '<Key-Escape>' => sub {$mw->destroy;} );
		MainLoop;
	}

	
	###################################################################################
	# New
	###################################################################################
	sub new
	{
		$mw = Tk::MainWindow->new( -title => 'A Propos');
		$mw->geometry( "600x400" );

		$mw->Label(-text => 'A Propos')->pack;
		$mw->Label(-text => '')->pack;
		$mw->Label(-text => 'Créé le 29/04/2019')->pack;
		$mw->Label(-text => 'Par BDR' )->pack;
		$mw->Label(-text => '')->pack;
		$mw->Label(-text => 'programme d exctraction des ticket Footprint')->pack;
		$mw->Label(-text => '')->pack;
		$mw->Label(-text => 'Git History :')->pack(-anchor => 'w');
		$mw->Label(-text => '')->pack;
		$mw->Label(-text => '212acf94 - 29/04/2019 - initial commit' , -anchor => 'w')->pack(-anchor => 'w');
		$mw->Label(-text => '5a244d0a - 29/04/2019 - ajout connexion mssql ok' , -anchor => 'w')->pack(-anchor => 'w');
		$mw->Label(-text => '8c5e2dd7 - 29/04/2019 - retour des champs dans un tableau et affichage' , -anchor => 'w')->pack(-anchor => 'w');
		$mw->Label(-text => 'de6d88d3 - 30/04/2019 - retour des champs dans un tableau et affichage' , -anchor => 'w')->pack(-anchor => 'w');
		$mw->Label(-text => '89721f74 - 30/04/2019 - ajout menu connexion et deconnexion et un bouton pour lancer le sql' , -anchor => 'w')->pack(-anchor => 'w');
		$mw->Label(-text => 'a3d9c270 - 30/04/2019 - creation de la requete SQL qui va bien' , -anchor => 'w')->pack(-anchor => 'w');
		$mw->Label(-text => '629cd39b - 02/05/2019 - changement de l affichage, remplacement de pack avec une frame et grid' , -anchor => 'w')->pack(-anchor => 'w');
		$mw->Label(-text => 'de6d88d3 - 02/05/2019 - travail divers sur els frames margin , centré, ...' , -anchor => 'w')->pack(-anchor => 'w');


		$mw->Button(
			-text    => 'Quit',
			-command => sub { $mw->destroy },
		)->pack;
	}


1;