#/usr/bin/gawk -f

# How to Use ?
#
# THis program to remove the given number of digits
# at the begining of the each line.
#
# Ex:
#     awk -f slicer.awk  4


BEGIN {
    value = strtonum(ARGV[1])
    form = "^.{"  ARGV[1]  "}"
    delete ARGV[1]
}

{
    if(NR == 1)
        print("=== converted text ===")
    gsub(form, "")
    print($0)
}
