#! /usr/bin/env /usr/bin/awk

# Sum of the sizes of the files in given directory
# ls -l command output should be redirected to this 
# program

BEGIN{
    sum = 0
}

{
    sum += $5
}

END{
    print "Sum :", sum
}
