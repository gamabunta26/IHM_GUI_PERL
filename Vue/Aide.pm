package Aide;

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
	# Creation du contenu de la fenetre aide
	###################################################################################
	sub affiche_aide
	{
		# $mw->bind( 'all' => '<Key-Escape>' => sub {$mw->destroy;} );
		MainLoop;
	}

	
	###################################################################################
	# New
	###################################################################################
	sub new
	{
		$mw = Tk::MainWindow->new( -title => 'Aidez moi !!!');
		$mw->geometry( "200x200" );
		$mw->Label(-text => 'A Propos')->pack;
		$mw->Label(-text => 'Aide!')->pack;
		$mw->Label(-text => 'Aide!')->pack;
		$mw->Label(-text => 'Aide!')->pack;

		$mw->Button(
			-text    => 'Quit',
			-command => sub { $mw->destroy },
		)->pack;
	}


1;