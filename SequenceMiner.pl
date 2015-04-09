#!/usr/bin/perl -w
# Covers SIX major sequence databases (protein & nucleotide)

use strict;
use warnings;
use LWP::Simple;

unless ($#ARGV==1){
        print "USAGE: perl download.pl <database> <id>\n\n";
	print "		Databases	    	 Use as		Example\n";
	print "		protein Data Bank\t pdb\t	1aap\n";
	print "		PFAM		 \t pfam		PF00406\n";
	print "		RFAM		 \t rfam		RF00406\n";
	print "		EMBL nt		 \t embl/ebi	CN000065\n";
	print "		PROSITE		 \t prosite	PS51092\n";
	print "		Uniprot-enzymes	 \t uniprot	A0GKY5\n\n";
        exit;
}

my $db = $ARGV[0];
my $id = $ARGV[1];

## Download pdb file from Protein Data Bank(Ex id: 1AAP)

if($db eq "pdb"){

        my $pdb_url = 'http://www.rcsb.org/pdb/files/'.$id.'.pdb';
        getstore($pdb_url, $id.'.pdb');
        exit;
}
## Download FASTA sequence from Protein Data Bank(Ex id: 5PTI)

elsif($db eq "pdb-fasta"){
	my $fasta = 'http://www.rcsb.org/pdb/files/fasta.txt?structureIdList='.$id;
	getstore($fasta, $id.'.fasta');
	exit;
}

## Download MSA of protein families from PFAM(Ex id: PF00406)

elsif($db eq "pfam"){
        my $pfam = 'http://pfam.xfam.org/family/'.$id.'/alignment/full/format?format=fasta&alnType=full&order=t&case=l&gaps=default&download=0';
        getstore($pfam, $id. '.fasta');
        exit;
}

## Download MSA of RNA families from RFAM(Ex id: RF00501)

elsif($db eq "rfam"){
	my $rfam = 'http://rfam.xfam.org/family/'.$id.'/alignment?acc='.$id.'&format=fasta&download=0';
	getstore($rfam, $id.'.fasta');
	exit;
}

## Download Nucleotide data from EMBL(Ex id: CN000065)

elsif($db eq "embl" or $db eq "ebi"){
	my $embl = 'http://www.ebi.ac.uk/ena/data/view/'.$id.'&display=fasta';
	getstore($embl, $id.'.fasta');
	exit;
}

## Download MSA from PROSITE(Ex id: PS51092)

elsif($db eq "prosite"){
	my $pro = 'http://prosite.expasy.org/cgi-bin/aligner?psa='.$id.'&format=FASTA';
	getstore($pro, $id.'.fasta');
	exit;
}

## Download sequence from Uniprot enzyme database (Ex id: A0KGY5)

elsif($db eq "uniprot"){
	my $uni = 'http://www.uniprot.org/uniprot/'.$id.'.fasta';
	getstore($uni, $id.'.fasta');
	exit;
}else{
   print "Something went wrong\n";
   exit;
}

## END of program
