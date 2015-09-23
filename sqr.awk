#! /usr/bin/awk -f

BEGIN{
    for(i=1; i<=10; i++) 
        print "Square of ", i, "is:", i * i
}
