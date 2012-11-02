import sys

ave = open(sys.argv[1])
###
for line in ave:
    line = line.rstrip()
    fields = line.split()
    print fields[0],float(fields[1])**0.5
    
    
    