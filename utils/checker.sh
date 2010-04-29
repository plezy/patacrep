#!/bin/sh
# Utility that corrects the songs input to respect some LaTeX rules


for i in songs/*/*.sg; 
do 

# oe inclusion
sed -i "s/coeur/cœur/g" $i;
sed -i "s/boeuf/bœuf/g" $i;
sed -i "s/oeuvre/œuvre/g" $i;
sed -i "s/oeuf/œuf/g" $i;
sed -i "s/soeur/sœur/g" $i;
sed -i "s/noeud/nœud/g" $i;
sed -i "s/oeil/œil/g" $i;
sed -i "s/\\\oe{}/œ/g" $i;
#punctuation
sed -i "s/’/'/g" $i;
sed -i "s/Ca /Ça /g" $i;

# dots rules
sed -i "s/\\.\\.\\./\\\dots/g" $i;

#chords
sed -i "s/\\[Re\\]/\\[Ré\\]/g" $i;
sed -i "s/b\\]/\\&\\]/g" $i;
#Do
sed -i "s/032010}/X32010}/g" $i;
#La
sed -i "s/002220}/X02220}/g" $i;
sed -i "s/002020}/X02020}/g" $i;
#Lam
sed -i "s/002210}/X02210}/g" $i;
#Ré
sed -i "s/000232}/XX0232}/g" $i;
sed -i "s/X00232}/XX0232}/g" $i;
#Ré7
sed -i "s/000212}/XX0212}/g" $i;
#Rém
sed -i "s/000231}/XX0231}/g" $i;
sed -i "s/X00231}/XX0231}/g" $i;
#Si7
sed -i "s/021202}/X21202}/g" $i;


done;