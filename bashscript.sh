for filename in $(ls)
do
	#check whether it is an image file
	if [[ "$filename" == *.jpg ]];
	then
		#extract year
		year="${filename%%-*}"
		
		#echo ${year}
		
		#extract month and fileno combined
		month_fileno="${filename#*-}"
		
		#extract month
		month="${month_fileno%-*}"
		
		#echo ${month}
		
		#extract image name
		fileno="img${month_fileno#*-}"
		
		echo ${fileno}
		
		if [ ! -d "$year" ]; 
		then
			
			mkdir $year/$month -p
		
		fi
		
		if [ ! -d "$year/$month" ];
		then 
			mkdir $year/$month -p
		
		fi
		
		mv $filename $year/$month/$fileno
			
	fi
	
done
