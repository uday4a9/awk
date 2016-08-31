<<<<<<< HEAD
#! /usr/bin/env /usr/bin/awk

# Sum of the sizes of the files in given directory
# ls -l command output should be redirected to this 
# program

BEGIN{
    sum = 0
}
=======
#! /usr/bin/awk -f
>>>>>>> 0314b50625e21c504b144bd50f00ce5c3407cae4

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
