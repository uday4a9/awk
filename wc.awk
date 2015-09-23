#! /usr/bin/env /usr/bin/awk

# This program simultes the wc command in linux

BEGIN{
    now = 0
    noc = 0
}

{
    now += NF
    noc += length($0) + 1
}

END{
    print "", NR, now, noc, ARGV[1]
}
