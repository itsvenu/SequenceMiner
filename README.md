### SequenceMiner

Script retrieves the protein (also the crystal structure from pdb) and nucleotide sequences in fasta format 
as a single sequence and as a multiple sequence alignment depending on the database. It allows to choose on of 
the six databeses, PDB(http://www.rcsb.org/pdb/home/home.do), PFAM(http://pfam.xfam.org/), RFAM(http://rfam.xfam.org/),
EMBL nucleotide sequence database(http://www.ebi.ac.uk/ena), PROSITE(http://prosite.expasy.org/), 
UNIPROT(http://www.uniprot.org/) and retrieves the data with a valid id.

### Usage

$ perl SequenceMiner.pl 

USAGE: perl SequenceMiner.pl <database> <id>

		Databases	    	 Use as		Example
		protein Data Bank	 pdb		1aap
		PFAM		 	     pfam		PF00406
		RFAM		 	     rfam		RF00406
		EMBL nt		 	     embl/ebi	CN000065
		PROSITE		 	     prosite	PS51092
		Uniprot-enzymes	 	 uniprot	A0GKY5

