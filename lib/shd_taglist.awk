# ----------------------------------------------------- shd_taglist.awk	--
#
# reads one functions "justcolon" output, and writes TAB-separated
# records of the TAGged fields and the associated DATA.
#
# The FIRST record is assumed to be a function ABSTRACT as well as
# the first line of the SHDOC text of the function.  The shdoc records
# are SEQuENced, since it would be nice to reconstruct the text in order.
#
# The DATE tags receive special handling, remembering the FIRST
# and LATEST, which may be the first
#
# THE OUTPUT format:   TAG<tab>RECORD
#
# anticipates the data begin collected in /RDB tables. There is no
# explicit dependency in the associated functions on the use of /RDB
#
# The associated function SHD_DISTRIBUTE separates this output into
# files appropriate for loading in to separate tables.
#
# ---------------------------------------------------------------- TODO	--
#
#  need a function to recognize date tag with change data, e.g
#
# ---------------------------------------------------------------------	--
#
    {
        # set true,false of TAGGED on EVERY liner
	
        tagged = $1 ~ /^[a-z][a-z]*:$/ 

        # printf "NR: %d, tagged %d\n", NR, tagged
    }
   
    NR == 1 && ! tagged {

       # first record is the abstract and saved
       # in the chance there is more text to the SHDOC
	 
       printf "abstr\t%s\n", $0
       abstr = $0
       next
    }
     
    tagged {

        # normal TAGged records

	tag = $1; record = $0
	sub(/:/,"",tag)
	sub(/.*: */,"",record)
	printf "%s\t%s\n", tag, record
	next
    }   
    {
        # the UNtagged records are treated as the SHDOC
	# where the ABSTACT is the first one

	if(p++ < 1)  {
	    # abstract is SEQN = 0 
	     printf "shdoc\t%s\n", abstr
        }   
        printf "shdoc\t%s\n", $0
    }

