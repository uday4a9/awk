#! /usr/bin/env /usr/bin/awk

BEGIN{
    FS="."
}

{
    if(NF!=4) {
        print "NOT VALID1"
    } else{
        for (i=1; i<=NF; i++) {
            if($i ~ /\d+/) {
                print $i
                continue
            }
            else {
                print("NOT VALID2: " $i)
                break
            }
        }
    }
}

