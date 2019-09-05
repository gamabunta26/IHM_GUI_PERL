package Controleur;

	use warnings;
	use strict;

	use utf8;

	use Tk;
	use DBI;
	use Win32::FileOp qw(ShellExecute);	# ouvrir navigateur par defaut
	use POSIX qw(strftime);	# pour gestion date
	use POSIX;


	##########################################################################################
	# Include Librairie interne
	##########################################################################################
	use lib '../Model/';

	use lib '../Vue/';
	use Aide;
	use A_Propos;


	##########################################################################################
	# Definition variable
	##########################################################################################
	my Tk::MainWindow $mw ;	# main windows
	my Tk::MainWindow $frame_haut ;		# frame dans la fenetre
	my Tk::MainWindow $frame_gauche ;		# frame dans la fenetre


	###################################################################################
	# Fonction : Creation de la barre de menu
	###################################################################################
	sub creation_menubar {
		my $menu_bar = $mw->Menu( -type => "menubar" );
		$mw->configure( -menu => $menu_bar, );

		# menu fichier avec sous-menu
		my $menu_fichier = $menu_bar->cascade( -label => 'Fichier', -tearoff => 0, );
		$menu_fichier->command( -label   => 'Configuration' );
		$menu_fichier->command( -label   => 'Charger les users' );
		$menu_fichier->separator;
		$menu_fichier->command( -label   => 'Quitter', -command => sub { exit;} );

		# menu Aide et a propos
		$menu_bar->command( -label   => 'A Propos', -command => sub { A_Propos->new->affiche_A_Propos(); } );
	}


	###########################################################################
	# Main
	###########################################################################

	sub new {
		my ($proto) = @_;

		$mw = Tk::MainWindow->new();
		$mw->title("Programme Recuperation des footprints by BDR");
		$mw->geometry("800x600");
		$frame_haut = $mw->Frame->pack(-side => 'top');
		$frame_gauche = $mw->Frame(-borderwidth => 20)->pack(-side => 'left', -anchor => 'n');

		creation_menubar();

		$mw->bind('all' => '<Key-Escape>' => sub {$mw->destroy;});

		MainLoop;
	}

1;