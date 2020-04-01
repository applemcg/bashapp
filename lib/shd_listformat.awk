# -------------------------------------------------- shd_listformat.awk	--
# 
# The field names are dependent on output from shd_tagdata.awk
# The input format REQUIRES blank lines SEPARATING records
#
# The output files are suitable List-Format /RDB tables, though
# there are no explicit dependencies in the calling functions.
# 
# The TAB-separated output record:
#
#     FUNCTION   function name
#     TAG | SEQN tag or number
#     RECORD     record or abstract
#
# creates a pair of TXT files, FUNCTIONS and SHDOC, where Functions
# holds unique attributes of the function, and Shdoc is inherenly
# multi-line per function.  The Function Name is saved from the input,
# and is re-used for new records with SEQN number and the respective
# SHDOC text
# 
                        # using PRINT guarantees the NEWLINE

        function funs( line) {  print line | "uniq > shd_functions.txt"; }
        function shdc( line) {  print line | "uniq > shd_doc.txt"; }	

        NF < 1        { funs( $0); shdc( $0); seqn =  0; next }
	$1 ~ /name/   {                       name = $0; next }

                        # separate record for each shdoc
                        # requires NL before NAME in sprintf
	
        $1 ~ /shdoc/  {

	    shdc( sprintf("\n%s",     name));
            shdc( sprintf("seqn\t%d", seqn++));
            shdc( $0);                next
	}
        {
	    funs( sprintf("\n%s",     name));
            funs( sprintf("tag\t%s",  $1))
	    sub(/^.*[	]/,"")        # removes the TAG
            funs( sprintf("record\t%s", $0))
        }
