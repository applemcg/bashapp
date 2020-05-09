# ----------------------------------------------------------- shd_clean	--
#
# depends on declare -f, shd_clean
# removes empty doc strings from stdin;
#
        !NF         { next }
        #
        NF == 2 && $2 ~ /[(][)]/ { lcount = 0 }
        #                         
                    { line[lcount++] = $0; }

        #  template:
        #  0: name ()
        #  1: {
        #  i: ...
        #  N: }   
        lcount < 3  { next; }

        lcount == 3 { if( $1 ~ /^}$/ ) { lcount = 0; next; }
                      else             { print line[0]; print line[1]; }
                    }
                    # printf "DEBUG: lc(%d): %s\n", lcount, $0 > "/dev/stdout"; }
                    { print line[lcount-1] }

