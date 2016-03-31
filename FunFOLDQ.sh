#!/bin/bash
#You will need to edit these paths to match your installation - see README_FunFOLD3
export LC_ALL=en_US.utf-8
export PYMOL_HOME=/usr/bin/
export TMALIGN_HOME=/home/roche/bin/
export JAVA_HOME=/usr/bin/
export BIOLIP_Directory=/home/roche/bin/BioLip/FunFOLDBioLip/
export BIOLIP_LIGAND=/home/roche/bin/BioLip/FunFOLDBioLip/ligand/
export BIOLIP_RECEPTOR=/home/roche/bin/BioLip/FunFOLDBioLip/receptor/
export BIOLIP_TXT=/home/roche/bin/BioLip/FunFOLDBioLip/BioLiP.txt
export CIF=/home/roche/bin/BioLip/FunFOLDBioLip/components.cif

#$1 = Model file
#$2 = Target Name
#$3 = Output file directory - containing the model file, the template list and the fasta seqeucne file 
#$4 = Template list - a list of templates - PDBIDs with chain identifiers all on a single line seperated by a space
#$5 = sequence file in fasta format 
#$6 = BioLip directory textfile
#$7 = BioLip ligand directory 
#$8 = BioLip receptor directory 
#$9 = CIF file including the full directory path 

#To download and update the BioLip and CIF directories - This can be commneted out if the databases are downloaded and upto date 

#####JAVA_HOME/java -jar checkBioLiPlibrary.jar $BIOLIP_Directory

#To run FunFOLDQ
java -jar FunFOLDQ.jar $1 $2 $3 $4 $5 $BIOLIP_TXT $BIOLIP_LIGAND $BIOLIP_RECEPTOR $CIF
