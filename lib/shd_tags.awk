# ---------------------------------------------------- shd_tags	--
# 
# collects the tags from a function
# 
        $1 ~ /^function$/ { name = $2; sub(/_doc$/,"",name); }
	$2 ~ /:$/         {
           tag = $0
	   sub(/: /,"",tag)
   	   sub(/: /,"\t",tag)
      	   sub(/;$/,"",tag)
	   printf "%-9s\t%s\n", name, tag
        }
