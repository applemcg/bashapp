# ------------------------------------------------- shd_tagdata	--
#
# write the tagged fields in list format;
# todo: separatate date, fix into table;
#
        NR == 1 && $1 !~ /.*:$/  {

	   printf "abstr\t%s\n", $0
	   abstr = $0
	   next
	}
        $1 ~ /.*:$/  {

	   field = $1; record = $0
	   sub(/:/,"",field)
	   sub(/.*: */,"",record)
	   if (field ~ /date/) {
	       latest =  $2
	       first  = (first? first: $2)
	       next
	   }
	   	   printf "%s\t%s\n", field, record
	   next
       }   
       {
           if(seqn < 1)  {
	        # abstract is SEQN = 0 
                printf "seqn\t%d\n", seqn++
		printf "shdoc\t%s\n", abstr
	   }   
	   printf "seqn\t%d\n", seqn++
	   printf "shdoc\t%s\n", $0
       }
       END { if (first) {

           printf "%s\t%s\n", "first", first
	   printf "%s\t%s\n", "latest", latest
	   }
       }
