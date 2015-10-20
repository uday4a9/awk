#! /usr/bin/awk -f

{
    sum += $5
#    if ( index($0, "s") != 0)
#        print "INDEX : ", index($0, "s"), $0
    print substr($0, 8)
}

END {
    print "Sum :",sum
#    print FILENAME
#    print FNR
#    print NR
}
