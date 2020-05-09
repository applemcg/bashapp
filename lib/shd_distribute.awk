# ------------------------------------------------------ shd_distribute	--
#
# distribute the fields to their tables;
#
        function funs( line) {  print line > "functions.txt"; }
        function shdc( line) {  print line > "shdoc.txt"; }	

        NF < 1        { funs( $0); shdc( $0); next }
	$1 ~ /name/   { name = $2; funs( $0); next }
        $1 ~ /abstrt/ { funs( $0);            next }

                        # separate record for each seqn, shdoc
        $1 ~ /seqn/   { shdc( sprintf("name\t%s\n%s", name, $0)); next }
        $1 ~ /shdoc/  { shdc( $0 "\n");       next }

                      { funs( $0) }

