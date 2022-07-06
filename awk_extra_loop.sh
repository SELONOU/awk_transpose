while read -r mol;
	do awk 'NR==4' "$mol".sdf > out1.csv && awk '{print $1}' out1.csv > out2.csv && rm out1.csv && echo "$mol" >> out2.csv && csvtool transpose out2.csv > "$mol".csv && rm out2.csv;
done < listes_all.txt 	

