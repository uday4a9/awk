#! /usr/bin/env /usr/bin/awk
BEGIN {
    value=ARGV[1]
    delete ARGV[1]
    if(length(value) == 0)
        value=0
    #print ("value:", value, length(value))
}

NR>value{
    print $0
}
