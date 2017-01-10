#! /usr/bin/env /usr/bin/awk

# run this program
# awk -f sim.awk sim
#
# ouput formatting program

BEGIN {
#    print("===================")
#    print("TOTAL arguments : ", ARGC)
#    printvector(ARGV)
#    print("===================")
}

function printvector(vec) {
    printf("Contents : \n")
    for(i in vec)
        printf(i "=>" vec[i]"<=>\n")
    #print("")
}

{
    #print(NR)
    #a[NR-1] = "hello"
    #a[$1]
    #a[$1] = "Hello"
    #a[$1] = $2" "$3
    len = split($3, b, ",")
        #print(len)
        #print(len, b[1], b[2], b[3])

    for(i=1; i<=len; i++) {
        #print(b[i])
        if(b[i] in a) {
            a[b[i]] = a[b[i]]";"$2","$1
        }
        else {
            a[b[i]] = $2","$1
        }
    }
    #printvector(a)
    #    for(i in b)
    #        print(b[i], " ")

    #    if(1 in a)
    #        print("YES")
    #    else
    #        print("NO")
}

END {
    #print(NR)
    #for(i=0; i<NR; i++)
    for(i in a) {
        print(i":")
        split(a[i], b, ";")
        for(j in b) {
            #print("\t"b[j])
            split(b[j], splitb, ",")
            res[splitb[2]] = b[j]
        }
        #printvector(res)
        n = asorti(res, sortres)
        #printvector(sortres)
        for(ii=1; ii<=n; ii++)
            print(ii"\t"res[sortres[ii]])
        delete res 
        delete sortres 
    }
}
