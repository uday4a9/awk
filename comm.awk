#! /usr/bin/awk -f

BEGIN {
    "date" | getline cur_time
    close("date")
#    print cur_time
    print "Hello","World"
}

{
    two = 2
    three = 3
    print two three
}

END {
    two = 2
    three = 3
    print two three + 4
    print cur_time
}
