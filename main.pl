#!/usr/bin/perl -w  
########################################################################################
# Nom....... :  main.pl
# 
#########################################################################################
# Objectif.. :  xxx
#
#########################################################################################
# Description:
# ------------         
# xxx
#
#########################################################################################
# TODO :
# ------
# 
# - mettre un fichier cpan et modifier le lanceur
#
#########################################################################################
# Parametres recus :
# ------------------
# pas de parametre
#
#########################################################################################
# Fichiers externes :
# ------------------
#
#########################################################################################
# Code retours :
# --------------
#    0 : Terminé OK
#   99 : Terminé KO
#
##########################################################################################
# Revision :
# ----------
# - version initiale
#   10/04/2019 - Benjamin DORIER
#
# - MAJ 10/04/2019 - Benjamin DORIER - 	mise en MVC
#
##########################################################################################


##########################################################################################
# Include Librairie PERL
##########################################################################################
package Change_fp;

	use warnings;
	use strict;

	use utf8;


	##########################################################################################
	# Include Librairie interne
	##########################################################################################
	use lib './Model/';

	use lib './Vue/';
	use Aide;
	use A_Propos;

	use lib './Controleur/';
	use Controleur;


	my Controleur $ctl;
	$ctl = Controleur->new;

1;