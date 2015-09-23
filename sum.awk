#! /usr/bin/env /usr/bin/awk

BEGIN{
    sum = 0
}

{
    sum += $5
}

END{
print "Sum :", sum
}
