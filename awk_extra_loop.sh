#This script allows to grep the number of atoms in sdf files and put of print all number with molecule name in same sdf file.
#You must install first of all csvtool using this command  apt-get install csvtool
while read -r mol;
	do awk 'NR==4' "$mol".sdf > out1.csv && awk '{print $1}' out1.csv > out2.csv && rm out1.csv && echo "$mol" >> out2.csv && csvtool transpose out2.csv > "$mol".csv && rm out2.csv;
done < listes_all.txt 	

